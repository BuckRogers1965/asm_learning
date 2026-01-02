struct Point {
    int x;
    int y;
};

int main() {
    struct Point p = {5, 10};
    struct Point *ptr = &p;
    return ptr->x + ptr->y;
}