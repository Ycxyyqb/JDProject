/**
 * Created by Administrator on 2018/6/7 0007.
 */
$(function(){
    $("#add").click(function(){
        var number = parseInt($("#chooseNumber").text())+1;
        $("#chooseNumber").text(number);
        $("#addToCartNumber").val(number);
    });
    $("#sub").click(function(){
        if(parseInt($("#chooseNumber").text())>1){
            var number = parseInt($("#chooseNumber").text())-1;
            $("#chooseNumber").text(number);
            $("#addToCartNumber").val(number);
        }else{
            $("#chooseNumber").text(1);
            $("#addToCartNumber").val(1);
        }
    });

    /*使用jquer动态提交表单*/
    $("#addToCart").click(function(){
        $("#addToCartForm").submit();
    });


});
