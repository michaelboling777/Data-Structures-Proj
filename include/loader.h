// michael boling
// csc 232
#include <iostream>
#include <string>
#include <fstream>
#include <vector>
// #include "csc232.h"

struct store
{
    int event0;
    int time0;
    int departure_time;
    int wait_time;

    bool operator<(const store &rhs) const
    {
        return event0 < rhs.event0;
    }
    bool operator>(const store &rhs) const
    {
        return event0 > rhs.event0;
    }
};

void load_all_data(std::vector<store> &obj, std::string fileName)
{
    store temp;

    std::ifstream data{fileName};

    while (!data.eof())
    {
        data >> temp.event0 >> temp.time0;
        obj.push_back(temp);
    }

    if (data.is_open())
    {
        data.close();
    }
}
