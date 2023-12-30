package pdf_lib;

@:jsRequire("pdf-lib", "PDFArray") extern class PDFArray extends PDFObject {
	private function new();
	private final array : Dynamic;
	private final context : Dynamic;
	function size():Float;
	function push(object:PDFObject):Void;
	function insert(index:Float, object:PDFObject):Void;
	function indexOf(object:PDFObject):Null<Float>;
	function remove(index:Float):Void;
	function set(idx:Float, object:PDFObject):Void;
	function get(index:Float):PDFObject;
	@:overload(function(index:Float, type:{ var prototype : PDFBool; final True : PDFBool; final False : PDFBool; }):Null<PDFBool> { })
	@:overload(function(index:Float, type:{ var prototype : PDFDict; dynamic function withContext(context:PDFContext):PDFDict; dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict; }):Null<PDFDict> { })
	@:overload(function(index:Float, type:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):Null<PDFHexString> { })
	@:overload(function(index:Float, type:{ var prototype : PDFName; dynamic function of(name:String):PDFName; final Length : PDFName; final FlateDecode : PDFName; final Resources : PDFName; final Font : PDFName; final XObject : PDFName; final ExtGState : PDFName; final Contents : PDFName; final Type : PDFName; final Parent : PDFName; final MediaBox : PDFName; final Page : PDFName; final Annots : PDFName; final TrimBox : PDFName; final ArtBox : PDFName; final BleedBox : PDFName; final CropBox : PDFName; final Rotate : PDFName; final Title : PDFName; final Author : PDFName; final Subject : PDFName; final Creator : PDFName; final Keywords : PDFName; final Producer : PDFName; final CreationDate : PDFName; final ModDate : PDFName; }):Null<PDFName> { })
	@:overload(function(index:Float, type:PDFNull):Null<PDFNull> { })
	@:overload(function(index:Float, type:{ var prototype : PDFNumber; dynamic function of(value:Float):PDFNumber; }):Null<PDFNumber> { })
	@:overload(function(index:Float, type:{ var prototype : PDFStream; }):Null<PDFStream> { })
	@:overload(function(index:Float, type:{ var prototype : PDFRawStream; dynamic function of(dict:PDFDict, contents:js.lib.Uint8Array):PDFRawStream; }):Null<PDFRawStream> { })
	@:overload(function(index:Float, type:{ var prototype : PDFRef; dynamic function of(objectNumber:Float, ?generationNumber:Float):PDFRef; }):Null<PDFRef> { })
	@:overload(function(index:Float, type:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }):Null<PDFString> { })
	@:overload(function(index:Float, type1:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }, type2:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):Null<ts.AnyOf2<PDFHexString, PDFString>> { })
	function lookupMaybe(index:Float, type:{ var prototype : PDFArray; dynamic function withContext(context:PDFContext):PDFArray; }):Null<PDFArray>;
	@:overload(function(index:Float, type:{ var prototype : PDFArray; dynamic function withContext(context:PDFContext):PDFArray; }):PDFArray { })
	@:overload(function(index:Float, type:{ var prototype : PDFBool; final True : PDFBool; final False : PDFBool; }):PDFBool { })
	@:overload(function(index:Float, type:{ var prototype : PDFDict; dynamic function withContext(context:PDFContext):PDFDict; dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict; }):PDFDict { })
	@:overload(function(index:Float, type:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):PDFHexString { })
	@:overload(function(index:Float, type:{ var prototype : PDFName; dynamic function of(name:String):PDFName; final Length : PDFName; final FlateDecode : PDFName; final Resources : PDFName; final Font : PDFName; final XObject : PDFName; final ExtGState : PDFName; final Contents : PDFName; final Type : PDFName; final Parent : PDFName; final MediaBox : PDFName; final Page : PDFName; final Annots : PDFName; final TrimBox : PDFName; final ArtBox : PDFName; final BleedBox : PDFName; final CropBox : PDFName; final Rotate : PDFName; final Title : PDFName; final Author : PDFName; final Subject : PDFName; final Creator : PDFName; final Keywords : PDFName; final Producer : PDFName; final CreationDate : PDFName; final ModDate : PDFName; }):PDFName { })
	@:overload(function(index:Float, type:PDFNull):PDFNull { })
	@:overload(function(index:Float, type:{ var prototype : PDFNumber; dynamic function of(value:Float):PDFNumber; }):PDFNumber { })
	@:overload(function(index:Float, type:{ var prototype : PDFStream; }):PDFStream { })
	@:overload(function(index:Float, type:{ var prototype : PDFRawStream; dynamic function of(dict:PDFDict, contents:js.lib.Uint8Array):PDFRawStream; }):PDFRawStream { })
	@:overload(function(index:Float, type:{ var prototype : PDFRef; dynamic function of(objectNumber:Float, ?generationNumber:Float):PDFRef; }):PDFRef { })
	@:overload(function(index:Float, type:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }):PDFString { })
	@:overload(function(index:Float, type1:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }, type2:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):ts.AnyOf2<PDFHexString, PDFString> { })
	function lookup(index:Float):Null<PDFObject>;
	function asRectangle():{
		var x : Float;
		var y : Float;
		var width : Float;
		var height : Float;
	};
	function asArray():Array<PDFObject>;
	function clone(?context:PDFContext):PDFArray;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	function scalePDFNumbers(x:Float, y:Float):Void;
	static var prototype : PDFArray;
	static dynamic function withContext(context:PDFContext):PDFArray;
}