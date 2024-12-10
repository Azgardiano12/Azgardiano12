$(document).ready(function () {
    $('.panel').click(function (e) { 
        e.preventDefault();
        const url = $(this).data('url');
        $.ajax({
            url,
            success: function (response) {
                $('.frm').html(response);        
            }
        });
        
        
    });
});