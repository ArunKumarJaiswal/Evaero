/*
Date: July 16,2011
*/

function showAlertMessage(msg) {
    var mssg = "<div id='fade'><div class='error' id='divError'><h4 id='divErrorMessage'>" + msg + "</h4><input type='image' src='../../Content/Images/ok_img.jpg' style='margin-left: 105px; width: 50px;' id='btnOkClick911' /></div></div>";
    $('body').append(mssg); //Add the fade layer to bottom of the body tag.
    $('#fade').css({ 'filter': 'alpha(opacity=100)' }).fadeIn();
    popupByIdAbs("divError");
}

function showConfirmMessage(msg, funcall) {
    showTitleConfirmMessage(msg, "", funcall);
}


function showNewPopupBusinessSec(title, width, bdy) {
    var mssg = '<div style="top: 181px; left: 404px; display: block;max-width: ' + width + 'px;min-width: ' + width + 'px;" id="popUDel911" class="lightboxpp ui-draggable">';
    mssg = mssg + '<div style="text-align: left; margin-top: -19px;" id="popUDel911Title"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="table-layout:fixed;">';
    mssg = mssg + '<tbody><tr><td style="overflow: hidden; margin: 10px; font-weight: bold; width: 15%;" title="' + title + '"><div style="display: block; overflow: hidden; height: 17px;">' + title + '</div></td><td style="width: 2%;"><img border="0" style="float: right;cursor:pointer;" title="Close" alt="" src="../../../Content/Images/clear.gif" class="" id="closeNewDelMessage911">';
    mssg = mssg + '</td></tr></tbody></table></div><br>';
    mssg = mssg + '<p style="float:left;margin-left:50px;text-align:left;">' + bdy + '</p>';
    mssg = mssg + '';
    //<a class="btn_green" id="btnOkClick911h" style="margin: 20px 0px 0px; float: right; padding-top: 9px;cursor:pointer;">Confirm</a></div><br></div></div>';


    $('body').append(mssg); //Add the fade layer to bottom of the body tag.
    $('#fade').css({ 'filter': 'alpha(opacity=100)' }).fadeIn();
    $("#popUDel911").css('display', 'block');
    popupByIdAbs("popUDel911");
    //$("#btnOkClick911h").live("click", funcall);
    $("#btnOkClick911h").live("click", function () {
        $('#popUDel911').hide();
        $('#popUDel911').remove();
        $("#btnOkClick911h").unbind();
    });
    $("#closeNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#popUDel911').hide();
        $('#popUDel911').remove();
        //        $("#btnOkClick911h").unbind();
    });
    $("#cancelNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#popUDel911').hide();
        $('#popUDel911').remove();
        //        $("#btnOkClick911h").unbind();
    });
}


function showPopupBusinessSec(title, width, bdy) {
    var mssg = '<div id="fade"><div style="top: 181px; left: 404px; display: block;max-width: ' + width + 'px;min-width: ' + width + 'px;" id="popUDel911" class="lightboxpp ui-draggable">';
    mssg = mssg + '<div style="text-align: left; margin-top: -19px;" id="popUDel911Title"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="table-layout:fixed;">';
    mssg = mssg + '<tbody><tr><td style="overflow: hidden; margin: 10px; font-weight: bold; width: 15%;" title="' + title + '"><div style="display: block; overflow: hidden; height: 17px;">' + title + '</div></td><td style="width: 2%;"><img border="0" style="float: right;cursor:pointer;" title="Close" alt="" src="../../../Content/Images/clear.gif" class="" id="closeNewDelMessage911">';
    mssg = mssg + '</td></tr></tbody></table></div><br>';
    mssg = mssg + '<p style="float:left;margin-left:50px;text-align:left;">' + bdy + '</p>';
    mssg = mssg + '';
    //<a class="btn_green" id="btnOkClick911h" style="margin: 20px 0px 0px; float: right; padding-top: 9px;cursor:pointer;">Confirm</a></div><br></div></div>';


    $('body').append(mssg); //Add the fade layer to bottom of the body tag.
    $('#fade').css({ 'filter': 'alpha(opacity=100)' }).fadeIn();
    $("#popUDel911").css('display', 'block');
    popupByIdAbs("popUDel911");
    //$("#btnOkClick911h").live("click", funcall);
    $("#btnOkClick911h").live("click", function () {
        $('#fade').hide();
        $('#fade').remove();
        $("#btnOkClick911h").unbind();
    });
    $("#closeNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
    $("#cancelNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
}


function showPopupRelative(title, width, bdy, control) {
    var mssg = '<div id="fade"><div style="top: 181px; left: 404px; display: block;max-width: ' + width + 'px;min-width: ' + width + 'px;" id="popUDel911" class="lightboxpp ui-draggable">';
    mssg = mssg + '<div style="text-align: left; margin-top: -19px;" id="popUDel911Title"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="table-layout:fixed;">';
    mssg = mssg + '<tbody><tr><td style="overflow: hidden; margin: 10px; font-weight: bold; width: 15%;" title="' + title + '"><div style="display: block; overflow: hidden; height: 17px;">' + title + '</div></td><td style="width: 2%;"><img border="0" style="float: right;cursor:pointer;" title="Close" alt="" src="../../../Content/Images/clear.gif" class="" id="closeNewDelMessage911">';
    mssg = mssg + '</td></tr></tbody></table></div><br>';
    mssg = mssg + '<p style="float:left;margin-left:50px;text-align:left;">' + bdy + '</p>';
    mssg = mssg + '';
    //<a class="btn_green" id="btnOkClick911h" style="margin: 20px 0px 0px; float: right; padding-top: 9px;cursor:pointer;">Confirm</a></div><br></div></div>';


    $('body').append(mssg); //Add the fade layer to bottom of the body tag.
    $('#fade').css({ 'filter': 'alpha(opacity=100)' }).fadeIn();
    $("#popUDel911").css('display', 'block');
    popupByIdAbs("popUDel911");
    var ob = $(control).offset();
    var left = ob.left;
    var top = ob.top;
    $('#popUDel911').css("top", top);
    //$("#btnOkClick911h").live("click", funcall);
    $("#btnOkClick911h").live("click", function () {
        $('#fade').hide();
        $('#fade').remove();
        $("#btnOkClick911h").unbind();
    });
    $("#closeNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
    $("#cancelNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
}


function showDeleteMessage(msg, title, funcall) {
    var mssg = '<div id="fade"><div style="top: 181px; left: 404px; display: block;max-width: 500px;min-width: 180px;" id="popUDel911" class="lightboxpp">';
    mssg = mssg + '<div style="text-align: left; margin-top: -19px;" id="popUDel911Title"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="table-layout:fixed;">';
    mssg = mssg + '<tbody><tr><td style="overflow: hidden; margin: 10px; font-weight: bold; width: 15%;" title="' + title + '"><div style="display: block; overflow: hidden; height: 17px;">' + title + '</div></td><td style="width: 2%;"><img border="0" style="float: right;cursor:pointer;" title="Close" alt="" src="../../../Content/Images/clear.gif" class="" id="closeNewDelMessage911">';
    mssg = mssg + '</td></tr></tbody></table></div><br><br>';
    mssg = mssg + '<p style="float:left;margin-left:50px;text-align:left;">' + msg + '</p></td></tr><div style="float:right;width:100%;"><input type="button" style="float: right;margin: 20px 5px 0px; cursor: pointer;" name="button" value="Cancel" class="btn_button" id="cancelNewDelMessage911">';
    mssg = mssg + '<input type="button" style="float: right; margin: 20px 0px 0px; cursor: pointer;" name="button" value="Confirm" class="btn_green btn_button" id="btnOkClick911h">';
    //<a class="btn_green" id="btnOkClick911h" style="margin: 20px 0px 0px; float: right; padding-top: 9px;cursor:pointer;">Confirm</a></div><br></div></div>';


    $('body').append(mssg); //Add the fade layer to bottom of the body tag.
    $('#fade').css({ 'filter': 'alpha(opacity=100)' }).fadeIn();
    $("#popUDel911").css('display', 'block');
    popupByIdAbs("popUDel911");
    $("#btnOkClick911h").live("click", funcall);
    $("#btnOkClick911h").live("click", function () {
        $('#fade').hide();
        $('#fade').remove();
        $("#btnOkClick911h").unbind();
    });
    $("#closeNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
    $("#cancelNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
}


function showPopupRelativeMessage(msg, control, title, funcall) {
    var mssg = '<div id="fade"><div style="top: 181px; left: 404px; display: block;max-width: 500px;min-width: 180px;" id="popUDel911" class="lightboxpp">';
    mssg = mssg + '<div style="text-align: left; margin-top: -19px;" id="popUDel911Title"><table width="100%" cellspacing="0" cellpadding="0" border="0" style="table-layout:fixed;">';
    mssg = mssg + '<tbody><tr><td style="overflow: hidden; margin: 10px; font-weight: bold; width: 15%;" title="' + title + '"><div style="display: block; overflow: hidden; height: 17px;">' + title + '</div></td><td style="width: 2%;"><img border="0" style="float: right;cursor:pointer;" title="Close" alt="" src="../../../Content/Images/clear.gif" class="" id="closeNewDelMessage911">';
    mssg = mssg + '</td></tr></tbody></table></div><br><br>';
    mssg = mssg + '<p style="float:left;margin-left:50px;text-align:left;">' + msg + '</p></td></tr><div style="float:right;width:100%;"><input type="button" style="float: right;margin: 20px 5px 0px; cursor: pointer;" name="button" value="Cancel" class="btn_button" id="cancelNewDelMessage911">';
    mssg = mssg + '<input type="button" style="float: right; margin: 20px 0px 0px; cursor: pointer;" name="button" value="Confirm" class="btn_green btn_button" id="btnOkClick911h">';
    //<a class="btn_green" id="btnOkClick911h" style="margin: 20px 0px 0px; float: right; padding-top: 9px;cursor:pointer;">Confirm</a></div><br></div></div>';

    var ob = $(control).offset();
    var left = ob.left;
    var top = ob.top;

    $('body').append(mssg); //Add the fade layer to bottom of the body tag.
    $('#fade').css({ 'filter': 'alpha(opacity=100)' }).fadeIn();
    $("#popUDel911").css('display', 'block');
    popupByIdAbs("popUDel911");
    $('#popUDel911').css("top", top);
    //$('#popUDel911').css("left", left);
    $("#btnOkClick911h").live("click", funcall);
    $("#btnOkClick911h").live("click", function () {
        $('#fade').hide();
        $('#fade').remove();
        $("#btnOkClick911h").unbind();
    });
    $("#closeNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
    $("#cancelNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
}


function showIFameMessage(wdth, hre, title) {
    var mssg = '<div id="fade"><div style="top: 181px; left: 404px; display: block;min-width:' + wdth + 'px;" id="popUDel911" class="lightboxpp ui-draggable">';
    mssg = mssg + '<div style="text-align: left; margin-top: -19px;"><table width="100%" cellspacing="0" cellpadding="0" border="0">';
    mssg = mssg + '<tbody><tr><td><strong class="group">' + title + '</strong></td><td style="width: 2%;"><img border="0" style="float: right;cursor:pointer;" title="Close" alt="" src="../../../Content/Images/clear.gif" class="" id="closeNewDelMessage911">';
    mssg = mssg + '</td></tr></tbody></table></div><br><br>';
    mssg = mssg + '<iframe id="y2Google" src="' + hre + '" style="display: none;"></iframe>' + '</td></tr><div style="float:right;width:100%;"><a class="btn_green" id="btnOkClick911h" style="margin: 20px 0px 0px; float: right; padding-top: 9px;cursor:pointer;">Confirm</a></div><br></div></div>';
    $('body').append(mssg); //Add the fade layer to bottom of the body tag.
    $('#fade').css({ 'filter': 'alpha(opacity=100)' }).fadeIn();
    $("#popUDel911").css('display', 'block');
    popupByIdAbs("popUDel911");
    $("#closeNewDelMessage911").live("click", function () {
        //        $('#fade, a.close').remove();
        $('#fade').hide();
        $('#fade').remove();
        //        $("#btnOkClick911h").unbind();
    });
}


function showTitleConfirmMessage(msg, title, funcall) {
    showDeleteMessage(msg, title, funcall);
    // $("#popUDel911").draggable({ containment: "#fade", handle: "#popUDel911Title" });
    //    return;
    //    var mssg = "<div id='fade'><div id='dialog' class='error'><table id='PopupTable' width='100%' style='height:100%;' border='0' cellspacing='0' cellpadding='0'><tr><td align='left' valign='top' width='17'></td><td align='left' valign='top' class='' width='100%'><span class='group'>";
    //    mssg = mssg + title;
    //    mssg = mssg + "</span></td><td align='left' valign='top' width='17'><img class='reset' src='../../Content/Images/clear.gif' alt='' border='0' /></td></tr><tr><td align='left' valign='top' class=''></td><td align='left' valign='top' class='md_mid'><table width='100%' border='0' cellspacing='0' cellpadding='0'><tr><td colspan='3' align='right' height='5'></td></tr><tr><td colspan='3' align='center'>";
    //    mssg = mssg + msg;
    //    mssg = mssg + "<input id='HiddenGroupid' type='hidden' value='' /> </td></tr><tr><td colspan='3' align='right' height='5'></td></tr><tr><td colspan='3' align='right'> <input type='image' src='../../Content/Images/confirm_btn.gif' alt='' id='btnOkClick911h' /></td></tr></table></td><td align='left' valign='top' class=''></td></tr><tr><td align='left' valign='top'></td><td align='left' valign='top' class=''></td><td align='left' valign='top'></td></tr></table></div></div>";
    //    $('body').append(mssg); //Add the fade layer to bottom of the body tag.
    //    $('#fade').css({ 'filter': 'alpha(opacity=100)' }).fadeIn();
    //    $("#dialog").css('display', 'block');
    //    popupByIdAbs("dialog");
    //    $("#btnOkClick911h").live("click", funcall);
    //    $("#btnOkClick911h").live("click", function () {
    //        $('#fade').hide();
    //        $('#fade').remove();
    //        $("#btnOkClick911h").unbind();
    //    });

    //    $(".reset").live("click", function () {
    //        //        $('#fade, a.close').remove();
    //        $('#fade').hide();
    //        $('#fade').remove();
    //        //        $("#btnOkClick911h").unbind();
    //    });
}

function showAjaxProgress() {
    $('body').append("<div id='ajaxProgress' class='ajaxProgress'><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><div class='ajaxProgressDi'></div></div>");
    $(".ajaxProgress").css("display", "block");
    $(".ajaxProgressDi").css("display", "block");
    $(".ajaxProgress").css("left", "0px");
    $(".ajaxProgress").css("top", "0px");
}

function closeAjaxProgress() {
    $("#ajaxProgress").remove();
}


function popupByIdAbs(ctrl_Id) {
    var maskHeight = $(window).height();
    var maskWidth = $(window).width();

    // calculate the values for center alignment
    //    var dialogTop = (maskHeight / 2) - ($('#' + ctrl_Id).height());
    //    var dialogLeft = (maskWidth / 2) - ($('#' + ctrl_Id).width() / 2);
    var dheight = $('#' + ctrl_Id).height();
    var dwidth = $('#' + ctrl_Id).width();

    var dialogTop = (maskHeight - dheight) / 2;
    var dialogLeft = (maskWidth - dwidth) / 2;

    dialogTop = dialogTop <= 0 ? 0 : dialogTop;
    dialogLeft = dialogLeft <= 0 ? 0 : dialogLeft;

    $('#' + ctrl_Id).css({ top: dialogTop, left: dialogLeft });
}


function popupByClassAbs(ctrl_Class) {
    var maskHeight = $(window).height();
    var maskWidth = $(window).width();

    $("." + ctrl_Class).each(function () {
        var dheight = $(this).height();
        var dwidth = $(this).width();

        var dialogTop = (maskHeight - dheight) / 2;
        var dialogLeft = (maskWidth - dwidth) / 2;

        dialogTop = dialogTop <= 0 ? 0 : dialogTop;
        dialogLeft = dialogLeft <= 0 ? 0 : dialogLeft;

        $(this).css({ top: dialogTop, left: dialogLeft });
    });
}

function popupByControlAbs(control) {
    var maskHeight = $(window).height();
    var maskWidth = $(window).width();

    // calculate the values for center alignment
    //    var dialogTop = (maskHeight / 2) - ($('#' + ctrl_Id).height());
    //    var dialogLeft = (maskWidth / 2) - ($('#' + ctrl_Id).width() / 2);
    var dheight = control.height();
    var dwidth = control.width();

    var dialogTop = (maskHeight - dheight) / 2;
    var dialogLeft = (maskWidth - dwidth) / 2;

    dialogTop = dialogTop <= 0 ? 0 : dialogTop;
    dialogLeft = dialogLeft <= 0 ? 0 : dialogLeft;

    control.css({ top: dialogTop, left: dialogLeft });
}



function popupAbs(ctrl_Id) {
    var pos = $(".wrapper").position();
    var maskHeight = $(".wrapper").height();
    var maskWidth = $(".wrapper").width();


    var dheight = $('#' + ctrl_Id).height();
    var dwidth = $('#' + ctrl_Id).width();

    var dialogTop = (maskHeight - dheight) / 2;
    dialogTop = dialogTop <= 0 ? 0 : dialogTop;

    var dialogLeft = (maskWidth - dwidth) / 2;

    $('#' + ctrl_Id).css({ top: dialogTop, left: dialogLeft });
}

$(document).ready(function () {

    $("#btnOkClick911").live("click", function () {
        $('#fade, a.close').remove();
    });

});
/**********Close the popup ************/
function closePopupDiv() {
    $('#popUDel911').hide();
    $('#popUDel911').remove();
    $('#fade').hide();
    $('#fade').remove();

}



$(document).ready(function () {
    //    jQuery.fn.timer = function () {
    //        $(".Messages").hide();
    //    } // timer function end
    //    window.setInterval(function () {
    //        $(".Messages").timer();
    //    }, 2000);   

    var btnId = "";
    dragposPopups();

    $(".btnClickStyle").live("mousedown", function () {
        var tmrId = 0;

        $(this).removeClass($(this).attr("mnClass"));
        $(this).addClass($(this).attr("hvClass"));
        btnId = $(this).attr("id");
        jQuery.fn.timer = function () {
            $("#" + btnId).removeClass($("#" + btnId).attr("hvClass"));
            $("#" + btnId).addClass($("#" + btnId).attr("mnClass"));
            clearInterval(tmrId);
        } // timer function end
        tmrId = window.setInterval(function () {
            $(this).timer();
        }, 500);
    });


    $(".btnActClickStyle").live("mousedown", function () {
        var tmrId = 0;

        var clas = $(this).attr("class");

        $(this).removeClass(clas);
        $(this).addClass(clas + "_active");
        btnId = $(this).attr("id");
        jQuery.fn.timer = function () {
            $("#" + btnId).removeClass(clas + "_active");
            $("#" + btnId).addClass(clas);
            clearInterval(tmrId);
        } // timer function end
        tmrId = window.setInterval(function () {
            $(this).timer();
        }, 500);
    });


    if ($(":input[type='text']") != null) {
        $(":input[type='text']").blur(function () {
            if ((this.value.indexOf('<', 0) != -1) || (this.value.indexOf('&#', 0) != -1) /*|| (this.value.indexOf("'", 0) != -1)*/) {
                this.value = "";
            }
            else {
                //$(this).parent().html().find($(".submiterror").remove());
            }
        });

        $(":input[type='text']").keyup(function () {
            if ((this.value.indexOf('<', 0) != -1) || (this.value.indexOf('&#', 0) != -1)/* || (this.value.indexOf("'", 0) != -1)*/) {
                this.value = (this.value).substring(0, (this.value).length - 1);
                return false;
            }
            else {
                //$(this).parent().html().find($(".submiterror").remove());
            }
            return true;
        });
        $("textarea").blur(function () {
            var rd = $(this).attr("readonly");
            if (rd == true) {
                return false;
            }
            if ((this.value.indexOf('<', 0) != -1) || (this.value.indexOf('&#', 0) != -1) /*|| (this.value.indexOf("'", 0) != -1)*/) {
                this.value = "";
            }
            else {
                //$(this).parent().html().find($(".submiterror").remove());
            }
        });

        $("textarea").keyup(function () {
            var rd = $(this).attr("readonly");
            if (rd == true) {
                return false;
            }
            if ((this.value.indexOf('<', 0) != -1) || (this.value.indexOf('&#', 0) != -1) /*|| (this.value.indexOf("'", 0) != -1)*/) {
                this.value = (this.value).substring(0, (this.value).length - 1);
                return false;
            }
            else {
                //$(this).parent().html().find($(".submiterror").remove());
            }
            return true;
        });
    }

    if ($(":input[type='password']") != null) {
        $(":input[type='text']").blur(function () {
            if ((this.value.indexOf('<', 0) != -1) || (this.value.indexOf('&#', 0) != -1) /*|| (this.value.indexOf("'", 0) != -1)*/) {
                this.value = "";
            }
            else {
                //$(this).parent().html().find($(".submiterror").remove());
            }
        });

        $(":input[type='password']").keyup(function () {
            if ((this.value.indexOf('<', 0) != -1) || (this.value.indexOf('&#', 0) != -1) /*|| (this.value.indexOf("'", 0) != -1)*/) {
                this.value = (this.value).substring(0, (this.value).length - 1);
                return false;
            }
            else {
                //$(this).parent().html().find($(".submiterror").remove());
            }
            return true;
        });

        $(".deleteLink").click(function () {
            return confirm('Are you sure you want to Deactivate ?');

        });

        $(".deleteImage").click(function () {
            return confirm('Are you sure you want to Disassociate ?');

        });
    }

});


function ChangeToAbslutePosition() {
    $(".rightside").css("position", "inherit");
}

function dragposPopups() {

    var maskHeight = $(window).height();
    var maskWidth = $(window).width();

    $(".moveablePopup").each(function () {
        $(this).draggable();
        var dheight = $(this).height();
        var dwidth = $(this).width();
        var dialogTop = (maskHeight - dheight) / 2;
        var dialogLeft = (maskWidth - dwidth) / 2;
        $(this).css({ top: dialogTop, left: dialogLeft });
    });

}


function isTouchDevice() {
    /* Added Android 3.0 honeycomb detection because touchscroll.js breaks
    the built in div scrolling of android 3.0 mobile safari browser */
    if ((navigator.userAgent.match(/android 3/i)) ||
		(navigator.userAgent.match(/honeycomb/i)))
        return false;
    try {
        document.createEvent("TouchEvent");
        return true;
    } catch (e) {
        return false;
    }
}

function touchScroll(id) {
    if (isTouchDevice()) { //if touch events exist...
        var el = document.getElementById(id);
        var scrollStartPosY = 0;
        var scrollStartPosX = 0;

        document.getElementById(id).addEventListener("touchstart", function (event) {
            scrollStartPosY = this.scrollTop + event.touches[0].pageY;
            scrollStartPosX = this.scrollLeft + event.touches[0].pageX;
            //event.preventDefault(); // Keep this remarked so you can click on buttons and links in the div
        }, false);

        document.getElementById(id).addEventListener("touchmove", function (event) {
            // These if statements allow the full page to scroll (not just the div) if they are
            // at the top of the div scroll or the bottom of the div scroll
            // The -5 and +5 below are in case they are trying to scroll the page sideways
            // but their finger moves a few pixels down or up.  The event.preventDefault() function
            // will not be called in that case so that the whole page can scroll.
            if ((this.scrollTop < this.scrollHeight - this.offsetHeight &&
				this.scrollTop + event.touches[0].pageY < scrollStartPosY - 5) ||
				(this.scrollTop != 0 && this.scrollTop + event.touches[0].pageY > scrollStartPosY + 5))
                event.preventDefault();
            if ((this.scrollLeft < this.scrollWidth - this.offsetWidth &&
				this.scrollLeft + event.touches[0].pageX < scrollStartPosX - 5) ||
				(this.scrollLeft != 0 && this.scrollLeft + event.touches[0].pageX > scrollStartPosX + 5))
                event.preventDefault();
            this.scrollTop = scrollStartPosY - event.touches[0].pageY;
            this.scrollLeft = scrollStartPosX - event.touches[0].pageX;
        }, false);
    }
}


