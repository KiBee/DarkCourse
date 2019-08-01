$(document).ready(function () {
    $('a.list-group-item-action').hover(
        function () {
            $(this).addClass('active')
        },
        function () {
            $(this).removeClass('active')
        });
});

$(document).ready(function () {
    $('.execute').hover(
        function () {
            $('.execute:hover > .flex-column > .text-exec > small > img').attr('src', "/static/img/main/rait1.png")
        },
        function () {
            $('.execute > .flex-column > .text-exec > small > img').attr('src', "/static/img/main/rait0.png")
        });
});

function toggle() {
    var div = document.getElementById('pnlTest');
    if (this.checked)
        div.style.display = 'block';
    else
        div.style.display = 'none'
}

document.getElementById('chkTest').onchange = toggle;