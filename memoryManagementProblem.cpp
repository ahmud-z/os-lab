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


    int internalFragmentations[noOfBlock] = {0};
    int isAllocated[noOfBlock] = {0};

    for(int i = 0; i<noOfBlock; i++)
    {
        if(processes[i] <= blocks[i])
        {
            internalFragmentations[i] = blocks[i]-processes[i];
            isAllocated[i] = 1;
        }
    }

    cout<<endl;
    for(int i = 0; i<noOfBlock; i++){
        cout<<"Process"<<i+1<<" -> "<<processes[i]<<" -> "<<"Blocks"<<i+1<<" -> "<<isAllocated[i]<<" -> "<<internalFragmentations[i]<<endl;
    }



    return 0;
}
