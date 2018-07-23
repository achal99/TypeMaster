// WRITTEN BY MILO HARTSOE
#include <fstream>
#include <stdint.h>
#include <iostream>

using namespace std;

int main() {
    ofstream file;
    file.open("datafile", ios::out | ios::binary);
    string s;
    int32_t newline = 10;//'\n';
    size_t total = 0;
    while (getline(cin, s)) {
        total += s.size() + 1;
        for (size_t i = 0; i < s.size(); ++i) {
            int32_t write = s[i];
            if (write < 0 || write > 128) {
                cout << s << endl;
                break;
            }
            file.write( (char *) &write, sizeof(write) );
        }
        file.write( (char *) &newline, sizeof(newline) );
    }
    cout << "Printed: " << total << endl;

}
