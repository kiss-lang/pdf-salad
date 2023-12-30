package pdf_lib;

/**
	A PDF entity, like images or fonts, which needs to be embedded into the
	document before saving.
**/
typedef Embeddable = {
	dynamic function embed():js.lib.Promise<ts.Undefined>;
};