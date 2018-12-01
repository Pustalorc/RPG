    function addAscii(asciiName, width, height, asciiArray) {
        asciiMap[asciiName] = asciiArray;
        asciiSizeMap[asciiName] = new Pos(width, height);
    }
    Database.addAscii = addAscii;
    function addText(key, text) {
        textMap[key] = text;
    }
    Database.addText = addText;
    function isTranslated() {
        if (Saving.loadString("gameLanguage") != "en")
            return true;
        return false;
    }
Database.addAscii("enemies/minion", 208, 88, [
	"  .-------.",
	" /         \",
	"/   O   O   \",
	"|			 |",
	"|	  ___	 |",
	"'-._______.-'",
]);
