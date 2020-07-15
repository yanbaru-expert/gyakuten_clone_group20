require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")

$(function () {
    $document.getElementById('search-text').keyup(function(){
      var searchText = $(this).val();
        $('.card-title').each(function() {
            if($(this).text().indexOf(searchText) != -1){
                console.log(text)
                $(this).document.getElementById('text').removeClass("d-none")
                $(this).document.getElementById('text').addClass("d-flex")
            }
            else{
                $(this).document.getElementById('text').removeClass("d-flex")
                $(this).document.getElementById('text').addClass("d-none")
            }
        });
    });
});

window.$ = $;

