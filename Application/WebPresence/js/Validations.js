var minLengthForPassword = 6;
function MinLengthFunForPassword(sender, args) {
    args.IsValid = (args.Value.length >= minLengthForPassword);
}



function valUser(sender, args) {
    args.IsValid = false;
    var ck = /^[a-zA-Z0-9]*$/;
    var val = args.Value;

    if (ck.test(val) && ck.length >= 8) {
        args.IsValid = true;
        return;
    }

    args.IsValid = false;
    return;

}

function valChar(sender, args) {
    args.IsValid = false;
    var ck = /^[a-zA-Z0-9]*$/;
    var val = args.Value;

    if (ck.test(val)) {
        args.IsValid = true;
        return;
    }

    args.IsValid = false;
    return;
}

function chkdate(sender, args) {
    args.IsValid = false;
    var ck = /^[\/0-9]*$/;
    var val = args.Value;

    var mm = val.substring(0, val.indexOf("/"));
    var dd = val.substring(val.indexOf("/") + 1, val.lastIndexOf("/"));
    var yy = val.substring(val.lastIndexOf("/") + 1).length;

    if (ck.test(val) && dd >= 1 && dd <= 31 && mm >= 1 && mm <= 12 && val.length < 11 && yy == 4) {
        args.IsValid = true;
        return;
    }

    args.IsValid = false;
    return;
}

function chkLength(sender, args) {
    args.IsValid = false;
    var val = args.Value;

    if (val.length >= 6) {
        args.IsValid = true;
        return;
    }
    args.IsValid = false;
    return;
}

function chkMonthLength(sender, args) {
    var val = args.Value;

    if (val.length == 2) {
        args.IsValid = true;
        return;
    }
    args.IsValid = false;
}

function chkYearLength(sender, args) {
    var val = args.Value;

    if (val.length == 4) {
        args.IsValid = true;
        return;
    }
    args.IsValid = false;
}


function chksize(sender, args) {
    var val = args.Value;

    if (val.length >= 10) {
        args.IsValid = true;
        return;
    }
    args.IsValid = false;
}

function chkdigits(sender, args) {
    var ck = /^[0-9]*$/;
    var val = args.Value;

    if (ck.test(val)) {
        args.IsValid = true;
        return;
    }

    args.IsValid = false;
}

function chkchars(sender, args) {
    var ck = /^[A-Za-z. 0-9]*$/;
    var val = args.Value;

    if (ck.test(val)) {
        args.IsValid = true;
        return;
    }

    args.IsValid = false;
}

function chkemail(sender, args) {
    var ck = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    var val = args.Value;

    if (ck.test(val)) {
        args.IsValid = true;
        return;
    }

    args.IsValid = false;
}



function chkcombo(sender, args) {
    if (args.Value != 0) {
        args.IsValid = true;
        return;
    }
    args.IsValid = false;
}


function chkusrnm(sender, args) {
    var ck = /^[A-Za-z. 0-9_]*$/;
    var val = args.Value;

    if (ck.test(val)) {
        args.IsValid = true;
        return;
    }

    args.IsValid = false;
}

function chkpw(sender, args) {
    var val = args.Value;

    if (val.length >= 8) {
        args.IsValid = true;
        return;
    }
    args.IsValid = false;
}
function ValidateSpecialChars(inputControl) {

    if ((inputControl.value.indexOf('<', 0) != -1) || (inputControl.value.indexOf('&#', 0) != -1) || (inputControl.value.indexOf("'", 0) != -1)) {
        inputControl.value = (inputControl.value).substring(0, (inputControl.value).length - 1);
        return false;
    }
    return true;
}