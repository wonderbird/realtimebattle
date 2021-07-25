#include <iostream>
#include <cstring>
#include <unistd.h>
#include "Messagetypes.h"

using namespace std;

/**
 * Minimal setup required to move robot forward.
 */
int main()
{
    cout << "RobotOption " << USE_NON_BLOCKING << " " << false << endl;

    cin.clear();

    bool haveReceivedExitRobot = false;
    while (!cin.eof() && !haveReceivedExitRobot)
    {
        string command;
        cin >> command;

        if (command == "Initialize")
        {
            int sequence;
            cin >> sequence;

            if (sequence == 1)
            {
                cout << "Name " << "WonderBot" << endl;
                cout << "Colour " << "0000ff" << "000044" << endl;
            }
        }
        else if (command == "GameStarts")
        {
            cout << "Accelerate 0.54";
            cout << "Print Game started" << endl;
        }
        else if (command == "ExitRobot")
        {
            haveReceivedExitRobot = true;
            cout << "Print Robot exits" << endl;
        }
    }

    return EXIT_SUCCESS;
}
