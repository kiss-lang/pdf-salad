package pdf_lib.cjs.types.fontkit;

/**
	Represents positioning information for a glyph in a GlyphRun.
**/
typedef GlyphPosition = {
	/**
		The amount to move the virtual pen in the X direction after rendering
		this glyph.
	**/
	var xAdvance : Float;
	/**
		The amount to move the virtual pen in the Y direction after rendering
		this glyph.
	**/
	var yAdvance : Float;
	/**
		The offset from the pen position in the X direction at which to render
		this glyph.
	**/
	var xOffset : Float;
	/**
		The offset from the pen position in the Y direction at which to render
		this glyph.
	**/
	var yOffset : Float;
};