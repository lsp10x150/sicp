#include <array>

#define iterator typename
template<iterator T>
T mymin(T begin, T end){
    auto min = begin;
    if(begin != end) {
        for(; begin != end; ++begin)
            if(*begin < *min)
                min = begin;
    }
    return min;
}

int main(int argc, const char** argv) {
    if(argc != 4)
        return EXIT_FAILURE;

    std::array<int, 3> arr{
            atoi(argv[1]),
            atoi(argv[2]),
            atoi(argv[3])
    };

    int m = *mymin(std::begin(arr), std::end(arr));
    int sumsq = 0;
    for(int el : arr) {
        if (el != m) {
            sumsq += el * el;
        }
    }
    printf("%d\n", sumsq);
    return EXIT_SUCCESS;
}
