
#include <iostream>
#include <queue>
// #include "csc232.h"
// namespace csc232

template <typename T>
void print_queue(T q)
{

    while (!q.empty())
    {
        std::cout << q.top().event0 << " ";
        std::cout << q.top().time0 << " \n";
        q.pop();
    }
    std::cout << "\n";
}

template <typename T>
void print_full(T q3)
{
    while (!q3.empty())
    {
        std::cout << q3.top().event0 << " ";
        std::cout << q3.top().time0 << " ";
        std::cout << q3.top().departure_time << " ";
        std::cout << q3.top().wait_time << " \n";

        q3.pop();
    }

    std::cout << "\n";
}

template <typename T>
void departure(T q, T &q3)
{
    int current_time = 0;

    store temp_store;
    while (!q.empty())
    {
        temp_store.event0 = q.top().event0;
        temp_store.time0 = q.top().time0;
        if (q.top().event0 >= current_time)
        {
            current_time = q.top().event0 + q.top().time0;
            temp_store.departure_time = current_time;
            temp_store.wait_time = 0;
        }
        else
        {
            // current time indicates previous customer departure
            // if event time is smaller than current time
            temp_store.wait_time = current_time - q.top().event0;
            current_time += q.top().time0;
            temp_store.departure_time = current_time;
        }
        q.pop();

        q3.push(temp_store);
    }
}

template <typename T>
void Time_Sort(T q)
{
    std::priority_queue<store, std::vector<store>, std::greater<store>> q2 = q;

    while (!q.empty() || !q2.empty())
    {
        if ((q.top().event0 <= q2.top().departure_time) || q2.empty())
        {

            std::cout << "Processing an arrival event at time:  " << std::setw(2) << q.top().event0 << std::endl;
            q.pop();
        }
        if ((q.top().event0 > q2.top().departure_time) || q.empty())
        {
            std::cout << "Processing a departure event at time: " << std::setw(2) << q2.top().departure_time << std::endl;
            q2.pop();
        }
    }
}

template <typename T>
void Statistics(T q)
{
    int i = 0;
    double k = 0;
    int number_of_people;
    while (!q.empty())
    {
        i += 1;
        k += q.top().wait_time;
        q.pop();
    }

    number_of_people = i;

    k = k / number_of_people;
    std::cout << "\tTotal number of people processed: " << number_of_people << std::endl;
    std::cout << "\tAverage amount of time spent waiting: " << k << std::endl;
}
