#include <stdio.h>

void change(int *a, int *b) {
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

int main(void) {
    int n = 0;
    scanf("%d", &n);
    int a[n];
    int b[n];
    for (int i = 0; i < n; i++) {
        scanf("%d", &a[i]);
        b[i] = a[i];
    }
    for (int i = 0; i < n; i++) {
        int min_elem = i;
        for (int j = i + 1; j < n; j++) {
            if (b[min_elem] > b[j]) min_elem = j;
        }
        if (i != min_elem) {
            change(&b[i], &b[min_elem]);
        }
        printf("%d ", b[i]);
    }
    printf("\n");
    return 0;
}

