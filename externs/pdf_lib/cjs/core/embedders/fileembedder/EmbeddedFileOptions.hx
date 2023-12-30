package pdf_lib.cjs.core.embedders.fileembedder;

typedef EmbeddedFileOptions = {
	@:optional
	var mimeType : String;
	@:optional
	var description : String;
	@:optional
	var creationDate : js.lib.Date;
	@:optional
	var modificationDate : js.lib.Date;
	@:optional
	var afRelationship : pdf_lib.AFRelationship;
};