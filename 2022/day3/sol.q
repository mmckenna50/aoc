P:(.Q.a,.Q.A)!1+til 52 / Priorities

//
// @desc Runs all solutions
//
// @param x {hsym}	Input filepath.
//
runall:{
	x:read0 x;
	(func1 x;func2 x)
	}


//
// @desc Determines total score in rock, paper and scissors game input.
//
// @param x {char[]}	List of desired moves.
// @param y {char[][]}	Matrix of apponant and desired moves.
//
// @return {int}        Total score.
//
func1:{sum P(f[;0]@'where each(in/)each f:cut'["h"$(count each x)%2;x])[;0]}
//func1:{sum P(.[inter;]each cut'["h"$(count each x)%2;x])[;0]}


//
// @desc Determines which hand shape to use and the total score.
//
// @param x {char[]}	List of desired outcomes.
// @param y {char[]}	List of apponant moves.
//
func2:{sum P(inter[;] over'3 cut x)[;0]}


// Total time taken, first to prevent caching bias
-1"Total time taken and space used [1k runs]: ";
\ts:1000 runall`:input

day:first -2#"/"vs first -3#value[runall]
// Test case validations.
-1"\n",day," - Test cases";
sres:string res:runall[`:test];
-1"Test .1: ",$[157~first res;first[sres]," - Pass";first[sres]," - Fail"];
-1"Test .2: ",$[70~last res;last[sres]," - Pass";last[sres]," - Fail"];

// Parts 1 and 2 for Q3.
-1"\nQ: ",day;
-1"A .1: ",string first res:runall[`:input];
-1"A .2: ",string last[res];
