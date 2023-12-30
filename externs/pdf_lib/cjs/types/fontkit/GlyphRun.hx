package pdf_lib.cjs.types.fontkit;

/**
	Represents a run of Glyph and GlyphPosition objects.
	Returned by the Font.layout method.
**/
typedef GlyphRun = {
	/**
		An array of Glyph objects in the run
	**/
	var glyphs : Array<Glyph>;
	/**
		An array of GlyphPosition objects for each glyph in the run
	**/
	var positions : Array<GlyphPosition>;
	/**
		The script that was requested for shaping. This was either passed in or detected automatically.
	**/
	var script : String;
	/**
		The language requested for shaping, as passed in. If `null`, the default language for the
		script was used.
	**/
	var language : Null<String>;
	/**
		The direction requested for shaping, as passed in (either ltr or rtl).
		If `null`, the default direction of the script is used.
	**/
	var direction : Null<String>;
	/**
		The features requested during shaping. This is a combination of user
		specified features and features chosen by the shaper.
	**/
	var features : Dynamic;
	/**
		The total advance width of the run.
	**/
	var advanceWidth : Float;
	/**
		The total advance height of the run.
	**/
	var advanceHeight : Float;
	/**
		The bounding box containing all glyphs in the run.
	**/
	var bbox : BoundingBox;
};