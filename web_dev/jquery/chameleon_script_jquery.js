$('body').css('background-color', 'turquoise');

$('#lizard-photo').css({
  width: '50%',
  height: '50%'
});

$('#lizard-photo').fadeOut('slow');


$('p').css({
  color: 'white'
});

$('ul').css({
  color: 'purple'
})

$('button').click(function() {
  $('div').animate({left: '350px'});
});

$('button').click(function(){
  $('div').animate({
    width: 'toggle'
  });
});