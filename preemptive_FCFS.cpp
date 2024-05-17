#include<iostream>
using namespace std;

void display(int arr[], int sz)
{
    cout<<"\n";
    for(int i= 0; i<sz; i++)
    {
        cout<<arr[i]<<" ";
    }
    cout<<"\n";
}

int main()
{

    int noOfProcess = 5;
    int burstTime[] = {1,5,2,7,5};
    int ct[noOfProcess];
    int wt[noOfProcess];
    int tat[noOfProcess];
    int aTime[noOfProcess] = {0};


//    for(int i = 0; i<noOfProcess; i++)
//    {
//        for(int j = i+1; j<noOfProcess; j++)
//        {
//            if(aTime[i]>aTime[j])
//            {
//                int temp = aTime[i];
//                aTime[i] = aTime[j];
//                aTime[j] = temp;
//
//                temp = burstTime[i];
//                burstTime[i] = burstTime[j];
//                burstTime[j] = temp;
//            }
//        }
//    }

    ct[0] = burstTime[0];
    wt[0] = 0;
    wt[1] = ct[0];

    for(int i = 1; i<noOfProcess; i++)
    {
        ct[i] = burstTime[i]+ct[i-1];
    }

    for(int i = 2; i<noOfProcess; i++)
    {
        wt[i] = burstTime[i-1] + ct[i-2];
    }

    for(int i = 0; i<noOfProcess; i++)
    {
        tat[i] = ct[i] - aTime[i];
    }


    cout<<"Completion Time: ";
    display(ct, noOfProcess);
    cout<<"\n";

    cout<<"Waiting Time: ";
    display(wt, noOfProcess);
    cout<<"\n";

    cout<<"Turn around time: ";
    display(tat, noOfProcess);
    return 0;
}
