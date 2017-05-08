JsOsaDAS1.001.00bplist00�Vscript_[function run(argv) { 
	var itunes = Application('iTunes'); 
	var playerState = itunes.playerState();
	try { 	
		var track = itunes.currentTrack();
		var info = track.name() + " - " + track.artist() + " - " + track.album();
		var app = Application.currentApplication();
		app.includeStandardAdditions = true;
		app.displayNotification(info, { withTitle: 'Now Playing' });
		return JSON.stringify({state: playerState, track: {name: track.name(), album: track.album(), artist: track.artist()}});} 
	catch(e) { 
		return JSON.stringify({state: playerState, track: {name: '', album: '', artist: ''} }) 
	} 
}                              q jscr  ��ޭ