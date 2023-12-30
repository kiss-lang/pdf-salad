package pdf_lib;

/**
	Represents a signature field of a [[PDFForm]].
	
	[[PDFSignature]] fields are digital signatures. `pdf-lib` does not
	currently provide any specialized APIs for creating digital signatures or
	reading the contents of existing digital signatures.
**/
@:jsRequire("pdf-lib", "PDFSignature") extern class PDFSignature extends PDFField {
	private function new();
	static var prototype : PDFSignature;
	/**
		> **NOTE:** You probably don't want to call this method directly. Instead,
		> consider using the [[PDFForm.getSignature]] method, which will create an
		> instance of [[PDFSignature]] for you.
		
		Create an instance of [[PDFSignature]] from an existing acroSignature and
		ref
	**/
	static dynamic function of(acroSignature:PDFAcroSignature, ref:PDFRef, doc:PDFDocument):PDFSignature;
}