package pdf_lib.cjs.api.form;

@:jsRequire("pdf-lib/cjs/api/form/appearances") @valueModuleOnly extern class Appearances {
	/**
		******************* Appearance Provider Functions *************************
	**/
	static function normalizeAppearance<T>(appearance:ts.AnyOf2<pdf_lib.AppearanceMapping<T>, T>):pdf_lib.AppearanceMapping<T>;
	static function defaultCheckBoxAppearanceProvider(checkBox:pdf_lib.PDFCheckBox, widget:pdf_lib.PDFWidgetAnnotation):pdf_lib.AppearanceOrMapping<{
		var on : Array<pdf_lib.PDFOperator>;
		var off : Array<pdf_lib.PDFOperator>;
	}>;
	static function defaultRadioGroupAppearanceProvider(radioGroup:pdf_lib.PDFRadioGroup, widget:pdf_lib.PDFWidgetAnnotation):pdf_lib.AppearanceOrMapping<{
		var on : Array<pdf_lib.PDFOperator>;
		var off : Array<pdf_lib.PDFOperator>;
	}>;
	static function defaultButtonAppearanceProvider(button:pdf_lib.PDFButton, widget:pdf_lib.PDFWidgetAnnotation, font:pdf_lib.PDFFont):pdf_lib.AppearanceOrMapping<Array<pdf_lib.PDFOperator>>;
	static function defaultTextFieldAppearanceProvider(textField:pdf_lib.PDFTextField, widget:pdf_lib.PDFWidgetAnnotation, font:pdf_lib.PDFFont):pdf_lib.AppearanceOrMapping<Array<pdf_lib.PDFOperator>>;
	static function defaultDropdownAppearanceProvider(dropdown:pdf_lib.PDFDropdown, widget:pdf_lib.PDFWidgetAnnotation, font:pdf_lib.PDFFont):pdf_lib.AppearanceOrMapping<Array<pdf_lib.PDFOperator>>;
	static function defaultOptionListAppearanceProvider(optionList:pdf_lib.PDFOptionList, widget:pdf_lib.PDFWidgetAnnotation, font:pdf_lib.PDFFont):pdf_lib.AppearanceOrMapping<Array<pdf_lib.PDFOperator>>;
}