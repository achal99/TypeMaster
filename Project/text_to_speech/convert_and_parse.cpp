// WRITTEN BY MILO HARTSOE
#include <fstream>
#include <stdint.h>
#include <iostream>
#include <string>
#include <vector>
#include <unordered_map>

using namespace std;

int main() {
    vector<string> letters = {"AA0","AA1","AA2","AE0","AE1","AE2","AH0","AH1",
                              "AH2","AO0","AO1","AO2","AW0","AW1","AW2","AY0",
                              "AY1","AY2","B","CH","D","DH","EH0","EH1","EH2",
                              "ER0","ER1","ER2","EY0","EY1","EY2","F","G","HH",
                              "IH0","IH1","IH2","IY0","IY1","IY2","JH","K","L",
                              "M","N","NG","OW0","OW1","OW2","OY0","OY1","OY2",
                              "P","R","S","SH","T","TH","UH0","UH1","UH2","UW0",
                              "UW1","UW2","V","W","Y","Z","ZH"};
    size_t ARPABET_LETTER_START = 129; // Should be same as python gen_audio_loop.py program
    unordered_map<string, int32_t> letters_to_int32;
    size_t i = ARPABET_LETTER_START;
    for (auto it = letters.begin(); it != letters.end(); ++it, ++i) {
      letters_to_int32[*it] = int32_t(i);
    }
    ofstream file;
    file.open("datafile", ios::out | ios::binary);
    string s;
    int32_t newline = 10; //'\n';
    int32_t space = 32; // ' ';
    size_t total = 0;
    while (getline(cin, s)) {
        size_t i = 0;
        for (i = 0; i < s.size(); ++i) {
            int32_t write = s[i];
            if (write < 0 || write > 128) {
                cout << "Error with: " << s << endl;
                break;
            }
            file.write( (char *) &write, sizeof(write));
            total += 1;
            if (write == space) {
              break;
            }
        }
        ++i; // Words and symbols seperated by two spaces
        // Parse ARPABET letters
        int32_t to_write;
        while (i < s.size()) {
          size_t next_space = s.find_first_of(" ", i + 1);
          to_write = letters_to_int32[s.substr(i + 1, next_space - i - 1)];
          file.write( (char *) &(to_write), sizeof(to_write) );
          total += 1;
          i = next_space;
        }

        file.write( (char *) &newline, sizeof(newline) );
        total += 1;
    }
    cout << "Printed: " << total << endl;

}
