myApp.service('TestService', function(){
	var BDs = [];
	BDs.push({isbn:1234,editor:'editeur1',title:"titre1",authorName:'name1',authorFirstame:'firstname1',illusName:'ilname1',illusFirstname:'ilfirstname1',language:'French',publishDate:'On verra après'});
	BDs.push({isbn:1235,editor:'editeur1',title:"titre2",authorName:'name1',authorFirstame:'firstname2',illusName:'ilname2',illusFirstname:'ilfirstname2',language:'French',publishDate:'On verra après'});
	BDs.push({isbn:1236,editor:'editeur1',title:"titre3",authorName:'name3',authorFirstame:'firstname3',illusName:'ilname3',illusFirstname:'ilfirstname3',language:'French',publishDate:'On verra après'});
	BDs.push({isbn:1237,editor:'editeur4',title:"titre4",authorName:'name4',authorFirstame:'firstname4',illusName:'ilname4',illusFirstname:'ilfirstname4',language:'French',publishDate:'On verra après'});

	this.BDs = BDs;
});