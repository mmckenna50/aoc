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


//
// @desc Determines total score in rock, paper and scissors game input.
//
// @param x {hsym}	Source filename, strategy guide.
//
// @return {int}	Total score.
//
func:{t:sum[S1@r[;2]]+sum S2@r:read0 x}

// 2.1
-1"Q: 2.1";
-1"Test: ",string func[`:test];
-1"A: ",string func[`:input];
-1"time and space used:";
\ts func[`:input]

// 2.2
/-1"\nQ: 2.2";
/-1"A: ",string func[`:input;3];
/-1"time and space used:";
/\ts func[`:input;3]
