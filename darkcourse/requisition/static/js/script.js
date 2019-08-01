$(document).ready(function(){$('.btn .btn-secondary').active(
        function () {$('a.list-group-item-action').addClass('active')},
        function () {$('a.list-group-item-action').attr('checked', 'True')});
});