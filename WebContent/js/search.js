/**
 * Created by Administrator on 2018/6/6 0006.
 */
$(function(){
    /*��֤js�����Ƿ�����ɹ�*/
    /*alert("hello");*/
    var spanList = $(".searchContent .filter a span");
    //��ʼ��������������ʽ
    for(var i = 0; i < spanList.length; i++){
        if(i == 0){
            $(spanList[i]).addClass("isActive");
        }else{
            $(spanList[i]).addClass("isNotActive");
        }
    }
    /*�ı���ʽ*/
    $(".searchContent .filter a span").click(function () {
        $(".searchContent .filter span[class = 'isActive']").removeClass("isActive").addClass("isNotActive");
        $(this).removeClass("isNotActive").addClass("isActive");
    });

});

