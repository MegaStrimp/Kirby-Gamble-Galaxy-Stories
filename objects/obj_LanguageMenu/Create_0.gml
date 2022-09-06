///@description Initialize Variables

//Other Variables

hudOffset = -250;
selection = global.language;

#region Languages

languageArray = [
	    "english",
        "turkish",
        "german",
        "italian",
        "french",
        "polish",
        "chinese",
        "spanish",
        "japanese",
        "portuguese",
        "norwegian",
        "arabic"
]


var i = 0;
for (var i = 0; i < languages.length; i++)
{
	languageIndex[i] = scr_Localization_Main(stringAttributes.language,stringAttributes.title,i,0);
	languageVal[i] = i;
}

languageArrayLength = languages.length;

#endregion
