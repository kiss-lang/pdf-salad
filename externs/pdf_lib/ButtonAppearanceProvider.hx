package pdf_lib;

typedef ButtonAppearanceProvider = (button:PDFButton, widget:PDFWidgetAnnotation, font:PDFFont) -> AppearanceOrMapping<Array<PDFOperator>>;