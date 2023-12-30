package pdf_lib;

/**
	From PDF spec table 230
**/
@:jsRequire("pdf-lib", "AcroChoiceFlags") @:enum extern abstract AcroChoiceFlags(Int) from Int to Int {
	/**
		If set, the field is a combo box; if clear, the field is a list box.
	**/
	var Combo;
	/**
		If set, the combo box shall include an editable text box as well as a
		drop-down list; if clear, it shall include only a drop-down list. This
		flag shall be used only if the Combo flag is set.
	**/
	var Edit;
	/**
		If set, the field's option items shall be sorted alphabetically. This flag
		is intended for use by writers, not by readers. Conforming readers shall
		display the options in the order in which they occur in the Opt array
		(see Table 231).
	**/
	var Sort;
	/**
		If set, more than one of the field's option items may be selected
		simultaneously; if clear, at most one item shall be selected.
	**/
	var MultiSelect;
	/**
		If set, text entered in the field shall not be spell-checked. This flag
		shall not be used unless the Combo and Edit flags are both set.
	**/
	var DoNotSpellCheck;
	/**
		If set, the new value shall be committed as soon as a selection is made
		(commonly with the pointing device). In this case, supplying a value for
		a field involves three actions: selecting the field for fill-in,
		selecting a choice for the fill-in value, and leaving that field, which
		finalizes or "commits" the data choice and triggers any actions associated
		with the entry or changing of this data. If this flag is on, then
		processing does not wait for leaving the field action to occur, but
		immediately proceeds to the third step.
		
		This option enables applications to perform an action once a selection is
		made, without requiring the user to exit the field. If clear, the new
		value is not committed until the user exits the field.
	**/
	var CommitOnSelChange;
}