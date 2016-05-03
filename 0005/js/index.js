 $(function(){
	//轮播器
	(function() {
	  	var cur_index = 0, //当前控制按钮
	      	img_list = $("#banner img"), //图片组
	      	img_list_length = img_list.length,
	      	control_list = $("#banner ul li"); //控制组
	    $('#banner strong').html($(img_list).first().attr('alt'));
	    $(img_list).fadeOut();
	    banner_to(cur_index);
	  	// 定时器每3秒自动变换一次banner
	  	var banner_timer = setInterval(function(){ 
		    if(cur_index < img_list_length -1){ 
		      	cur_index ++; 
		    }else{ 
		      	cur_index = 0;
		    }
		    //调用变换处理函数
		    banner_to(cur_index); 
		},3000);
	  	//调用控制按钮点击和鼠标悬浮事件处理函数
	  	addEvent(); 
	  	function addEvent(){
		    for(var i=0;i<img_list_length;i++){ 
			    //闭包防止作用域内活动对象的影响
			    (function(j){ 
			        //鼠标悬浮图片上方则清除定时器
			        $(control_list[j]).on("mouseover",function(){ 
			          	if(cur_index == j){
			          		clearTimeout(banner_timer);
			          	}else {
			          		clearTimeout(banner_timer);
					        banner_to(j);
					        cur_index = j;
					    }
			        });
			        //鼠标滑出图片则重置定时器
			        $(control_list[j]).on("mouseout",function(){ 
			          banner_timer = setInterval(function(){ 
			            if(cur_index < img_list_length -1){ 
			              cur_index ++;
			            }else{ 
			              cur_index = 0;
			            }
			            //调用变换处理函数
			            banner_to(cur_index); 
			          },3000);
			        });
			      })(i);
			    (function(j){ 
			        //鼠标悬浮图片上方则清除定时器
			        $(img_list[j]).on("mouseover",function(){ 
			          clearTimeout(banner_timer);
			          cur_index = j;
			        });
			        //鼠标滑出图片则重置定时器
			        $(img_list[j]).on("mouseout",function(){ 
			          banner_timer = setInterval(function(){ 
			            if(cur_index < img_list_length -1){ 
			              cur_index ++;
			            }else{ 
			              cur_index = 0;
			            }
			            //调用变换处理函数
			            banner_to(cur_index); 
			          },3000);
			        });
			      })(i);
		    }
	  	}
	  	//变换处理函数
		function banner_to(num){ 
		    $("#banner .img_on").fadeOut().removeClass("img_on"); //淡出当前banner
		    $(img_list[num]).fadeIn().addClass("img_on"); //淡入目标banner
		    $('#banner strong').html($($(img_list)[num]).attr('alt'));
		    //设置banner的控制按钮
		    $("#banner .control_on").removeClass("control_on");
		    $(control_list[num]).addClass("control_on");
		}
	})(); 

	// main左侧
	// ajax请求显示博文
	(function(){
		$.ajax({
			url : 'show_issue.php',
			type : 'POST',
			success : function (response) {
				var json = $.parseJSON(response);
				// 调用请求成功处理函数
				ajax_issue_success(json);
	 		}
	 	});
	 	// ajax请求显示博文，请求成功处理函数
 		function ajax_issue_success(json){
 			 	var html = '',
					arr = [],
					summary = [];
				// 遍历返回的数据前10篇文章
				for(var i=0; i<5; i++){
					html += create_issue(json[i]); //调用create_issue函数
				}
				// 将获取到的内容写入html对应位置				
				$('#main_left .content').append(html);
				// 遍历issue_content，并调用显示处理函数
				// 默认显示文章的前200字,点击"显示全部"按钮则当前文章显示全部
				$.each($('.issue_content'), function (index,value){
					var _this = this;
					show_issue_content(index,value,_this);
				});
				// 遍历issue_bottom，并调用处理函数
				$.each($('.issue_bottom'), function (index, value) {
					var _this = this;
					show_issue_bottom(index,value,_this);
				});
 				// 获取每篇文章标题、作者、发表日期、详细内容、评论数、收起按钮、分割线、评论容器
				function create_issue(opt) {
					return '<div class="content_wrap"><a class="issue_title">' + opt.title + '</a><span class="author">' 
						+ opt.user + ' 发表于 ' + opt.date + '</span><div class="issue_content">' + opt.content 
						+ '</div><div class="issue_bottom"><span class="comment" data-id="' 
						+ opt.id + '">' + opt.count 
						+ '条评论</span> <span class="up">收起</span></div><hr noshade="noshade" size="1" /><div class="comment_list"></div></div>';
				}
				// issue_content显示处理函数，默认显示文章的前200字,点击"显示全部"按钮则当前文章显示全部
				// 并隐藏"显示全部"按钮，显示"收起"按钮
				function show_issue_content(index, value,_this) {
					arr[index] = $(value).html();
					summary[index] = arr[index].substr(0, 200);
					// 如果第200位是小于号，或者倒数两位是小于号和斜线则替换为空
					if (summary[index].substring(199,200) == '<') {
						summary[index] = replacePos(summary[index], 200, '');
					}
					if (summary[index].substring(198,200) == '</') {
						summary[index] = replacePos(summary[index], 200, '');
						summary[index] = replacePos(summary[index], 199, '');
					}
					// 在文章200字后面加上显示全部按钮
					if (arr[index].length > 200) {
						summary[index] += '...<span class="down">显示全部</span>';
						$(value).html(summary[index]);
					}
					// 隐藏收起按钮
					$('.issue_bottom .up').hide();
					// 显示全部按钮点击则当前文章显示全部
					$(_this).on('click', '.down', function () {
						$('.issue_content').eq(index).html(arr[index]);
						$(this).hide();
						$('.issue_bottom .up').eq(index).show();
					});
				}
				// strObj的pos位置内容替换成replaceText
			 	function replacePos(strObj, pos, replaceText) {
					return strObj.substr(0, pos-1) + replaceText + strObj.substring(pos, strObj.length);
				}
				// issue_bottom显示处理函数，点击"收起"按钮则恢复默认显示200字，并隐藏"收起"按钮，显示"显示全部"按钮
				// 点击"评论"按钮则ajax请求评论信息，并显示
				function show_issue_bottom(index, value,_this){
					// 点击"收起"按钮则恢复默认显示200字，并隐藏"收起"按钮，显示"显示全部"按钮
					$(_this).on('click', '.up', function () {
						$('.issue_content').eq(index).html(summary[index]);
						$(this).hide();
						$('.issue_content .down').eq(index).show();
					});
					// 点击"评论"按钮检查user cookie判断是否已登录
					// 已登录则ajax请求评论数据
					// 未登录则提示error对话框，1秒后显示登陆对话框
					$(_this).on('click', '.comment', function () {
						// 保存点击的当前issue中评论element，在请求评论数据时向后台传递它的id来获取对应的评论数据
						var comment_this = this;
						if ($.cookie('user')) {
							// 已登录则先判断是否有评论数据，如果有则ajax请求获取评论数据
							if (!$('.comment_list').eq(index).has('form').length) {
								$.ajax({
									url : 'show_comment.php',
									type : 'POST',
									//向后台传递当前点击的评论元素的id来获取对应的评论数据，没有page值
									data : {
										titleid : $(comment_this).attr('data-id'), 
									},
									// 发送ajax请求之前显示"正在加载评论"
									beforeSend : function (jqXHR, settings) {
										$('.comment_list').eq(index).append('<dl class="comment_load"><dd>正在加载评论</dd></dl>');
									},
									success : function (response) {
										// 请求成功后隐藏"正在加载评论"
										$('.comment_list').eq(index).find('.comment_load').hide();
										var json_comment = $.parseJSON(response);
										// 调用请求成功处理函数，第一次请求没有向后台传递page值，则默认返回0到2条数据
										ajax_comment_success(json_comment);
									},
								});
							}
							if ($('.comment_list').eq(index).is(':hidden')) {
								$('.comment_list').eq(index).show();
								
							} else {
								$('.comment_list').eq(index).hide();
							}
						} else {
							// 未登录则提示error对话框，1秒后显示登陆对话框
							$('#error').dialog('open');
							setTimeout(function () {
								$('#error').dialog('close');
								$('#login').dialog('open');
							}, 1000);
						}
						function ajax_comment_success(json_comment){
							var count = 0;
							// 遍历返回的评论数据，获取信息并写入comment_list
							$.each(json_comment, function (index2, value) {
								// 并把返回数据数量传递给count
								count = value.count;
								$('.comment_list').eq(index).append(
									'<dl class="comment_content"><dt>' 
									+ value.user + '</dt><dd>' + value.comment 
									+ '</dd><dd class="date">' + value.date + '</dd></dl>'
								);
							});
							// comment_list后添加"加载更多评论"按钮
							$('.comment_list').eq(index).append('<dl><dd><span class="load_more">加载更多评论</span></dd></dl>');
							// 如果第一次返回评论数少于2条，即表示评论已全部显示
							// 则关闭"加载更多评论"按钮的点击事件，并隐藏
							var page = 2;
							if (count < page ) {
								$('.comment_list').eq(index).find('.load_more').off('click');
								$('.comment_list').eq(index).find('.load_more').hide();
							}
							// "加载更多评论"按钮的点击事件
							$('.comment_list').eq(index).find('.load_more').button().on('click', function () {
								// 点击后禁用
								$('.comment_list').eq(index).find('.load_more').button('disable');
								// ajax请求评论数据
								$.ajax({
									url : 'show_comment.php',
									type : 'POST',
									// 传递后台的数据，当前评论id和page
									data : {
										titleid : $(comment_this).attr('data-id'),
										page : page,
									},
									// 请求前显示more_load.gif
									beforeSend : function (jqXHR, settings) {
										$('.comment_list').eq(index).find('.load_more').html('<img src="img/more_load.gif" />');
									},
									// 请求成功，将返回数据添加到comment_content元素的最后一个子元素后面，即每次获得的数据都添加在最后
									// 显示"加载更多评论"按钮，并启用
									// page自加1，并与总评论数count比较，
									// 如果page++后大于count，则说明评论加载完成，则禁用"加载更多评论"按钮并隐藏
									success : function (response) {
										var json_comment_more = $.parseJSON(response);
										$.each(json_comment_more, function (index3, value) {
											$('.comment_list').eq(index).find('.comment_content').last().after('<dl class="comment_content"><dt>' + value.user + '</dt><dd>' + value.comment + '</dd><dd class="date">' + value.date + '</dd></dl>');
										});
										$('.comment_list').eq(index).find('.load_more').button('enable');
										$('.comment_list').eq(index).find('.load_more').html('加载更多评论');
										page++;
										if (page > count) {
											$('.comment_list').eq(index).find('.load_more').off('click');
											$('.comment_list').eq(index).find('.load_more').hide();
										}
									}
								});
							});
 							// 在评论后面添加"发表评论"表单，并将登录用户名和当前评论的id保存在表单中
							$('.comment_list').eq(index).append('<form><dl class="comment_add"><dt><textarea name="comment"></textarea></dt><dd><input type="hidden" name="titleid" value="' 
								+ $(comment_this).attr('data-id') + '" /><input type="hidden" name="user" value="' 
								+ $.cookie('user') + '" /><input type="button" value="发表" /></dd></dl></form>');
							// "发表评论"表单的发表按钮点击事件
							$('.comment_list').eq(index).find('input[type=button]').button().on("click",function () {
								var _this = this;
								// 点击"发表"按钮，ajax提交当前表单
								$('.comment_list').eq(index).find('form').ajaxSubmit({
									url : 'add_comment.php',
									type : 'POST',
									// 提交前，打开loading对话框，并禁用发表按钮
									beforeSubmit : function (formData, jqForm, options) {
										$('#loading').dialog('open');
										$(_this).button('disable');
									},
									// ajax请求成功后，恢复发表按钮，并显示加载成功loading对话框
									success : function (responseText, statusText) {
										if (responseText) {
											$(_this).button('enable');
											$('#loading').css('background', 'url(img/success.gif) no-repeat 20px center').html('数据新增成功...');
											// 1秒钟后恢复loading的数据交互中对话框并关闭，重置发表评论表单并关闭
											// 并将刚发表的评论显示在评论的第一个位置
											setTimeout(function () {
												var date = new Date();
												$('#loading').dialog('close');
												$('.comment_list').eq(index).prepend('<dl class="comment_content"><dt>' + $.cookie('user')+ '</dt><dd>' + $('.comment_list').eq(index).find('textarea').val() + '</dd><dd>' +date.getFullYear() + '-' + (date.getMonth()+ 1) + '-' + date.getDate() + ' ' + date.getHours() + ':' +date.getMinutes() + ':' + date.getSeconds() + '</dd></dl>');
												$('.comment_list').eq(index).find('form').resetForm();
												$('#loading').css('background', 'url(img/loading.gif) no-repeat 20px center').html('数据交互中...');
											}, 1000);
										}
									},
								});
							});
						}
					});
				}
				
 		}
	})();
 	// 右侧
 	// accordion	
	$('#accordion').accordion({
		header : 'h3',
	});
});