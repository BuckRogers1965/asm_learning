#!/usr/bin/env python3
"""
Assembly Learning HTML Generator
Compiles C examples to assembly and generates HTML documentation
"""

import os
import subprocess
import json
from pathlib import Path
from dataclasses import dataclass
from typing import List, Dict
import html

@dataclass
class Example:
    name: str
    c_code: str
    asm_code: str
    description: str
    topic: str

class AssemblyLearningGenerator:
    def __init__(self):
        self.base_dir = Path(__file__).parent
        self.examples_dir = self.base_dir / "examples"
        self.templates_dir = self.base_dir / "templates"
        self.html_output_dir = self.base_dir / "html_output"
        
    def compile_example(self, c_file: Path) -> str:
        """Compile C file to assembly with verbose output"""
        asm_file = c_file.with_suffix('.s')
        
        try:
            # Compile with Intel syntax, no optimization, verbose assembly
            cmd = [
                'gcc',
                '-S',                    # Generate assembly
                '-masm=intel',           # Intel syntax
                '-O0',                   # No optimization
                '-fverbose-asm',         # Verbose comments
                str(c_file),
                '-o', str(asm_file)
            ]
                #'-g',                    # Debug info for better comments
            
            subprocess.run(cmd, check=True, capture_output=True, text=True)
            
            with open(asm_file, 'r') as f:
                return f.read()
                
        except subprocess.CalledProcessError as e:
            return f"# Compilation error:\n# {e.stderr}"
        except Exception as e:
            return f"# Error: {str(e)}"
    
    def discover_topics(self) -> List[Dict]:
        """Dynamically discover all topics and examples"""
        topics = []
        
        for topic_dir in sorted(self.examples_dir.iterdir()):
            if not topic_dir.is_dir():
                continue
            
            # Read topic metadata
            metadata_file = topic_dir / "topic.json"
            if metadata_file.exists():
                with open(metadata_file) as f:
                    metadata = json.load(f)
            else:
                metadata = {
                    "title": topic_dir.name.replace("_", " ").title(),
                    "description": f"Examples for {topic_dir.name}"
                }
            
            # Find all examples in this topic
            examples = []
            for example_dir in sorted(topic_dir.iterdir()):
                if not example_dir.is_dir():
                    continue
                
                # Find the C file
                c_files = list(example_dir.glob("*.c"))
                if not c_files:
                    continue
                
                c_file = c_files[0]
                desc_file = example_dir / "description.html"
                
                # Read description
                if desc_file.exists():
                    with open(desc_file) as f:
                        description = f.read()
                else:
                    description = "<p>No description provided.</p>"
                
                # Read C code
                with open(c_file) as f:
                    c_code = f.read()
                
                # Compile to assembly
                print(f"  Compiling: {topic_dir.name}/{example_dir.name}")
                asm_code = self.compile_example(c_file)
                
                examples.append(Example(
                    name=example_dir.name.replace("_", " ").title(),
                    c_code=c_code,
                    asm_code=asm_code,
                    description=description,
                    topic=topic_dir.name
                ))
            
            if examples:
                topics.append({
                    "name": topic_dir.name,
                    "title": metadata["title"],
                    "description": metadata["description"],
                    "examples": examples
                })
        
        return topics
    
    def generate_html(self):
        """Generate all HTML documentation"""
        print("Discovering topics and examples...")
        topics = self.discover_topics()
        
        if not topics:
            print("⚠ No topics found to generate")
            return
        
        print(f"\nFound {len(topics)} topics")
        
        # Load templates
        with open(self.templates_dir / "header.html") as f:
            header_template = f.read()
        with open(self.templates_dir / "footer.html") as f:
            footer_template = f.read()
        with open(self.templates_dir / "example.html") as f:
            example_template = f.read()
        
        # Generate navigation links
        nav_links = " | ".join([
            f'<a href="{topic["name"]}.html">{topic["title"]}</a>'
            for topic in topics
        ])
        
        print("\nGenerating HTML pages...")
        
        # Generate topic pages
        for topic in topics:
            output_file = self.html_output_dir / f"{topic['name']}.html"
            
            # Build page content
            content = header_template.replace("{TITLE}", topic["title"]).replace("{NAV_LINKS}", nav_links)
            
            # Add topic description
            content += f'<div class="example"><h2>Overview</h2><div class="description">{topic["description"]}</div></div>\n'
            
            # Add examples
            for example in topic["examples"]:
                example_html = example_template.replace("{EXAMPLE_NAME}", example.name)
                example_html = example_html.replace("{DESCRIPTION}", example.description)
                example_html = example_html.replace("{C_CODE}", html.escape(example.c_code))
                example_html = example_html.replace("{ASM_CODE}", html.escape(example.asm_code))
                content += example_html
            
            content += footer_template
            
            with open(output_file, "w") as f:
                f.write(content)
            
            print(f"  ✓ {output_file.name}")
        
        # Generate index page
        self._generate_index(topics, nav_links, header_template, footer_template)
        
        print(f"\n{'='*60}")
        print(f"✓ All HTML generated in: {self.html_output_dir}")
        print(f"  Open: {self.html_output_dir / 'index.html'}")
        print(f"{'='*60}")
    
    def _generate_index(self, topics, nav_links, header_template, footer_template):
        """Generate the index page"""
        content = header_template.replace("{TITLE}", "Assembly Language Learning").replace("{NAV_LINKS}", nav_links)
        
        content += """
    <div class="example">
        <h2>Welcome to Assembly Language Learning</h2>
        <div class="description">
            <p>This documentation demonstrates how C code compiles to assembly language. Each example shows:</p>
            <ul>
                <li><strong>C Code</strong>: The high-level source code</li>
                <li><strong>Assembly Code</strong>: The compiled assembly (Intel syntax, unoptimized)</li>
                <li>Verbose comments showing variable-to-register mappings</li>
            </ul>
            <p>Select a topic from the navigation above to begin learning.</p>
        </div>
        <h3>Available Topics</h3>
"""
        
        for topic in topics:
            content += f"""
        <div style="margin: 20px 0; padding: 15px; background: #ecf0f1; border-radius: 5px;">
            <h4><a href="{topic['name']}.html">{topic['title']}</a></h4>
            <p>{topic['description']}</p>
            <p><em>{len(topic['examples'])} examples</em></p>
        </div>
"""
        
        content += "    </div>\n"
        content += footer_template
        
        with open(self.html_output_dir / "index.html", "w") as f:
            f.write(content)
        
        print(f"  ✓ index.html")

def main():
    generator = AssemblyLearningGenerator()
    generator.generate_html()

if __name__ == "__main__":
    main()
