package pdf_lib.standard_fonts.lib;

@:jsRequire("@pdf-lib/standard-fonts/lib/Encoding") @valueModuleOnly extern class Encoding {
	static final Encodings : {
		var Symbol : pdf_lib.standard_fonts.Encoding;
		var ZapfDingbats : pdf_lib.standard_fonts.Encoding;
		var WinAnsi : pdf_lib.standard_fonts.Encoding;
	};
}