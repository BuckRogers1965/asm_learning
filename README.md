# Assembly Language Learning System

This system helps you learn assembly language by compiling simple C programs
and viewing the generated assembly code side-by-side.

## Quick Start

1. Generate HTML documentation:
   ```bash
   cd asm_learning
   python generate.py
   ```

2. Open `html_output/index.html` in your browser

## Adding New Examples

1. Navigate to the appropriate topic folder in `examples/`
2. Create a new directory for your example
3. Add two files:
   - `your_example.c` - Your C source code
   - `description.html` - HTML description (e.g., `<p>Description here</p>`)
4. Run `python generate.py` to rebuild

## Adding New Topics

1. Create a new directory in `examples/` (e.g., `05_arrays`)
2. Add a `topic.json` file:
   ```json
   {
     "title": "Arrays",
     "description": "Working with arrays in C"
   }
   ```
3. Add examples as subdirectories
4. Run `python generate.py` - it will automatically discover the new topic

## Directory Structure

```
asm_learning/
├── generate.py          # Run this to generate HTML
├── examples/            # Your C source files
│   ├── 01_basics/
│   ├── 02_functions/
│   └── ...
├── templates/           # HTML templates (customize if desired)
└── html_output/         # Generated HTML (open in browser)
```

## Compilation Settings

Examples are compiled with:
- Intel syntax (`-masm=intel`)
- No optimization (`-O0`)
- Verbose assembly (`-fverbose-asm`)
