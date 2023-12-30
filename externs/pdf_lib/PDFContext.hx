package pdf_lib;

@:jsRequire("pdf-lib", "PDFContext") extern class PDFContext {
	private function new();
	var largestObjectNumber : Float;
	var header : PDFHeader;
	var trailerInfo : {
		@:optional
		var Root : PDFObject;
		@:optional
		var Encrypt : PDFObject;
		@:optional
		var Info : PDFObject;
		@:optional
		var ID : PDFObject;
	};
	var rng : pdf_lib.cjs.utils.rng.SimpleRNG;
	private final indirectObjects : Dynamic;
	@:optional
	private var pushGraphicsStateContentStreamRef : Dynamic;
	@:optional
	private var popGraphicsStateContentStreamRef : Dynamic;
	function assign(ref:PDFRef, object:PDFObject):Void;
	function nextRef():PDFRef;
	function register(object:PDFObject):PDFRef;
	function delete(ref:PDFRef):Bool;
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFBool; final True : PDFBool; final False : PDFBool; }):Null<PDFBool> { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFDict; dynamic function withContext(context:PDFContext):PDFDict; dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict; }):Null<PDFDict> { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):Null<PDFHexString> { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFName; dynamic function of(name:String):PDFName; final Length : PDFName; final FlateDecode : PDFName; final Resources : PDFName; final Font : PDFName; final XObject : PDFName; final ExtGState : PDFName; final Contents : PDFName; final Type : PDFName; final Parent : PDFName; final MediaBox : PDFName; final Page : PDFName; final Annots : PDFName; final TrimBox : PDFName; final ArtBox : PDFName; final BleedBox : PDFName; final CropBox : PDFName; final Rotate : PDFName; final Title : PDFName; final Author : PDFName; final Subject : PDFName; final Creator : PDFName; final Keywords : PDFName; final Producer : PDFName; final CreationDate : PDFName; final ModDate : PDFName; }):Null<PDFName> { })
	@:overload(function(ref:LookupKey, type:PDFNull):Null<PDFNull> { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFNumber; dynamic function of(value:Float):PDFNumber; }):Null<PDFNumber> { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFStream; }):Null<PDFStream> { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFRef; dynamic function of(objectNumber:Float, ?generationNumber:Float):PDFRef; }):Null<PDFRef> { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }):Null<PDFString> { })
	@:overload(function(ref:LookupKey, type1:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }, type2:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):Null<ts.AnyOf2<PDFHexString, PDFString>> { })
	function lookupMaybe(ref:LookupKey, type:{ var prototype : PDFArray; dynamic function withContext(context:PDFContext):PDFArray; }):Null<PDFArray>;
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFArray; dynamic function withContext(context:PDFContext):PDFArray; }):PDFArray { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFBool; final True : PDFBool; final False : PDFBool; }):PDFBool { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFDict; dynamic function withContext(context:PDFContext):PDFDict; dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext):PDFDict; }):PDFDict { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):PDFHexString { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFName; dynamic function of(name:String):PDFName; final Length : PDFName; final FlateDecode : PDFName; final Resources : PDFName; final Font : PDFName; final XObject : PDFName; final ExtGState : PDFName; final Contents : PDFName; final Type : PDFName; final Parent : PDFName; final MediaBox : PDFName; final Page : PDFName; final Annots : PDFName; final TrimBox : PDFName; final ArtBox : PDFName; final BleedBox : PDFName; final CropBox : PDFName; final Rotate : PDFName; final Title : PDFName; final Author : PDFName; final Subject : PDFName; final Creator : PDFName; final Keywords : PDFName; final Producer : PDFName; final CreationDate : PDFName; final ModDate : PDFName; }):PDFName { })
	@:overload(function(ref:LookupKey, type:PDFNull):PDFNull { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFNumber; dynamic function of(value:Float):PDFNumber; }):PDFNumber { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFStream; }):PDFStream { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFRef; dynamic function of(objectNumber:Float, ?generationNumber:Float):PDFRef; }):PDFRef { })
	@:overload(function(ref:LookupKey, type:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }):PDFString { })
	@:overload(function(ref:LookupKey, type1:{ var prototype : PDFString; dynamic function of(value:String):PDFString; dynamic function fromDate(date:js.lib.Date):PDFString; }, type2:{ var prototype : PDFHexString; dynamic function of(value:String):PDFHexString; dynamic function fromText(value:String):PDFHexString; }):ts.AnyOf2<PDFHexString, PDFString> { })
	function lookup(ref:LookupKey):Null<PDFObject>;
	function getObjectRef(pdfObject:PDFObject):Null<PDFRef>;
	function enumerateIndirectObjects():Array<ts.Tuple2<PDFRef, PDFObject>>;
	@:overload(function(literal:String):PDFName { })
	@:overload(function(literal:Float):PDFNumber { })
	@:overload(function(literal:Bool):PDFBool { })
	@:overload(function(literal:LiteralObject):PDFDict { })
	@:overload(function(literal:LiteralArray):PDFArray { })
	function obj(literal:Null<Any>):PDFNull;
	function stream(contents:ts.AnyOf2<String, js.lib.Uint8Array>, ?dict:LiteralObject):PDFRawStream;
	function flateStream(contents:ts.AnyOf2<String, js.lib.Uint8Array>, ?dict:LiteralObject):PDFRawStream;
	function contentStream(operators:Array<PDFOperator>, ?dict:LiteralObject):PDFContentStream;
	function formXObject(operators:Array<PDFOperator>, ?dict:LiteralObject):PDFContentStream;
	function getPushGraphicsStateContentStream():PDFRef;
	function getPopGraphicsStateContentStream():PDFRef;
	function addRandomSuffix(prefix:String, ?suffixLength:Float):String;
	static var prototype : PDFContext;
	static dynamic function create():PDFContext;
}