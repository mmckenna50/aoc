
//
// @desc Runs all solutions
//
// @param x {hsym}	Input filepath.
//
// @return {int[]}	Result to all questions as list.
//
runall:{
	x:flip"H"$"-"vs'/:("**";",")0:read0 x;
	(func1 x;func2 x)
	}


//
// @desc Determines the number of groups that completely overlap.
//
// @param x {short[][2]}	List of groups of task ranges.
//
// @return {int}	        Total score.
//
func1:{sum max flip{(min x within y;min y within x)}.'x}


//
// @desc Determines the number of groups that overlap at all.
//
// @param x {short[][2]}	List of groups of task ranges.
//
func2:{sum max flip{(max x within y;max y within x)}.'x}


// Total time taken, first to prevent caching bias
-1"Total time taken and space used [1k runs]: ";
\ts:1000 runall`:input

day:first -2#"/"vs first -3#value[runall]
// Test case validations.
-1"\n",day," - Test cases";
sres:string res:runall[`:test];
-1"Test .1: ",$[2i~first res;first[sres]," - Pass";first[sres]," - Fail"];
-1"Test .2: ",$[4i~last res;last[sres]," - Pass";last[sres]," - Fail"];

// Parts 1 and 2 for Q3.
-1"\nQ: ",day;
-1"A .1: ",string first res:runall[`:input];
-1"A .2: ",string last[res];
