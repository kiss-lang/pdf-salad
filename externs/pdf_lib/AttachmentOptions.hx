package pdf_lib;

typedef AttachmentOptions = {
	@:optional
	var mimeType : String;
	@:optional
	var description : String;
	@:optional
	var creationDate : js.lib.Date;
	@:optional
	var modificationDate : js.lib.Date;
	@:optional
	var afRelationship : AFRelationship;
};