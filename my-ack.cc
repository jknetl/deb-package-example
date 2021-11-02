#include <iostream>
int main(int argc, char *argv[])
{
    using namespace std;

    if (argc < 2)
    {
        printf("usage: my-ack STRING");
        exit(1);
    }

    string command;
    command += "ack  ";
    command += argv[1];

    cout   << "Acking for string \"" << argv[1] << "\"!\n";
    return system(command.c_str());
}