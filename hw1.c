#include <stdio.h>
#include <math.h>

double linearFunction(int x) {
    return 2.4 * x + 300;
}

void show_binary(int value)
{
    int count = 0;
    int Xarr[8] = {0};
    while (value != 0) {
        int LSB = value % 2;
        Xarr[count] = LSB;
        value = value / 2;
        ++count;
    }
    printf("Closest x binary: ");
    for (int i = 7; i >= 0; i--) {
        printf("%d", Xarr[i]);
    }
    printf("\n\n");
}

int getProperVal(double target) {
    // Replace with your target value
    int lower = 0; // Lower bound of the search range
    int upper = 255; // Upper bound of the search range
    int closestX = 0;

    while (lower <= upper) {
        // Calculate the middle value of x
        int mid = (lower + upper) / 2;
        double y = linearFunction(mid);
        double diff = fabs(y - target);

        if (diff < fabs(linearFunction(closestX) - target)) {
            closestX = mid;
        }

        if (y < target) {
            lower = mid + 1;
        } else {
            upper = mid - 1;
        }
    }

    
    printf("Corresponding y: %.2f\n", linearFunction(closestX));
    printf("Closest x: %d\n", closestX);
    show_binary(closestX);
    return closestX;
}



int main() {
    double target1 = 550.0;
    double target2 = 800.0;
    getProperVal(target1);
    getProperVal(target2);
    return 0;
}
