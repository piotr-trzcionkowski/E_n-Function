BEGIN {
		A=0
		B=0
		}
{
	A++
	B = -($3)/3+0.5*$4
	print B

}
END {}