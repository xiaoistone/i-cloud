$(function(){
    airBalloon('div.air-balloon');
    bindEvent();
});
function bindEvent() {
    $('.submit').bind('click', function () {
        var user_id = $('#value_1').val();
        var user_pwd = $('#value_2').val();
        var url = "../../api/SystemApi/Login";
        $.post(url, { user_id: user_id, user_pwd: user_pwd }, 'json')
        .success(function (ret) {
            if (ret.success) {
                window.location.href ="/Home/Index";
            } else {
                if ($.trim(ret.message) != '') {
                    alert(ret.message);
                } else {
                    alert("登陆失败!");
                }
            }
        });

    })
}
/*
@function 热气球移动
*/
function airBalloon(balloon){
	var viewSize = [] , viewWidth = 0 , viewHeight = 0 ;
	resize();	
	$(balloon).each(function(){
		$(this).css({top: rand(40, viewHeight * 0.5 ) , left : rand( 10 , viewWidth - $(this).width() ) });
		fly(this);
	});	
	$(window).resize(function(){
		resize()
		$(balloon).each(function(){
			$(this).stop().animate({top: rand(40, viewHeight * 0.5 ) , left : rand( 10 , viewWidth - $(this).width() ) } ,1000 , function(){
				fly(this);
			});
		});
	});
	function resize(){
		viewSize = getViewSize();
		viewWidth = $(document).width() ;
		viewHeight = viewSize[1] ;
	}
	function fly(obj){
		var $obj = $(obj);
		var currentTop = parseInt($obj.css('top'));
		var currentLeft = parseInt($obj.css('left') );
		var targetLeft = rand( 10 , viewWidth - $obj.width() );
		var targetTop = rand(40, viewHeight /2 );
		/*求两点之间的距离*/
		var removing = Math.sqrt( Math.pow( targetLeft - currentLeft , 2 )  + Math.pow( targetTop - currentTop , 2 ) );		
		/*每秒移动24px ，计算所需要的时间，从而保持 气球的速度恒定*/
		var moveTime = removing / 24;		
		$obj.animate({ top : targetTop , left : targetLeft} , moveTime * 1000 , function(){
			setTimeout(function(){
				fly(obj);
			}, rand(1000, 3000) );
		});	
	}
};