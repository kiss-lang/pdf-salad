package pdf_lib;

@:jsRequire("pdf-lib", "NonFullScreenPageMode") @:enum extern abstract NonFullScreenPageMode(String) from String to String {
	/**
		After exiting FullScreen mode, neither the document outline nor thumbnail
		images should be visible.
	**/
	var UseNone;
	/**
		After exiting FullScreen mode, the document outline should be visible.
	**/
	var UseOutlines;
	/**
		After exiting FullScreen mode, thumbnail images should be visible.
	**/
	var UseThumbs;
	/**
		After exiting FullScreen mode, the optional content group panel should be
		visible.
	**/
	var UseOC;
}