function row_slide(num){
/* 用于点击小图展示大图 */
	var the_num=parseInt(num);
	switch(the_num){
		case 1:{
			$("#left_row").css("margin-top","30px");
			break;
		}
		case 2:{
			$("#left_row").css("margin-top","160px");
			break;
		}
		case 3:{
			$("#left_row").css("margin-top","300px");
			break;
		}
	}
}
function m_pic_slide(the_num){
//用于图片轮播
	var num=parseInt(the_num);
	row_slide(num);
	$(".pic_menu>ul>li").eq(num-1).click();
}
function s_pic_slide(){
	var pic_num=$(".slide_pic_list .list1>li").length;
	if(pic_num>=6){
		var limit_left=eval(-160*pic_num-12*(pic_num));
		var the_left=parseInt($(".slide_pic_list>.action_item").eq(0).css("margin-left"));
		if(the_left<=limit_left){
			$(".slide_pic_list>.action_item").eq(0).css("margin-left","0px");
		}else{
			var the_left=the_left-1;
			var left=the_left+"px"
			$(".slide_pic_list>.action_item").eq(0).css("margin-left",left);
		}
		window.s_timer=setTimeout(s_pic_slide,30);
	}
	else{return false;}
}

$(function(){
//点击小图，显示大图
	$(".pic_menu li").on("click",function(){
		var the_src=$(this).find("img").attr("target_src");
		$("#show").attr("src",the_src);
		var num=parseInt($(this).find("img").attr("js_num"));
    var link_a=$(this).find(".pic_info_content").html();
    var link_href=$(this).find(".pic_info_content a").attr("href");
    $("#main_link").html(link_a);
    $("#main_pic_link").attr("href",link_href);
		row_slide(num);
	})
})
$(function(){
/* 用于鼠标放上后滑出图片信息 */
	$(".show_portal").hover(
		function(){
			var obj=$(this);
			window.slide_Timer_big=setTimeout(function(){
			/* 设定定时用于缓冲 */
				obj.find(".pic_info").animate({"margin-top":"-60px"},200);
			},200);			
		},
		function(){
			clearTimeout(slide_Timer_big);
			$(this).find(".pic_info").animate({"margin-top":"0px"},100);
		}
	)
	$(".pic_menu>ul>li").hover(
		function(){
			var obj=$(this)
			window.slide_Timer=setTimeout(function(){
				obj.find(".pic_info").animate({"margin-top":"-30px"},200);
			},200);
		},
		function(){
			clearTimeout(slide_Timer);
			$(this).find(".pic_info").animate({"margin-top":"0px"},100);
		}
	)
})

$(function(){
//用于上面的图片轮播
	var time=4000;
	window.m_pic_counter=1;
	window.m_pic_timer=setInterval(function(){
		m_pic_slide(m_pic_counter%3);
		window.m_pic_counter++;
	},time)
	$(".show_portal").eq(0).bind({
		"mouseover":function(){clearInterval(m_pic_timer)},
		"mouseout":function(){
			window.m_pic_timer=setInterval(function(){
				m_pic_slide(m_pic_counter%3);
				window.m_pic_counter++;
			},time)
		}
		})
})
$(function(){
	s_pic_slide();
	$(".pic_slide_box").bind({
		"mouseover":function(){
			clearTimeout(window.s_timer);
		},
		"mouseout":function(){s_pic_slide()}
	});
})
$(function(){
	var pic_num=$(".slide_pic_list .list1>li").length;
	if(pic_num>=6){
		$(".pic_slide_box .slide_row .left_row").bind({
			"mousedown":function(){					
				var limit_left=eval(-160*pic_num-12*(pic_num));		
				window.row_left=setInterval(function(){
					
					var the_left=parseInt($(".slide_pic_list>.action_item").eq(0).css("margin-left"));
					if(the_left<=limit_left){
						$(".slide_pic_list>.action_item").eq(0).css("margin-left","0px");
					}
					else{
						var the_left=the_left-1;
						var left=the_left+"px"
						$(".slide_pic_list>.action_item").eq(0).css("margin-left",left);	
					}
				},5)					
			},
			"mouseup":function(){
				clearInterval(row_left);
			}
		})
	}
		else return false;
})
$(function(){
	var pic_num=$(".slide_pic_list .list1>li").length;
	if(pic_num>=6){
		$(".pic_slide_box .slide_row .right_row").bind({
			"mousedown":function(){					
				var limit_left=eval(-160*pic_num-12*(pic_num));		
				window.row_right=setInterval(function(){				
					var the_left=parseInt($(".slide_pic_list>.action_item").eq(0).css("margin-left"));
					var left=the_left+"px"
					if(the_left>=0){
						$(".slide_pic_list>.action_item").eq(0).css("margin-left",limit_left+"px");
					}
					else{
						var the_left=the_left+1;						
						$(".slide_pic_list>.action_item").eq(0).css("margin-left",the_left+"px");	
					}
				},5)					
			},
			"mouseup":function(){
				clearInterval(row_right);
			}
		})
	}
		else return false;
})