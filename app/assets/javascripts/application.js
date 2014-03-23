// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require_tree .

$(function() {
    // preview fadein
  $('a[data-fullsize]').each(function(){
    $('<img/>')[0].src = this.getAttribute("data-fullsize");
  });
  $('a[data-fullsize]').mouseover(function() {
    img_src = this.getAttribute( "data-fullsize");
    $('.fullsize img').attr('src', img_src).hide().fadeIn();
  });
  //
  //toolbar
  function toolBar(){
      this._state = 'functions';
      $('.functions').show();
      console.log('wtf')
  }
  var toolbar = new toolBar();

  toolbar.state = function(state){
      var deactivate, activate,
      state_class = {
          functions: '.functions',
          reorder: '.reorder'
      };

      deactivate = state_class[toolbar._state];
      activating = state_class[state];
      $(deactivate).hide();
      $(activate).show();
      toolbar._state = state;
  }
  toolbar.state('functions');
  $('#toolbar').draggable({
    stop: function(event, ui){
        var toolbar = JSON.stringify(ui.position);
        localStorage.setItem('toolbar.position', toolbar);
    }
  })
  .css(function(){
      var top, left,
      stringval = localStorage.getItem('toolbar.position');
      position = JSON.parse(stringval);
      top = position.top;
      left = position.left;
      return {top: top, left: left, position: 'fixed'};
  }());
  //// image ordering
  /////////////////////
  // toggle display of weight values
  $('#weights-toggle').click(function(){
    toolbar.state('reorder');
    $('.image-weight').each(function(){
        $(this).toggle();
    });
  });

  $('#weights-cancel').click(function(){
      toolbar.state('functions');
  });

  // new image
  $('#new-image').click(function(){
      window.location = $(this).data('action');
  });
  // logout
  $('#logout').click(function(){
      var url;
      url = $(this).data('action');
      $.ajax({
          type: "POST",
          url: url,
          dataType: "json",
          data: {"_method":"delete"},
          complete: function(){
              window.location = '/';
          }
      });
  });
  // insert submit button
  //$('.image-weight').on('change keypress paste textInput input', function(){
      //$('<button>hello</button').insertAfter(this);
  //});
});
