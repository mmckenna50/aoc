//
// Answers to validate correctness of solutions
//
TEST1:11i
TEST2:31i


//
// @desc Calculates the total distance between two santa lists.
//
// @param x {int[2][]}	String rows from file.
//
// @return {int}	The sum of the absolute differences between
//			the two lists.
//
func1:{sum abs(-/)asc each x}


//
// @desc Calculates the sum of each number in the first list, multiplied
// by the number of instances of that number in the second list.
//
// @param x {int[2][]}  String rows from file.
//
// @return {int}        The sum as described above.
//
func2:{sum x[0]*{sum x=y}[;x 1]each x 0}


//
// @desc Runs all solutions
//
// @param x {hsym}      Input filepath.
//				Each row cosists of two numbers separated
//				by three whitespace characters ("   ").
//
// @return {int[]}	Returns the result of each function.
//
runall:{(func1;func2)@\:("II";",")0:ssr[;"   ";enlist","]each read0 x}


//
// Load correctness check framework
//
\l ../chk.q
