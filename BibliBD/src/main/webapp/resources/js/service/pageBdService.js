myApp.service('PageBdService', function(){
	//this.bd = bd;
	this.bd = {
			id:1,
			editor:"editeur",
			title:"titre",
			authorName:"authorName",
			authorFirstame:"authorFirstName",
			illusName:"illusName",
			illusFirstname:"illusFirstName",
			colorName:"colorName",
			colorFirstname:"colorFirstname",
			language:'French',
			publishDate:'On verra après',
			couvPath:"../../resources/img/couv/default.png",
			serie:"La mère de ta soeur"
	};
	console.log(this.bd);
});