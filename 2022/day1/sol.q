//
// @desc Retrieve the sum of the numbers of top y groups
//
// @param x {string[]}	String rows from file.
// @param y {num}	Number of groups to consider.
//
// @return {int}	The sum of numbers acorss y groups.
//
func:{sum value y#desc sum each group(!). reverse((+\)null x;x)}


//
// @desc Runs all solutions
//
// @param x {hsym}      Input filepath.
//
runall:{
        x:"I"$read0 x;
        (func[x;1];func[x;3])
        }


// Total time taken, first to prevent caching bias
-1"Total time taken and space used [1k runs]: ";
\ts:1000 runall`:input


// Test case validations.
-1"\nQ: 1 - Test cases";
sres:string res:runall[`:test];
-1"Test .1: ",$[24000i~first res;first[sres]," - Pass";first[sres]," - Fail"];
-1"Test .2: ",$[45000i~last res;last[sres]," - Pass";last[sres]," - Fail"];

// Parts 1 and 2 for Q1.
-1"\nQ: 1";
-1"A .1: ",string first res:runall[`:input];
-1"A .2: ",string last[res];
