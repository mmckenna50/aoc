//
// @desc Retrieve the sum of the numbers of top y groups
//
// @param x {hsym}	Source filename.
// @param y {num}	Number of groups to consider.
//
// @return {int}	The sum of numbers acorss y groups.
//
func:{sum value y#desc sum each group(!). reverse((+\)null i;i:"I"$read0 x)}

// 1.1
-1"Q 1.1";
func[`:input;1]
\ts func[`:input;1]

// 1.2
-1"\nQ 1.2";
func[`:input;3]
\ts func[`:input;3]
