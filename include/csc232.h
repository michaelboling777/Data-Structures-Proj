/**
 * CSC232 - Data Structures
 * Missouri State University, Fall 2019
 *
 * @file    csc232.h
 * @author  Jim Daehn <jdaehn@missouristate.edu>
 * @brief   Macros, declarations and definitions for use in this assignment.
 */

#ifndef MSU_CSC232_H
#define MSU_CSC232_H

#define FALSE 0
#define TRUE 1
#define EXECUTE_BLOCK TRUE
#define SIMULATE_FUNCTION_IMPLEMENTED FALSE

#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <memory>
#include <utility>
#include <vector>
#include "loader.h"
#include "processor.h"
#include <queue>

void Simulate(const std::string &fileName)
{
    std::vector<store> obj;

    std::cout << "Simulation Begins" << std::endl;

    load_all_data(obj, fileName);

    std::priority_queue<store> q;

    for (store n : obj)
    {
        q.push(n);
    }

    std::priority_queue<store, std::vector<store>, std::greater<store>> q2;

    for (store n : obj)
    {
        q2.push(n);
    }

    std::priority_queue<store, std::vector<store>, std::greater<store>> q3;

    departure(q2, q3);

    Time_Sort(q3);

    std::cout << "Simulation Ends"
              << "\n"
              << std::endl;
    std::cout << "Final Statistics:" << std::endl;
    Statistics(q3);
}
#endif
