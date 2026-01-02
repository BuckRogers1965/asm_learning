int add(int a, int b) {
    return a + b;
}

int subtract(int a, int b) {
    return a - b;
}

int main() {
    int (*operation)(int, int);
    operation = &add;
    int result = operation(10, 5);
    return result;
}