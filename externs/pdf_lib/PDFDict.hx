package pdf_lib;

@:jsRequire("pdf-lib", "PDFDict") extern class PDFDict extends PDFObject {
	private function new(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext);
	final context : PDFContext;
	private final dict : Dynamic;
	function keys():Array<PDFName>;
	function values():Array<PDFObject>;
	function entries():Array<ts.Tuple2<PDFName, PDFObject>>;
	function set(key:PDFName, value:PDFObject):Void;
	function get(key:PDFName, ?preservePDFNull:Bool):Null<PDFObject>;
	function has(key:PDFName):Bool;
	@:overload(function(key:PDFName, type:{ var prototype : PDFBool; final True : PDFBool; final False : PDFBool; }):Null<PDFBool> { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFDict; dynamic function withContext(context:PDFContext):PDFDict; dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict; }):Null<PDFDict> { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):Null<PDFHexString> { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFName; dynamic function of(name:String):PDFName; final Length : PDFName; final FlateDecode : PDFName; final Resources : PDFName; final Font : PDFName; final XObject : PDFName; final ExtGState : PDFName; final Contents : PDFName; final Type : PDFName; final Parent : PDFName; final MediaBox : PDFName; final Page : PDFName; final Annots : PDFName; final TrimBox : PDFName; final ArtBox : PDFName; final BleedBox : PDFName; final CropBox : PDFName; final Rotate : PDFName; final Title : PDFName; final Author : PDFName; final Subject : PDFName; final Creator : PDFName; final Keywords : PDFName; final Producer : PDFName; final CreationDate : PDFName; final ModDate : PDFName; }):Null<PDFName> { })
	@:overload(function(key:PDFName, type:PDFNull):Null<PDFNull> { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFNumber; dynamic function of(value:Float):PDFNumber; }):Null<PDFNumber> { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFStream; }):Null<PDFStream> { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFRef; dynamic function of(objectNumber:Float, ?generationNumber:Float):PDFRef; }):Null<PDFRef> { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }):Null<PDFString> { })
	@:overload(function(ref:PDFName, type1:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }, type2:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):Null<ts.AnyOf2<PDFHexString, PDFString>> { })
	@:overload(function(ref:PDFName, type1:{ var prototype : PDFDict; dynamic function withContext(context:PDFContext):PDFDict; dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict; }, type2:{ var prototype : PDFStream; }):Null<ts.AnyOf2<PDFDict, PDFStream>> { })
	@:overload(function(ref:PDFName, type1:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }, type2:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }, type3:{ var prototype : PDFArray; dynamic function withContext(context:PDFContext):PDFArray; }):Null<ts.AnyOf3<PDFHexString, PDFArray, PDFString>> { })
	function lookupMaybe(key:PDFName, type:{ var prototype : PDFArray; dynamic function withContext(context:PDFContext):PDFArray; }):Null<PDFArray>;
	@:overload(function(key:PDFName, type:{ var prototype : PDFArray; dynamic function withContext(context:PDFContext):PDFArray; }):PDFArray { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFBool; final True : PDFBool; final False : PDFBool; }):PDFBool { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFDict; dynamic function withContext(context:PDFContext):PDFDict; dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict; }):PDFDict { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):PDFHexString { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFName; dynamic function of(name:String):PDFName; final Length : PDFName; final FlateDecode : PDFName; final Resources : PDFName; final Font : PDFName; final XObject : PDFName; final ExtGState : PDFName; final Contents : PDFName; final Type : PDFName; final Parent : PDFName; final MediaBox : PDFName; final Page : PDFName; final Annots : PDFName; final TrimBox : PDFName; final ArtBox : PDFName; final BleedBox : PDFName; final CropBox : PDFName; final Rotate : PDFName; final Title : PDFName; final Author : PDFName; final Subject : PDFName; final Creator : PDFName; final Keywords : PDFName; final Producer : PDFName; final CreationDate : PDFName; final ModDate : PDFName; }):PDFName { })
	@:overload(function(key:PDFName, type:PDFNull):PDFNull { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFNumber; dynamic function of(value:Float):PDFNumber; }):PDFNumber { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFStream; }):PDFStream { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFRef; dynamic function of(objectNumber:Float, ?generationNumber:Float):PDFRef; }):PDFRef { })
	@:overload(function(key:PDFName, type:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }):PDFString { })
	@:overload(function(ref:PDFName, type1:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }, type2:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):ts.AnyOf2<PDFHexString, PDFString> { })
	@:overload(function(ref:PDFName, type1:{ var prototype : PDFDict; dynamic function withContext(context:PDFContext):PDFDict; dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict; }, type2:{ var prototype : PDFStream; }):ts.AnyOf2<PDFDict, PDFStream> { })
	@:overload(function(ref:PDFName, type1:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }, type2:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }, type3:{ var prototype : PDFArray; dynamic function withContext(context:PDFContext):PDFArray; }):ts.AnyOf3<PDFHexString, PDFArray, PDFString> { })
	function lookup(key:PDFName):Null<PDFObject>;
	function delete(key:PDFName):Bool;
	function asMap():js.lib.Map<PDFName, PDFObject>;
	/**
		Generate a random key that doesn't exist in current key set
	**/
	function uniqueKey(?tag:String):PDFName;
	function clone(?context:PDFContext):PDFDict;
	function copyBytesInto(buffer:js.lib.Uint8Array, offset:Float):Float;
	static var prototype : PDFDict;
	static dynamic function withContext(context:PDFContext):PDFDict;
	static dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict;
}