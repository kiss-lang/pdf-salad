package pdf_lib;

/**
	From PDF spec table 228
**/
@:jsRequire("pdf-lib", "AcroTextFlags") @:enum extern abstract AcroTextFlags(Int) from Int to Int {
	/**
		If set, the field may contain multiple lines of text; if clear, the field's
		text shall be restricted to a single line.
	**/
	var Multiline;
	/**
		If set, the field is intended for entering a secure password that should
		not be echoed visibly to the screen. Characters typed from the keyboard
		shall instead be echoed in some unreadable form, such as asterisks or
		bullet characters.
		> NOTE   To protect password confidentiality, readers should never store
		>        the value of the text field in the PDF file if this flag is set.
	**/
	var Password;
	/**
		If set, the text entered in the field represents the pathname of a file
		whose contents shall be submitted as the value of the field.
	**/
	var FileSelect;
	/**
		If set, text entered in the field shall not be spell-checked.
	**/
	var DoNotSpellCheck;
	/**
		If set, the field shall not scroll (horizontally for single-line fields,
		vertically for multiple-line fields) to accommodate more text than fits
		within its annotation rectangle. Once the field is full, no further text
		shall be accepted for interactive form filling; for non-interactive form
		filling, the filler should take care not to add more character than will
		visibly fit in the defined area.
	**/
	var DoNotScroll;
	/**
		May be set only if the MaxLen entry is present in the text field dictionary
		(see Table 229) and if the Multiline, Password, and FileSelect flags are
		clear. If set, the field shall be automatically divided into as many
		equally spaced positions, or combs, as the value of MaxLen, and the text
		is laid out into those combs.
	**/
	var Comb;
	/**
		If set, the value of this field shall be a rich text string
		(see 12.7.3.4, "Rich Text Strings"). If the field has a value, the RV
		entry of the field dictionary (Table 222) shall specify the rich text
		string.
	**/
	var RichText;
}