//
// Day 1: Trebuchet?!
//

//
// @desc Main execution function, part 1.
//
// @param f {hsym}	Filepath to input data
//
// @return {long}	Sum of the first and last digit combinations
//
func1:{[f]
	d:read0 f;
	sum"J"$(first;last)@\:/:except'[d;]count[d]#enlist .Q.a
	}


//
// @desc Main execution function, part 2.
//
// @param f {hsym}      Filepath to input data
//
// @return {long}       Sum of the first and last digit combinations
//
func2:{[f]
        d:read0 f;
        sum"J"$(first;last)@\:/:except'[d;]count[d]#enlist .Q.a                                } 



//
// @desc Test function to evaluate correctness of solutions.
//
{
	$[142~func1`:day1_1_example_data;-1"Example 1 PASSED";-2"Example 1 FAILED"];
	-1"Solution 1: ",string func1`:day1_1_data;
	$[142~func2`:day1_2_example_data;-1"Example 2 PASSED";-2"Example 2 FAILED"];
	 -1"Solution 2: ",string func2`:day1_2_data;
	}[]
exit 1
