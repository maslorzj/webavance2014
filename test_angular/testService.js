myApp.service('TestService', function(){
	var BDs = [];
	BDs.push({isbn:1234,editor:'truc',title:"John",authorName:'Bon',authorFirstame:'Jean',illusName:'Bono',illusFirstname:'Jean',language:'French',publishDate:'On verra après'});
	BDs.push({isbn:1235,editor:'machin',title:"John",authorName:'Bon',authorFirstame:'Jean',illusName:'Bono',illusFirstname:'Jean',language:'French',publishDate:'On verra après'});
	BDs.push({isbn:1236,editor:'chouette',title:"Jack",authorName:'Bon',authorFirstame:'Jean',illusName:'Bono',illusFirstname:'Jean',language:'French',publishDate:'On verra après'});
	BDs.push({isbn:1237,editor:'choses',title:"Jack",authorName:'Bon',authorFirstame:'Jean',illusName:'Bono',illusFirstname:'Jean',language:'French',publishDate:'On verra après'});

	this.BDs = BDs;
});