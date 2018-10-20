/**
 * Created by Administrator on 2018/6/6 0006.
 */
$(function(){
    /*验证js代码是否引入成功*/
    /*alert("hello");*/
    var spanList = $(".searchContent .filter a span");
    //初始化过滤条件的样式
    for(var i = 0; i < spanList.length; i++){
        if(i == 0){
            $(spanList[i]).addClass("isActive");
        }else{
            $(spanList[i]).addClass("isNotActive");
        }
    }
    /*改变样式*/
    $(".searchContent .filter a span").click(function () {
        $(".searchContent .filter span[class = 'isActive']").removeClass("isActive").addClass("isNotActive");
        $(this).removeClass("isNotActive").addClass("isActive");
    });

});

