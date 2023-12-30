package pdf_lib.cjs.types.fontkit;

/**
	The features is an object mapping OpenType features to a boolean
	enabling or disabling each. If this is an AAT font,
	the OpenType feature tags are mapped to AAT features.
**/
typedef TypeFeatures = {
	@:optional
	var aalt : Bool;
	@:optional
	var abvf : Bool;
	@:optional
	var abvm : Bool;
	@:optional
	var abvs : Bool;
	@:optional
	var afrc : Bool;
	@:optional
	var akhn : Bool;
	@:optional
	var blwf : Bool;
	@:optional
	var blwm : Bool;
	@:optional
	var blws : Bool;
	@:optional
	var calt : Bool;
	@:optional
	@:native("case")
	var case_ : Bool;
	@:optional
	var ccmp : Bool;
	@:optional
	var cfar : Bool;
	@:optional
	var cjct : Bool;
	@:optional
	var clig : Bool;
	@:optional
	var cpct : Bool;
	@:optional
	var cpsp : Bool;
	@:optional
	var cswh : Bool;
	@:optional
	var curs : Bool;
	@:optional
	var cv01 : Bool;
	@:optional
	var cv02 : Bool;
	@:optional
	var cv03 : Bool;
	@:optional
	var cv04 : Bool;
	@:optional
	var cv05 : Bool;
	@:optional
	var cv06 : Bool;
	@:optional
	var cv07 : Bool;
	@:optional
	var cv08 : Bool;
	@:optional
	var cv09 : Bool;
	@:optional
	var cv10 : Bool;
	@:optional
	var cv11 : Bool;
	@:optional
	var cv22 : Bool;
	@:optional
	var cv23 : Bool;
	@:optional
	var cv24 : Bool;
	@:optional
	var cv25 : Bool;
	@:optional
	var cv26 : Bool;
	@:optional
	var cv27 : Bool;
	@:optional
	var cv28 : Bool;
	@:optional
	var cv29 : Bool;
	@:optional
	var cv30 : Bool;
	@:optional
	var cv31 : Bool;
	@:optional
	var cv32 : Bool;
	@:optional
	var cv33 : Bool;
	@:optional
	var cv34 : Bool;
	@:optional
	var cv35 : Bool;
	@:optional
	var cv36 : Bool;
	@:optional
	var cv37 : Bool;
	@:optional
	var cv38 : Bool;
	@:optional
	var cv39 : Bool;
	@:optional
	var cv40 : Bool;
	@:optional
	var cv41 : Bool;
	@:optional
	var cv42 : Bool;
	@:optional
	var cv43 : Bool;
	@:optional
	var cv44 : Bool;
	@:optional
	var cv45 : Bool;
	@:optional
	var cv46 : Bool;
	@:optional
	var cv47 : Bool;
	@:optional
	var cv48 : Bool;
	@:optional
	var cv49 : Bool;
	@:optional
	var cv50 : Bool;
	@:optional
	var cv51 : Bool;
	@:optional
	var cv52 : Bool;
	@:optional
	var cv53 : Bool;
	@:optional
	var cv54 : Bool;
	@:optional
	var cv55 : Bool;
	@:optional
	var cv56 : Bool;
	@:optional
	var cv57 : Bool;
	@:optional
	var cv58 : Bool;
	@:optional
	var cv59 : Bool;
	@:optional
	var cv60 : Bool;
	@:optional
	var cv61 : Bool;
	@:optional
	var cv62 : Bool;
	@:optional
	var cv63 : Bool;
	@:optional
	var cv64 : Bool;
	@:optional
	var cv65 : Bool;
	@:optional
	var cv66 : Bool;
	@:optional
	var cv67 : Bool;
	@:optional
	var cv68 : Bool;
	@:optional
	var cv69 : Bool;
	@:optional
	var cv70 : Bool;
	@:optional
	var cv71 : Bool;
	@:optional
	var cv72 : Bool;
	@:optional
	var cv73 : Bool;
	@:optional
	var cv74 : Bool;
	@:optional
	var cv75 : Bool;
	@:optional
	var cv76 : Bool;
	@:optional
	var cv77 : Bool;
	@:optional
	var cv78 : Bool;
	@:optional
	var cv79 : Bool;
	@:optional
	var cv80 : Bool;
	@:optional
	var cv81 : Bool;
	@:optional
	var cv82 : Bool;
	@:optional
	var cv83 : Bool;
	@:optional
	var cv84 : Bool;
	@:optional
	var cv85 : Bool;
	@:optional
	var cv86 : Bool;
	@:optional
	var cv87 : Bool;
	@:optional
	var cv88 : Bool;
	@:optional
	var cv89 : Bool;
	@:optional
	var cv90 : Bool;
	@:optional
	var cv91 : Bool;
	@:optional
	var cv92 : Bool;
	@:optional
	var cv93 : Bool;
	@:optional
	var cv94 : Bool;
	@:optional
	var cv95 : Bool;
	@:optional
	var cv96 : Bool;
	@:optional
	var cv97 : Bool;
	@:optional
	var cv98 : Bool;
	@:optional
	var cv99 : Bool;
	@:optional
	var c2pc : Bool;
	@:optional
	var c2sc : Bool;
	@:optional
	var dist : Bool;
	@:optional
	var dlig : Bool;
	@:optional
	var dnom : Bool;
	@:optional
	var dtls : Bool;
	@:optional
	var expt : Bool;
	@:optional
	var falt : Bool;
	@:optional
	var fin2 : Bool;
	@:optional
	var fin3 : Bool;
	@:optional
	var fina : Bool;
	@:optional
	var flac : Bool;
	@:optional
	var frac : Bool;
	@:optional
	var fwid : Bool;
	@:optional
	var half : Bool;
	@:optional
	var haln : Bool;
	@:optional
	var halt : Bool;
	@:optional
	var hist : Bool;
	@:optional
	var hkna : Bool;
	@:optional
	var hlig : Bool;
	@:optional
	var hngl : Bool;
	@:optional
	var hojo : Bool;
	@:optional
	var hwid : Bool;
	@:optional
	var init : Bool;
	@:optional
	var isol : Bool;
	@:optional
	var ital : Bool;
	@:optional
	var jalt : Bool;
	@:optional
	var jp78 : Bool;
	@:optional
	var jp83 : Bool;
	@:optional
	var jp90 : Bool;
	@:optional
	var jp04 : Bool;
	@:optional
	var kern : Bool;
	@:optional
	var lfbd : Bool;
	@:optional
	var liga : Bool;
	@:optional
	var ljmo : Bool;
	@:optional
	var lnum : Bool;
	@:optional
	var locl : Bool;
	@:optional
	var ltra : Bool;
	@:optional
	var ltrm : Bool;
	@:optional
	var mark : Bool;
	@:optional
	var med2 : Bool;
	@:optional
	var medi : Bool;
	@:optional
	var mgrk : Bool;
	@:optional
	var mkmk : Bool;
	@:optional
	var mset : Bool;
	@:optional
	var nalt : Bool;
	@:optional
	var nlck : Bool;
	@:optional
	var nukt : Bool;
	@:optional
	var numr : Bool;
	@:optional
	var onum : Bool;
	@:optional
	var opbd : Bool;
	@:optional
	var ordn : Bool;
	@:optional
	var ornm : Bool;
	@:optional
	var palt : Bool;
	@:optional
	var pcap : Bool;
	@:optional
	var pkna : Bool;
	@:optional
	var pnum : Bool;
	@:optional
	var pref : Bool;
	@:optional
	var pres : Bool;
	@:optional
	var pstf : Bool;
	@:optional
	var psts : Bool;
	@:optional
	var pwid : Bool;
	@:optional
	var qwid : Bool;
	@:optional
	var rand : Bool;
	@:optional
	var rclt : Bool;
	@:optional
	var rkrf : Bool;
	@:optional
	var rlig : Bool;
	@:optional
	var rphf : Bool;
	@:optional
	var rtbd : Bool;
	@:optional
	var rtla : Bool;
	@:optional
	var rtlm : Bool;
	@:optional
	var ruby : Bool;
	@:optional
	var rvrn : Bool;
	@:optional
	var salt : Bool;
	@:optional
	var sinf : Bool;
	@:optional
	var size : Bool;
	@:optional
	var smcp : Bool;
	@:optional
	var smpl : Bool;
	@:optional
	var ss01 : Bool;
	@:optional
	var ss02 : Bool;
	@:optional
	var ss03 : Bool;
	@:optional
	var ss04 : Bool;
	@:optional
	var ss05 : Bool;
	@:optional
	var ss06 : Bool;
	@:optional
	var ss07 : Bool;
	@:optional
	var ss08 : Bool;
	@:optional
	var ss09 : Bool;
	@:optional
	var ss10 : Bool;
	@:optional
	var ss11 : Bool;
	@:optional
	var ss12 : Bool;
	@:optional
	var ss13 : Bool;
	@:optional
	var ss14 : Bool;
	@:optional
	var ss15 : Bool;
	@:optional
	var ss16 : Bool;
	@:optional
	var ss17 : Bool;
	@:optional
	var ss18 : Bool;
	@:optional
	var ss19 : Bool;
	@:optional
	var ss20 : Bool;
	@:optional
	var ssty : Bool;
	@:optional
	var stch : Bool;
	@:optional
	var subs : Bool;
	@:optional
	var sups : Bool;
	@:optional
	var swsh : Bool;
	@:optional
	var titl : Bool;
	@:optional
	var tjmo : Bool;
	@:optional
	var tnam : Bool;
	@:optional
	var tnum : Bool;
	@:optional
	var trad : Bool;
	@:optional
	var twid : Bool;
	@:optional
	var unic : Bool;
	@:optional
	var valt : Bool;
	@:optional
	var vatu : Bool;
	@:optional
	var vert : Bool;
	@:optional
	var vhal : Bool;
	@:optional
	var vjmo : Bool;
	@:optional
	var vkna : Bool;
	@:optional
	var vkrn : Bool;
	@:optional
	var vpal : Bool;
	@:optional
	var vrt2 : Bool;
	@:optional
	var vrtr : Bool;
	@:optional
	var zero : Bool;
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