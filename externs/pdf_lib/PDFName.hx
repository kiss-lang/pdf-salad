package pdf_lib;

@:jsRequire("pdf-lib", "PDFName") extern class PDFName extends PDFObject {
	private function new();
	private final encodedName : Dynamic;
	function asBytes():js.lib.Uint8Array;
	function decodeText():String;
	function asString():String;
	function value():String;
	function clone():PDFName;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFName;
	static dynamic function of(name:String):PDFName;
	static final Length : PDFName;
	static final FlateDecode : PDFName;
	static final Resources : PDFName;
	static final Font : PDFName;
	static final XObject : PDFName;
	static final ExtGState : PDFName;
	static final Contents : PDFName;
	static final Type : PDFName;
	static final Parent : PDFName;
	static final MediaBox : PDFName;
	static final Page : PDFName;
	static final Annots : PDFName;
	static final TrimBox : PDFName;
	static final ArtBox : PDFName;
	static final BleedBox : PDFName;
	static final CropBox : PDFName;
	static final Rotate : PDFName;
	static final Title : PDFName;
	static final Author : PDFName;
	static final Subject : PDFName;
	static final Creator : PDFName;
	static final Keywords : PDFName;
	static final Producer : PDFName;
	static final CreationDate : PDFName;
	static final ModDate : PDFName;
}