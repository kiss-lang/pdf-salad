package pdf_lib;

@:jsRequire("pdf-lib", "PDFPageLeaf") extern class PDFPageLeaf extends PDFDict {
	private function new();
	private var normalized : Dynamic;
	private final autoNormalizeCTM : Dynamic;
	function clone(?context:PDFContext):PDFPageLeaf;
	function Parent():Null<PDFPageTree>;
	function Contents():Null<ts.AnyOf2<PDFArray, PDFStream>>;
	function Annots():Null<PDFArray>;
	function BleedBox():Null<PDFArray>;
	function TrimBox():Null<PDFArray>;
	function ArtBox():Null<PDFArray>;
	function Resources():Null<PDFDict>;
	function MediaBox():PDFArray;
	function CropBox():Null<PDFArray>;
	function Rotate():Null<PDFNumber>;
	function getInheritableAttribute(name:PDFName):Null<PDFObject>;
	function setParent(parentRef:PDFRef):Void;
	function addContentStream(contentStreamRef:PDFRef):Void;
	function wrapContentStreams(startStream:PDFRef, endStream:PDFRef):Bool;
	function addAnnot(annotRef:PDFRef):Void;
	function removeAnnot(annotRef:PDFRef):Void;
	function setFontDictionary(name:PDFName, fontDictRef:PDFRef):Void;
	function newFontDictionaryKey(tag:String):PDFName;
	function newFontDictionary(tag:String, fontDictRef:PDFRef):PDFName;
	function setXObject(name:PDFName, xObjectRef:PDFRef):Void;
	function newXObjectKey(tag:String):PDFName;
	function newXObject(tag:String, xObjectRef:PDFRef):PDFName;
	function setExtGState(name:PDFName, extGStateRef:ts.AnyOf2<PDFRef, PDFDict>):Void;
	function newExtGStateKey(tag:String):PDFName;
	function newExtGState(tag:String, extGStateRef:ts.AnyOf2<PDFRef, PDFDict>):PDFName;
	function ascend(visitor:(node:pdf_lib.cjs.core.structures.pdfpagetree.TreeNode) -> Dynamic):Void;
	function normalize():Void;
	function normalizedEntries():{
		var Annots : PDFArray;
		var Resources : PDFDict;
		var Contents : Null<PDFArray>;
		var Font : PDFDict;
		var XObject : PDFDict;
		var ExtGState : PDFDict;
	};
	static var prototype : PDFPageLeaf;
	static final InheritableEntries : Array<String>;
	static dynamic function withContextAndParent(context:PDFContext, parent:PDFRef):PDFPageLeaf;
	static dynamic function fromMapWithContext(map:pdf_lib.cjs.core.objects.pdfdict.DictMap, context:PDFContext, ?autoNormalizeCTM:Bool):PDFPageLeaf;
}