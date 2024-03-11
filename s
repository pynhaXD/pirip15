#include <iostream>
#include <cmath>

using namespace std;

int factorial(int n) {
  if(n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

float yx(float x) {
    return cos(sin(x));
}

float sx(float x, float a, float b, int n) {
    float sum = 0;
    for (int i = 0; i <= n; ++i) {
        sum += pow(-1, i) * (pow(sin(x), 2 * i)) / factorial(2*i);
    }
    return sum;
}

int main() {
    float a = -0.5;
    float b = 0.5;
    float h = (b - a) / 10.0;

    cout << "x\t\t y(x)\t\t s(x)" << endl;
    cout << "-----------------------------------------" << endl;

    float x = a;
    while (x <= b) {
        float y = yx(x);
        float s = sx(x, a, b, 10);
        cout << x << "\t\t " << y << "\t\t " << s << endl;
        x += h;
    }

    return 0;
}