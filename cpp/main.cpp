#include <iostream>
#include <thread>
#include <chrono>
#include <vector>

using namespace std;

class AppointmentChecker {
public:
    void login(string email, string password) {
        cout << "Logging in: " << email << endl;
    }

    void checkSlots() {
        vector<string> slots = {
            "2026-06-10 09:00",
            "2026-06-11 11:00"
        };

        for (auto slot : slots) {
            cout << "Available Slot: " << slot << endl;
        }
    }

    void autoBook(string slot) {
        cout << "Booking slot: " << slot << endl;
    }
};

int main() {
    AppointmentChecker bot;

    bot.login("user@example.com", "password123");
    bot.checkSlots();
    bot.autoBook("2026-06-10 09:00");

    return 0;
}