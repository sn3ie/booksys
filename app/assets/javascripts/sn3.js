$(document).ready(function(){
	$('#typeBox').hide();
	$('#Squtype').on('click', function(){
		console.log("click");
		$('#typeBox').slideToggle();
		// $('#typeBox').toggle();
	});
});

/*
html が読み込まれたらfunctionの処理を実行する
$(document).ready(function(){
	処理
});
*/

/*　on はイベントを設定するjQueryのメソッド　*/

/*
$で取得した要素.on('イベント名', function(){
	イベントが発生した時の処理
})
*/
