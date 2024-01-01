package;

import kiss.Prelude;

class Main {
    static function main() {
        var args:RandomizerArgs = {sourceLinksFolder:Sys.getCwd()};
		var r = null;
        var argHandler = hxargs.Args.generate([
			@doc("Preserve the order of pages within each PDF")
			["-s", "--sequential-within-pdf"] => function() args.sequentialWithinPdf = true,
			
			@doc("Take pages from source pdfs in chunks of <chunkPages>. When 0 or less, take whole pdfs")
			["-c", "--chunk-pages"] => function(chunkPages:Int) args.chunkPages = chunkPages,
			
			@doc("Maximum page count of output pdf")
			["-m", "--max-pages"] => function(maxPages:Int) args.outputPages = maxPages,

			@doc("Weight pdf choices by remaining page count")
			["-w", "--weight-by-pages"] => function() args.equalWeightPdfs = false,
			
			@doc("Folder of pdfs to randomize")
			_ => function(folder:String) r = Randomizer.fromFolder(folder, args)
		]);
				
		if (Sys.args().length == 0) {
			Sys.println("pdf-salad");
			Sys.println(argHandler.getDoc());
			Sys.exit(0);
		}
		
		argHandler.parse(Sys.args());

		r.run((pdf) -> Sys.println('Finished generating $pdf'));
    }
}
