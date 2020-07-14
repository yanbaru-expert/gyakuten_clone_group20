require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")

$(function () {
    searchText = $(this).val();
    $('.card-title').each(function() {
        if($(this).text.indexOf(searchText) != -1){
            $(this).removeClass("d-none")
            $(this).addClass("d-flex")
        }
        else{
            $(this).removeClass("d-flex")
            $(this).addClass("d-none")
        }
    });
});

window.$ = $;

