#include<iostream>
using namespace std;


int main()
{

    int noOfProcess = 0;

    cout<<"Enter the no of process: ";
    cin>>noOfProcess;

    int burstTime[noOfProcess];
    int waitingTime[noOfProcess];
    int turnArountTime[noOfProcess];
    int processID[noOfProcess];


    for(int i = 0; i<noOfProcess; i++)
    {
        cout<<"Enter burst time for process "<<i+1<<" : ";
        cin>>burstTime[i];
        processID[i] = i+1;
    }


    waitingTime[0] = 0;
    float totalWaitingTime = 0;
    float totalTurnAroundTime = burstTime[0];
    turnArountTime[0] = burstTime[0];



    for(int i = 1; i<noOfProcess; i++)
    {
        waitingTime[i] = turnArountTime[i-1];
        turnArountTime[i] = burstTime[i]+waitingTime[i];
        totalWaitingTime+=waitingTime[i];
        totalTurnAroundTime+=turnArountTime[i];
    }


    cout<<"\nProcess\tBurst Time\tWaiting Time\tTurn Around Time"<<endl;
    for(int i = 0; i<noOfProcess; i++)
    {
        cout<<"   P"<<processID[i]<<"\t    "<<burstTime[i]<<"\t\t   "<<waitingTime[i]<<"\t\t\t"<<turnArountTime[i]<<endl;
    }

    cout<<"Average waiting time: "<<totalWaitingTime/noOfProcess<<endl;
    cout<<"Average turn around time: "<<totalTurnAroundTime/noOfProcess<<endl;
}
