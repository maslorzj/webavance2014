myApp.service('BibliBdService', function(){
	/*this.bds = bds;*/

	var bds = [];
	for (var isbn = 0; isbn < 20; isbn++) {
		bds.push({
			id:isbn,
			editor:"editeur" + (isbn%4),
			title:"titre" + isbn,
			authorName:"authorName" + (isbn%10),
			authorFirstame:"authorFirstName" + (isbn%10),
			illusName:"illusName" + (isbn%10),
			illusFirstname:"illusFirstName" + (isbn%10),
			language:'French',
			publishDate:'On verra après',
			couvPath:"../../resources/img/couv/default.png"}
		);
	};
	
	this.bds = bds;
	console.log(this.bds);
});