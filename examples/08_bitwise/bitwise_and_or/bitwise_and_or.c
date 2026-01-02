int main() {
    int a = 0b1010;  // 10
    int b = 0b1100;  // 12
    
    int and_result = a & b;  // 0b1000 = 8
    int or_result = a | b;   // 0b1110 = 14
    int xor_result = a ^ b;  // 0b0110 = 6
    
    return and_result + or_result + xor_result;
}