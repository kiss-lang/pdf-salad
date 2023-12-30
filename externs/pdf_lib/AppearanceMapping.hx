package pdf_lib;

/**
	***************** Appearance Provider Utility Types ***********************
**/
typedef AppearanceMapping<T> = {
	var normal : T;
	@:optional
	var rollover : T;
	@:optional
	var down : T;
};