package;

typedef RandomizerArgs = {
    // When true, pages within individual source pdfs will appear sequentially within the randomized output pdf
    // Default false.
    ?sequentialWithinPdf:Bool,
    // When pulling from a pdf, this number of sequential pages will be pulled at a time.
    // Default 1. -1 means pull the whole pdf
    ?chunkPages:Int,
    // How many pages to include in the output pdf. When ommitted, every page from every input pdf should make its way into the output.
    ?outputPages:Int,
    // When true, each pdf is equally likely to be the next one chosen for the output. When false, the number of pages in a PDF functions as its "weight" in randomization.
    // Default true
    ?equalWeightPdfs:Bool,
    // When an absolute folder path is provided, annotate each page with a link to its source pdf, which must be in this folder.
    ?sourceLinksFolder:String
};
