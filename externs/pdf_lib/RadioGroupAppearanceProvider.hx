package pdf_lib;

typedef RadioGroupAppearanceProvider = (radioGroup:PDFRadioGroup, widget:PDFWidgetAnnotation) -> AppearanceOrMapping<{ var on : Array<PDFOperator>; var off : Array<PDFOperator>; }>;