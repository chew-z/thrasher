JsOsaDAS1.001.00bplist00�Vscript_�function run(argv) { 
	let itunes = Application('iTunes');
	myList = itunes.playlists()
	for (var i in myList) {
    	if (myList[i].class() == 'folderPlaylist') { 

    	} else if (myList[i].class() == 'userPlaylist') {

    	}
	}
}                            �jscr  ��ޭ