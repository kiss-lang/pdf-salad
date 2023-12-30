package pdf_lib;

@:jsRequire("pdf-lib", "PDFAcroForm") extern class PDFAcroForm {
	private function new();
	final dict : PDFDict;
	function Fields():Null<PDFArray>;
	function getFields():Array<ts.Tuple2<PDFAcroField, PDFRef>>;
	function getAllFields():Array<ts.Tuple2<PDFAcroField, PDFRef>>;
	function addField(field:PDFRef):Void;
	function removeField(field:PDFAcroField):Void;
	function normalizedEntries():{
		var Fields : PDFArray;
	};
	static var prototype : PDFAcroForm;
	static dynamic function fromDict(dict:PDFDict):PDFAcroForm;
	static dynamic function create(context:PDFContext):PDFAcroForm;
}