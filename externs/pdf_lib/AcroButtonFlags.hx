package pdf_lib;

/**
	From PDF spec table 226
**/
@:jsRequire("pdf-lib", "AcroButtonFlags") @:enum extern abstract AcroButtonFlags(Int) from Int to Int {
	/**
		(Radio buttons only) If set, exactly one radio button shall be selected at
		all times; selecting the currently selected button has no effect. If clear,
		clicking the selected button deselects it, leaving no button selected.
	**/
	var NoToggleToOff;
	/**
		If set, the field is a set of radio buttons; if clear, the field is a check
		box. This flag may be set only if the Pushbutton flag is clear.
	**/
	var Radio;
	/**
		If set, the field is a pushbutton that does not retain a permanent value.
	**/
	var PushButton;
	/**
		If set, a group of radio buttons within a radio button field that use the
		same value for the on state will turn on and off in unison; that is if one
		is checked, they are all checked. If clear, the buttons are mutually
		exclusive (the same behavior as HTML radio buttons).
	**/
	var RadiosInUnison;
}