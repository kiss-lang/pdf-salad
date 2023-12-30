package pdf_lib.standard_fonts;

/**
	[name_1 name_2 number_x]:
	   Name of the first character in the kerning pair followed by the name of the
	   second character followed by the kerning amount in the x direction
	   (y is zero). The kerning amount is specified in the units of the character
	   coordinate system.
**/
typedef IKernPair = ts.Tuple3<String, String, Float>;