#include<iostream>
using namespace std;

int main()
{
    int noOfBlock;
    cout<<"Enter the no of block: ";
    cin>>noOfBlock;

    int blocks[noOfBlock];

    for(int i = 0; i<noOfBlock; i++)
    {
        cout<<"Enter Block"<<i+1<<" size: ";
        cin>>blocks[i];
    }

    int noOfProcess;

    cout<<"Enter no of process: ";
    cin>>noOfProcess;

    int processes[noOfProcess];

    for(int i = 0; i<noOfBlock; i++)
    {
        cout<<"Enter require memory for process"<<i+1<<" : ";
        cin>>processes[i];
    }


    for(int i = 0; i<noOfBlock; i++)
    {
        if(processes[i] <= blocks[i])
        {
            cout<<"Process"<<i+1<<" -> "<<processes[i]<<" -> "<<"Blocks"<<i+1<<" -> "<< " YES "<<" -> "<<blocks[i]-processes[i]<<endl;
        }
        else
        {
            cout<<"Process"<<i+1<<" -> "<<processes[i]<<" -> "<<"Blocks"<<i+1<<" -> "<< " NO "<<" -> "<<" -- "<<endl;
        }
    }


    return 0;
}
