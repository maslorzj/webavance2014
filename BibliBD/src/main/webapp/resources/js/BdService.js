myApp.service('BdService', function(){
	// this.bds = bibliBd;

	var bds = [];
	for (var isbn = 0; isbn < 1000; isbn++) {
		bds.push({
			isbn:isbn,
			editor:"editeur" + (isbn%4),
			title:"titre" + isbn,
			authorName:"authorName" + (isbn%10),
			authorFirstame:"authorFirstName" + (isbn%10),
			illusName:"illusName" + (isbn%10),
			illusFirstname:"illusFirstName" + (isbn%10),
			language:'French',
			publishDate:'On verra après'}
		);
	};
	
	this.bds = bds;
});