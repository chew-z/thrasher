JsOsaDAS1.001.00bplist00�Vscript_ function run(argv) {
	// play playlist starting from track
	var app = Application('iTunes'); 
	var pl = app.playlists.byName('Piano Bar'); 
	// return pl.properties()
	var tr = pl.tracks.byName('Nutty');
	pl.play()
	app.stop()
	tr.play()
	// return tr.
	
}                              jscr  ��ޭ