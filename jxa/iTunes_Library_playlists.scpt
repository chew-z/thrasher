JsOsaDAS1.001.00bplist00�Vscript_function run(argv) { 
	let app = Application('iTunes');
	let lib = app.playlists.byName('Library');
	let pl = app.sources['Library'].userPlaylists;
	// return pl.properties()

	/* var tracks = [].concat.apply([], pl.map(p => p.tracks.map(t => ({ id:t.id(), name:t.name() })))
	) */
	
	
	let tracks = pl.slice(20);

		/* let p = pl[i];
		tracks = tracks.concat(p.tracks().
		
		map(function (t) { return {id: t.id(), name: t.name(), collection: p.name(), artist: t.artist()}; 
		}
		)
		); */

	
	return JSON.stringify(tracks);

}                              ' jscr  ��ޭ