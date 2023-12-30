package pdf_lib.cjs.types.fontkit;

typedef Subset = {
	/**
		Includes the given glyph object or glyph ID in the subset.
		Returns the glyph's new ID in the subset.
	**/
	function includeGlyph(glyph:ts.AnyOf2<Float, Glyph>):Float;
	/**
		Returns a stream containing the encoded font file that can be piped to a
		destination, such as a file.
	**/
	function encodeStream():SubsetStream;
};