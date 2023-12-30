package pdf_lib;

/**
	********************* Appearance Provider Types ***************************
**/
typedef CheckBoxAppearanceProvider = (checkBox:PDFCheckBox, widget:PDFWidgetAnnotation) -> AppearanceOrMapping<{ var on : Array<PDFOperator>; var off : Array<PDFOperator>; }>;