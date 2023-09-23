function checkUsername(val){
    var check=/^[_a-z]+$/g;

    // if(!check.test(val)){
    //     document.getElementById('checktext').innerHTML='Only Lower Case Latin Letters and _ are allowed';
    //     document.getElementById('uname').value='';
    // }else{
    //     document.getElementById('checktext').innerHTML='';
    // }

    if(!check.test(val)){
        $('#checktext').html('Only Lower Case Latin Letters and _ are allowed');
        $('#checktext').css('color','red');
        $('#uname').val('');
    }else{
        $('#checktext').html('');
    }

}