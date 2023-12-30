package pdf_lib.cjs.types.fontkit;

typedef SubsetStream = {
	dynamic function on(eventType:String, callback:(data:js.lib.Uint8Array) -> Dynamic):SubsetStream;
};