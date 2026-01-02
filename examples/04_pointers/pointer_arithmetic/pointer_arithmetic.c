int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    int *ptr = arr;
    int second = *(ptr + 1);
    return second;
}