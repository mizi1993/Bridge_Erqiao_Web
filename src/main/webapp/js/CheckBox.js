//check all
function CheckAll(e) {
    var aa = document.getElementsByClassName("checkboxclass");
    for (var i = 0; i < aa.length; i++)
        aa[i].checked = e.checked;
}
function CheckItem(e) {
    var all = document.getElementById("CheckboxAll");
    if (!e.checked) all.checked = false;
    else {
        var aa = document.getElementById(e.id);
        for (var i = 0; i < aa.length; i++)
            if (!aa[i].checked) return;
        all.checked = true;
    }
}