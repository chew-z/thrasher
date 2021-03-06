JsOsaDAS1.001.00bplist00�Vscript_ObjC.import('stdlib')
// @flow
// @flow-NotIssue
function run(argv) { 
    'use strict';
    const itunes = Application('iTunes');
    const library = itunes.sources.whose({kind: "klib"})[0];
    const verbose = false;

    var args = $.NSProcessInfo.processInfo.arguments                // NSArray
    var argv = []
    var argc = args.count
    for (var i = 4; i < argc; i++) {
        // skip 3-word run command at top and this file's name
        // console.log($(args.objectAtIndex(i)).js)       // print each argument
        argv.push(ObjC.unwrap(args.objectAtIndex(i)))       // collect arguments
    }
    if (verbose) { console.log(argv);     }                              // print arguments
    try { 
        let playlists
        if ( argv[0] == 'Music') {
            playlists = library.subscriptionPlaylists().filter(p => { return p.duration() > 0 ; });
        } else { 
            playlists = library.userPlaylists().filter(p => { return p.duration() > 0 ; });
        }
        if (verbose) {
            playlists.forEach(p => { console.log( p.class(), p.name() )});
        }
        function flatten(arr) { return Array.prototype.concat.apply([], arr); }
        let pl
        if ( argv[1] == 'Offline') {
            pl = flatten(playlists.map( p => {
                return p.fileTracks().map( t => {
                    if (verbose) { console.log(t.id(), t.name(), p.name(), t.artist()); }
                    return {id: t.id(), name: t.name(), collection: p.name(), artist: t.artist()}
                }) }))
        } else { 
            pl = flatten(playlists.map( p => {
                return p.tracks().map( t => {
                    if (verbose) { console.log(t.id(), t.name(), p.name(), t.artist()); }
                    return {id: t.id(), name: t.name(), collection: p.name(), artist: t.artist()}
                }) }))
        }
        return JSON.stringify(pl)
        if (pl.length > 0) { return JSON.stringify(pl); } else { $.exit(1) }
    } catch(e) {
        console.log(e);
        $.exit(11)
    }

}
                               jscr  ��ޭ