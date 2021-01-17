#include <iostream>

#define number typename
template<number T>
T abs(T num){
    if (num < 0) return -num;
    else return num;
}

template<number T>
T square(T num){
    return num * num;
}

template<number T>
bool good_enough(T guess, T x){
    return (abs(square(guess) - x) < 0.001);
}

template<number T>
T average(T x, T y){
    return T((x + y) / 2);
}

template<number T>
T improve(T guess, T x){
    return average(guess, x/guess);
}

template<number T>
T sqrt_iter(T guess, T x){
    if(good_enough(guess, x)){
        return guess;
    } else {
        sqrt_iter(improve(guess, x), x);
    }
}

template<number T>
T sqrt(T x){
    return sqrt_iter(T(1.0), x);
}

int main(int argc, const char** argv) {
    if(argc != 2) {
        puts("pass one argument\n");
        return EXIT_FAILURE;
        }

    float num(strtof(argv[1], nullptr));
    printf("%f\n", sqrt(num));
    return EXIT_SUCCESS;
}
