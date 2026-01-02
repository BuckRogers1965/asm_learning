#include <unistd.h>

int main() {
    const char msg[] = "Hello from syscall\n";
    write(1, msg, sizeof(msg) - 1);
    return 0;
}