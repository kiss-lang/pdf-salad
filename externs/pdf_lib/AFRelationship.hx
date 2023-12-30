package pdf_lib;

/**
	From the PDF-A3 specification, section **3.1. Requirements - General**.
	See:
	* https://www.pdfa.org/wp-content/uploads/2018/10/PDF20_AN002-AF.pdf
**/
@:jsRequire("pdf-lib", "AFRelationship") @:enum extern abstract AFRelationship(String) from String to String {
	var Source;
	var Data;
	var Alternative;
	var Supplement;
	var EncryptedPayload;
	var FormData;
	var Schema;
	var Unspecified;
}