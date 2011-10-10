
/*** Custom animation for Brosseau's menu elements ***/
$(function(){

	
		$("#link_audio_menu").mouseenter(function(){
					$("#menu_blue").animate({"top": "-149px"}, 400, 'easeInOutExpo');
					$("#menu_green").animate({"top":"0px"},400, 'easeInOutExpo');
					$("#menu_violet").animate({"top":"0px"},400, 'easeInOutExpo');
						$('#bg1').mouseover();
					$("#txt_video").fadeOut(100);
					$("#txt_automation").fadeOut(100);
					$("#txt_audio").delay(300).fadeIn();
					$("#central_menu_title_audio").animate({"top": "-40px"}, 200);
					$("#central_menu_title_automation").animate({"top": "-65px"}, 200);
					$("#central_menu_title_video").animate({"top": "-65px"}, 500);
					}
				);
	
	
		$("#link_video_menu").mouseenter(function(){
					$("#menu_green").animate({"top": "-149px"}, 400, 'easeInOutExpo');
					$("#menu_blue").animate({"top":"0px"}, 400, 'easeInOutExpo');
					$("#menu_violet").animate({"top":"0px"},400, 'easeInOutExpo');
						$('#bg2').mouseover();
					$("#txt_audio").fadeOut(100);
					$("#txt_automation").fadeOut(100);
					$("#txt_video").delay(300).fadeIn();
					$("#central_menu_title_audio").animate({"top": "-65px"}, 200);
					$("#central_menu_title_automation").animate({"top": "-65px"}, 200);
					$("#central_menu_title_video").animate({"top": "-40px"}, 500);
					
					}
				);
	
						
		$("#link_automation_menu").mouseenter(function(){
					$("#menu_violet").animate({"top": "-149px"}, 400, 'easeInOutExpo');
					$("#menu_green").animate({"top":"0px"},400, 'easeInOutExpo');
					$("#menu_blue").animate({"top":"0px"},400, 'easeInOutExpo');
						$('#bg3').mouseover();
					$("#txt_video").fadeOut(100);
					$("#txt_audio").fadeOut(100);
					$("#txt_automation").delay(300).fadeIn();
					$("#central_menu_title_audio").animate({"top": "-65px"}, 200);
					$("#central_menu_title_automation").animate({"top": "-40px"}, 200);
					$("#central_menu_title_video").animate({"top": "-65px"}, 500);
					}
				);


});




 $(function() {
        /* position of the <li> that is currently shown */
        var current = 0;
		
		var loaded  = 0;
		for(var i = 1; i <4; ++i)
			$('<img />').load(function(){
				++loaded;
				if(loaded == 3){
					$('#bg1,#bg2,#bg3').mouseover(function(e){
						
						var $this = $(this);
						/* if we hover the current one, then don't do anything */
						if($this.parent().index() == current)
							return;

						/* item is bg1 or bg2 or bg3, depending where we are hovering */
						var item = e.target.id;

						/*
						this is the sub menu overlay. Let's hide the current one
						if we hover the first <li> or if we come from the last one,
						then the overlay should move left -> right,
						otherwise right->left
						 */
						if(item == 'bg1' || current == 2)
							$('#menu .sub'+parseInt(current+1)).stop().animate({backgroundPosition:"(-321px 0)"},300,function(){
								$(this).find('p').hide();
							});
						else
							$('#menu .sub'+parseInt(current+1)).stop().animate({backgroundPosition:"(321px 0)"},300,function(){
								$(this).find('p').hide();
							});

						if(item == 'bg1' || current == 2){
							/* if we hover the first <li> or if we come from the last one, then the images should move left -> right */
							$('#menu > li').animate({backgroundPosition:"(-963px 0)"},0).removeClass('bg1 bg2 bg3').addClass(item);
							move(1,item);
						}
						else{
							/* if we hover the first <li> or if we come from the last one, then the images should move right -> left */
							$('#menu > li').animate({backgroundPosition:"(963px 0)"},0).removeClass('bg1 bg2 bg3').addClass(item);
							move(0,item);
						}

						/*
						We want that if we go from the first one to the last one (without hovering the middle one),
						or from the last one to the first one, the middle menu's overlay should also slide, either
						from left to right or right to left.
						 */
						if(current == 2 && item == 'bg1'){
							$('#menu .sub'+parseInt(current)).stop().animate({backgroundPosition:"(-321px 0)"},300);
						}
						if(current == 0 && item == 'bg3'){
							$('#menu .sub'+parseInt(current+2)).stop().animate({backgroundPosition:"(321px 0)"},300);
						}

						
						/* change the current element */
						current = $this.parent().index();
						
						/* let's make the overlay of the current one appear */
					   
						$('#menu .sub'+parseInt(current+1)).stop().animate({backgroundPosition:"(0 0)"},300,function(){
							$(this).find('p').fadeIn();
						});
					});
				}	
			}).attr('src', 'images/'+i+'.jpg');
		
					
        /*
        dir:1 - move left->right
        dir:0 - move right->left
         */
        function move(dir,item){
            if(dir){
                $('#bg1').parent().stop().animate({backgroundPosition:"(0 0)"},200);
                $('#bg2').parent().stop().animate({backgroundPosition:"(-321px 0)"},300);
                $('#bg3').parent().stop().animate({backgroundPosition:"(-642px 0)"},400,function(){
                    $('#menuWrapper').removeClass('bg1 bg2 bg3').addClass(item);
                });
            }
            else{
                $('#bg1').parent().stop().animate({backgroundPosition:"(0 0)"},400,function(){
                    $('#menuWrapper').removeClass('bg1 bg2 bg3').addClass(item);
                });
                $('#bg2').parent().stop().animate({backgroundPosition:"(-321px 0)"},300);
                $('#bg3').parent().stop().animate({backgroundPosition:"(-642px 0)"},200);
            }
        }
    });