#include<iostream>
using namespace std;

int main()
{
    int memorySize = 0;
    cout << "Enter total memory size: ";
    cin >> memorySize;

    int i = 0;
    int flag = 1;
    int process[100] = {0};
    int totalMemoryUsed = 0;
    int allocatedProcesses = 0;

    while (flag != 0)
    {
        int processSize = 0;
        cout << "Enter memory required for process " << i + 1 << ": ";
        cin >> processSize;

        if (processSize <= (memorySize - totalMemoryUsed))
        {
            process[allocatedProcesses] = processSize;
            totalMemoryUsed += processSize;
            allocatedProcesses++;
            cout << "Memory is allocated for Process " << i + 1 << endl;
        }
        else
        {
            cout << "Memory can't be allocated for Process " << i + 1 << endl;
        }

        cout << "Do you want to continue (Press: yes: 1 / No: 0): ";
        cin >> flag;
        i++;
    }

    cout << "\nMemory Allocation Details:\n";
    for (int j = 0; j < allocatedProcesses; j++)
    {
        cout << "Block " << j + 1 << " size: " << process[j] << endl;
    }

    cout << "\nTotal Allocated memory is: " << totalMemoryUsed << endl;
    cout << "Total External Fragmentation is: " << memorySize - totalMemoryUsed << endl;

    return 0;
}
