#include"datastore.h"
#include <stdio.h>
#include<QRandomGenerator64>
#include<QDebug>
#include<string>

int  x;
int x_1;

int x_2;
int x_3;

int x_4;
int x_5;
int y;
int temp;
int temp1;
int placed1 =0;
int placed =  0;
int a ;
int b;

DataStore::DataStore()
{

}

int DataStore::ball1()
{

    std::uniform_int_distribution<int> distribution(200, 500);
    int x = distribution(*QRandomGenerator::global());
    qDebug()<< x;

    return x;
}

int DataStore::ball2()
{

    std::uniform_int_distribution<int> distribution(200, 500);
    int x_1 = distribution(*QRandomGenerator::global());
    qDebug()<< x_1;
    return x_1;
}

int DataStore::ball3()
{


    std::uniform_int_distribution<int> distribution(200, 500);
    int x_2 = distribution(*QRandomGenerator::global());
    qDebug()<< x_2;
    return x_2;
}

int DataStore::ball4()
{
    std::uniform_int_distribution<int> distribution(200, 500);
    int x_3 = distribution(*QRandomGenerator::global());

    return x_3;
}

int DataStore::ball5()
{

    std::uniform_int_distribution<int> distribution(200, 500);
    x_4 = distribution(*QRandomGenerator::global());
    qDebug()<< x_4;
    return x_4;
}

int DataStore::ball6()
{

    std::uniform_int_distribution<int> distribution(200, 500);
    int x_5 = distribution(*QRandomGenerator::global());
    qDebug()<< x_5;
    return x_5;
}

int DataStore::thewinner()
{

    if(x_2 < x_3)
    {

        return 2;


    }
    else{

        return 1;


    }

}

