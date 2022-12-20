S1:"XYZ"!1 2 3 / Score for each choice
S2:(!). flip(	("A X";	3); / All possibilities and their results
		("A Y"; 6);
		("A Z";	0);
		("B X";	0);
		("B Y";	3);
		("B Z";	6);
		("C X";	6);
		("C Y"; 0);
		("C Z";	3))
S3:(!). flip( / All possible decissions based on input and win/draw/loss
        ("A";((!). flip(
                ("X";    "Z");
                ("Y";    "X");
                ("Z";    "Y"))));
        ("B";((!). flip(
                ("X";    "X");
                ("Y";    "Y");
                ("Z";    "Z"))));
        ("C";((!). flip(
		("X";	"Y");
		("Y";	"Z");
		("Z";	"X")))));


//
// @desc Runs all solutions
//
// @param x {hsym}	Input filepath.
//
runall:{
	x:read0 x;
	x0:x[;0];x2:x[;2];
	(func1[x2;x];func2[x2;x0])
	}


//
// @desc Determines total score in rock, paper and scissors game input.
//
// @param x {char[]}	List of desired moves.
// @param y {char[][]}	Matrix of apponant and desired moves.
//
// @return {int}        Total score.
//
func1:{sum[S1@x]+sum S2@y}


//
// @desc Determines which hand shape to use and the total score.
//
// @param x {char[]}	List of desired outcomes.
// @param y {char[]}	List of apponant moves.
//
func2:{func1[f;(y,'" "),'f:(S3@y)@'x]}


// Total time taken, first to prevent caching bias
-1"Total time taken and space used [1k runs]: ";
\ts:1000 runall`:input

// Test case validations.
-1"\nQ: 2 - Test cases";
sres:string res:runall[`:test];
-1"Test .1: ",$[15~first res;first[sres]," - Pass";first[sres]," - Fail"];
-1"Test .2: ",$[12~last res;last[sres]," - Pass";last[sres]," - Fail"];

// Parts 1 and 2 for Q2.
-1"\nQ: 2";
-1"A .1: ",string first res:runall[`:input];
-1"A .2: ",string last[res];
