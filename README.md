# Nonlinear First Order Ordinary Differential Equations 

This library allows to solve nonlinear first order ordinary differential equations. Three one step explicit methods and three implicit methods are provided.

## COMPILE

In order to compile the library we have to type
	
    ./compile
	
This command call the CMake utility that creates a Makefile, that is then used directly to compile the whole library.

An extensive testsuite is provided and the binary files for all the test are found in 

    build/Tests
	
Note that CMake reproduce the same tree that we find in the `/src` directory.

## Use

### Provided Tests

`TEST_Solver` and `TEST_AnalyticalSolver` solve a given problem with all the provided integrators, both implicit and explicit (note that eventual exceptions thrown by the integrators when trying to solve the problem are not handled!). The function defining the problem is defined in `scr/Tests/testfunction.h`. It is sufficient to modify this file and recompile in order to specify a new problem.
All other classes has been tested one-by-one.

### Personal Use

Create a new `.cpp` file containing the main function in `/scr/Tests` and add it (with the needed dependencies) on the `CMakeLists.txt` file on the same folder, following what is done with the testsuite. It is also possible to create a new folder (that need a new `CMakeLists.txt`) containing the new files. Remember that relative path must be specified for the inclusions.

## Documentation

In order to create the documentation we have to type
	
    ./document
	
Documentation contain the GPL license (`docs/license`), a detailed description of the project (`docs/description`) with possible extensions and limitations and Doxygen documentation (`docs/doxygen`).
