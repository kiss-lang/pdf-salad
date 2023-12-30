package pdf_lib;

/**
	PDFObjectCopier copies PDFObjects from a src context to a dest context.
	The primary use case for this is to copy pages between PDFs.
	
	_Copying_ an object with a PDFObjectCopier is different from _cloning_ an
	object with its [[PDFObject.clone]] method:
	
	```
	   const src: PDFContext = ...
	   const dest: PDFContext = ...
	   const originalObject: PDFObject = ...
	   const copiedObject = PDFObjectCopier.for(src, dest).copy(originalObject);
	   const clonedObject = originalObject.clone();
	```
	
	Copying an object is equivalent to cloning it and then copying over any other
	objects that it references. Note that only dictionaries, arrays, and streams
	(or structures build from them) can contain indirect references to other
	objects. Copying a PDFObject that is not a dictionary, array, or stream is
	supported, but is equivalent to cloning it.
**/
@:jsRequire("pdf-lib", "PDFObjectCopier") extern class PDFObjectCopier {
	private function new();
	private final src : Dynamic;
	private final dest : Dynamic;
	private final traversedObjects : Dynamic;
	dynamic function copy<T>(object:T):T;
	private var copyPDFPage : Dynamic;
	private var copyPDFDict : Dynamic;
	private var copyPDFArray : Dynamic;
	private var copyPDFStream : Dynamic;
	private var copyPDFIndirectObject : Dynamic;
	static var prototype : PDFObjectCopier;
	@:native("for")
	static dynamic function for_(src:PDFContext, dest:PDFContext):PDFObjectCopier;
}