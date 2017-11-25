//フラッシュメッセージを削除する
$(function() {
  if($(".flash").length){
    $(".flash").fadeIn().queue(function() {
      setTimeout(function(){$(".flash").dequeue();
      }, 1500);
    });
    $(".flash").fadeOut(1000);
  }
});
