JsOsaDAS1.001.00bplist00�Vscript_Gfunction run(argv) { 
	let app = Application('iTunes'); 
	let lib = app.playlists.byName('Library'); 
	let tracks = lib.tracks(); //.filter(function (t) { return t.class() === 'fileTrack';})
	return JSON.stringify(tracks.map(function (t) { return {id: t.id(), name: t.name(), collection: t.album(), artist: t.artist()}; })); 
}                              ] jscr  ��ޭ