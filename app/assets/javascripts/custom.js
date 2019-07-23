$(document).ready(function(){
  $('#search-box').on('keyup', function(){
    var string = $(this).val();
    $.ajax({
      url: "/universities",
      type: 'GET',
      data: {
        q: string
      },
      dataType: 'json'
    })
    .done(function(res){
      console.log(res);
      $("#uni-list").html(res.html);
    });
  });
})
