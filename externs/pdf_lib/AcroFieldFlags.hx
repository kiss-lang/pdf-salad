package pdf_lib;

/**
	From PDF spec table 221
**/
@:jsRequire("pdf-lib", "AcroFieldFlags") @:enum extern abstract AcroFieldFlags(Int) from Int to Int {
	/**
		If set, the user may not change the value of the field. Any associated
		widget annotations will not interact with the user; that is, they will not
		respond to mouse clicks or change their appearance in response to mouse
		motions. This flag is useful for fields whose values are computed or
		imported from a database.
	**/
	var ReadOnly;
	/**
		If set, the field shall have a value at the time it is exported by a
		submit-form action (see 12.7.5.2, "Submit-Form Action").
	**/
	var Required;
	/**
		If set, the field shall not be exported by a submit-form action
		(see 12.7.5.2, "Submit-Form Action").
	**/
	var NoExport;
}