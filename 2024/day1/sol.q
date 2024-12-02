//
// Answers to validate correctness of solutions
//
TEST1:11i
TEST2:31i


//
// @desc Retrieve the sum of the numbers of top y groups
//
// @param x {string[]}	String rows from file.
//
// @return {int}	The sum of numbers acorss groups.
//
func1:{sum abs(-/)asc each x}


//
//
//
func2:{sum x[0]*{sum x=y}[;x 1]each x 0}


//
// @desc Runs all solutions
//
// @param x {hsym}      Input filepath.
//
runall:{(func1;func2)@\:("II";",")0:ssr[;"   ";enlist","]each read0 x}


//
// Load correctness check framework
//
\l ../chk.q
