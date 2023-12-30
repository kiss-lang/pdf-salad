package pdf_lib;

typedef TextFieldAppearanceProvider = (textField:PDFTextField, widget:PDFWidgetAnnotation, font:PDFFont) -> AppearanceOrMapping<Array<PDFOperator>>;