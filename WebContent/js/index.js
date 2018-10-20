
function fun(id,type){
    if(type == 1){
        $(id).css('display','inline-block');
    }else{
        $(id).css('display','none');
    }

}

function change(self,id,type){
/*    alert(self);*/
    if(self == "tab_headSpan2" && type == 1){
        $("#tab_headSpan2").css('border-bottom','2px solid red');
        $("#tab_headSpan1").css('border-bottom','2px solid white');
    }else{
        $("#tab_headSpan1").css('border-bottom','2px solid red');
        $("#tab_headSpan2").css('border-bottom','2px solid white');
    }

    if(type == 1){
        $("#span1Div").css('display','none');
        $(id).css('display','block');

    }else if(type == 2){
        $("#span2Div").css('display','none');
        $(id).css('display','none');
        $("#span1Div").css('display','block');
    }
}


    /*������ɱ����ʱΪһ��Сʱ*/
    /*�Ȼ��3��ʱ���div
    * #seckill #seckillTime #secDate #hour
    *#seckill #seckillTime #secDate #mins
    * #seckill #seckillTime #secDate #secs
    * */
var maxtime = 3600+10;
    function countTime(){

        if(maxtime>0.0){
            var secs =Math.floor(maxtime % 60);

            var mins = Math.floor(maxtime /60 % 60);

            var hours = Math.floor(maxtime / 60 / 60 % 60);

            /*alert(hours+","+mins+","+secs);*/
            $('#hours').text(hours);
            $('#mins').text(mins);
            $('#secs').text(secs);
            maxtime--;
        }else{
            clearInterval(timer);
            /*ʱ�ֱ?����Ϊ0*/
            $('#hours').html(0);
            $('#mins').html(0);
            $('#secs').html(0);
        }
    }
$(function(){
    timer = setInterval(countTime,1000);
});




