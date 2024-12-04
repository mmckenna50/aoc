//
// Common evaluation and testing logic
//


//
// Note: We assume `runall` returns a two-element list.
//     [0]: result to first part.
//     [1]: result to second part.
//

//
// Total time taken, first to prevent caching bias
//
-1"Total time taken and space used [1k runs]: ";
\ts:1000 runall`:input

day:first -2#"/"vs first -3#value[runall] / Determins puzzle day based on dir

//
// Test case validations.
//
-1"\n",day," - Test cases";
sres:string res:runall[`:test];
-1"Test .1: ",$[TEST1~first res;first[sres]," - Pass";first[sres]," - Fail"];
-1"Test .2: ",$[TEST2~last res;last[sres]," - Pass";last[sres]," - Fail"];


//
// Parts 1 and 2
//
-1"\nQ: ",day;
-1"A .1: ",string first res:runall[`:input];
-1"A .2: ",string last[res];

exit 0
