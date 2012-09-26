
//This js is for water mark in text boxes.

$(document).ready(function () {
    $('.watermark').each(function () {
        if (this.value == "") {
            this.value = $(this).attr('Defaulttitle');
            $(this).addClass('text-label');

            $(this).focus(function () {
                if (this.value == $(this).attr('Defaulttitle')) {
                    this.value = '';
                    $(this).removeClass('text-label');
                }
            });
            $(this).blur(function () {
                if (this.value == '') {
                    this.value = $(this).attr('Defaulttitle');
                    $(this).addClass('text-label');
                }
            });
        }
    });
});
