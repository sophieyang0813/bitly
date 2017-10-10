function log(){
var form = $('#special-form');
    form.on('submit',function(formSubmissionEvent){
        formSubmissionEvent.preventDefault();
        console.log("Prevented default action!")


    // $('body').prepend('<img src="/img/spinner.gif" id="spinner"/>')

    $.ajax({
        url: form.attr('action'),
        method: form.attr('method'),
        data: form.serialize(),
        dataType: 'JSON',
        success: function(response) {
            if (response.id) {
                // $("#box").append('<h2>'+ response.ori_url + '</h2>');
                // $("#box").append('<tr>'+ response.short_url +  '</tr>');

                $("#tbody").append("<tr>"
                    + "<th>" + response.id + "</th>" +
                    "<th>" + response.ori_url + "</th>" +
                    "<th>" + "<a href='" + response.short_url + "'>localhost:9393/" + response.short_url + "</a>" + "</th>" +
                    "<th>" + response.counter + "</th>" +
                    "</tr>");
            } else {
                $('#sorry').append('Sorry, please check for these errors:'+ response)

            }

        }
    })



    })
}

document.addEventListener("DOMContentLoaded", log);