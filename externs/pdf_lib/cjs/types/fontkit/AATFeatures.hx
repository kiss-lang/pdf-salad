package pdf_lib.cjs.types.fontkit;

/**
	A map of Apple Advanced Typography (AAT) as decribed by Apple’s TrueType
	Reference manual:
	https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6AATIntro.html
**/
typedef AATFeatures = {
	@:optional
	var acnt : Bool;
	@:optional
	var ankr : Bool;
	@:optional
	var avar : Bool;
	@:optional
	var bdat : Bool;
	@:optional
	var bhed : Bool;
	@:optional
	var bloc : Bool;
	@:optional
	var bsln : Bool;
	@:optional
	var cmap : Bool;
	@:optional
	var cvar : Bool;
	@:optional
	var cvt : Bool;
	@:optional
	var EBSC : Bool;
	@:optional
	var fdsc : Bool;
	@:optional
	var feat : Bool;
	@:optional
	var fmtx : Bool;
	@:optional
	var fond : Bool;
	@:optional
	var fpgm : Bool;
	@:optional
	var fvar : Bool;
	@:optional
	var gasp : Bool;
	@:optional
	var gcid : Bool;
	@:optional
	var glyf : Bool;
	@:optional
	var gvar : Bool;
	@:optional
	var hdmx : Bool;
	@:optional
	var head : Bool;
	@:optional
	var hhea : Bool;
	@:optional
	var hmtx : Bool;
	@:optional
	var just : Bool;
	@:optional
	var kern : Bool;
	@:optional
	var kerx : Bool;
	@:optional
	var lcar : Bool;
	@:optional
	var loca : Bool;
	@:optional
	var ltag : Bool;
	@:optional
	var maxp : Bool;
	@:optional
	var meta : Bool;
	@:optional
	var mort : Bool;
	@:optional
	var morx : Bool;
	@:optional
	var name : Bool;
	@:optional
	var opbd : Bool;
	@:optional
	@:native("OS/2")
	var OS_2 : Bool;
	@:optional
	var post : Bool;
	@:optional
	var prep : Bool;
	@:optional
	var prop : Bool;
	@:optional
	var sbix : Bool;
	@:optional
	var trak : Bool;
	@:optional
	var vhea : Bool;
	@:optional
	var vmtx : Bool;
	@:optional
	var xref : Bool;
	@:optional
	var Zapf : Bool;
};