#include <iostream>
#include <fstream>
#include <string>

int main() {
    int total = 2000;
    int count = 50;

    while (count < total) {
        std::string hadith;
        std::cout << "Enter hadith: ";
        std::getline(std::cin, hadith);

        std::string quotationHadith = " ' " + hadith + " ' ";

        std::ofstream file("quotationHadith.txt", std::ios::app);
        if (file.is_open()) {
            file << "Hadith("
                << "hadithNumber: " << count << ","
                << "hadith: " << quotationHadith << ","
                << "translation: Translation of Hadith " << count << ","
                << ")\n";
            file << count + 1 << "\n";
            file.close();
        }

        count++;
    }

    return 0;
}
