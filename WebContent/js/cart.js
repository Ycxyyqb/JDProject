/**
 * Created by Administrator on 2018/6/7 0007.
 */
$(function(){
    
    $(".showCart .chooseAll input[type='checkbox']").click(function(){
        var isCheaked = $(".showCart .chooseAll input[type='checkbox']").is(":checked");
        if(isCheaked){
            $("#cartList .item .itemCheckboxDiv input[type='checkbox']").each(function(){
                $(this).prop('checked', true);
            });
        }else{
            $("#cartList .item .itemCheckboxDiv input[type='checkbox']").each(function(){
                $(this).prop('checked', false);
            });
        }
    });

});
