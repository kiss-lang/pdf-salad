package pdf_lib;

typedef OptionListAppearanceProvider = (optionList:PDFOptionList, widget:PDFWidgetAnnotation, font:PDFFont) -> AppearanceOrMapping<Array<PDFOperator>>;