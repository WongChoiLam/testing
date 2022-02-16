#include <iostream>
using namespace std;

int main(int argc, char **argv) {
    int sum = 0;
    if(argc == 1) {
        // read from stdin
        int x, y;
        cin >> x;
        cin >> y;
        sum = x + y;
        cout << sum << endl;
    } else if(argc == 3){
        // read from arguments
        sum = std::stoi(argv[1]) + std::stoi(argv[2]);
        cout << sum << endl;
    } else {
        cout << "Incorreect number of arguments.\n";
    }
    return 0;
}