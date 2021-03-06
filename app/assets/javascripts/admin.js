$(document).on('turbolinks:load', function () {
  window.fbAsyncInit = function() {
    FB.init({
      appId            : '139255569608911',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v3.1'
    });
    
    $('.facebook-share').click(function(event){
      event.preventDefault();
      FB.ui({
        method: 'send',
        link: $(this).attr("href"),
      });
    })
    
    
    
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  

  
  
  $("a.fancybox").fancybox({parent: 'body'});
  
  $(".best_in_place").best_in_place()
  

  //$('.has_many_container .has_many_fields li').hide();
  $('.has_many_container.messages .has_many_fields').each(function (i, el) {
      var container = $(this);
      
      container.find( $("li")).hide();
      
      container.find( $("input[type='text'][id*='author']") ).each(function (i, el) {
        var legend = $( "<legend><span>"+ el.value +"</span></legend>" );
        legend.prependTo(container);
        legend.click(function(event){
          event.preventDefault();
          container.find( $("li")).slideToggle();
        });
        console.log(el.value);     
      });;
      
  });
  
  $('.async-panel').each(function(index, item) {
    item = $(item);
    var worker = function() {
      item.addClass('processing');
      $('h3', item).hide().show(0);

      return $.ajax({
        url: item.data('url'),
        success(data) {
          return $('.panel_contents', item).html(data);
        },
        error(data, status, error) {
          return $('.panel_contents', item).html(error);
        },
        complete() {
          item.removeClass('processing');

          // Schedule the next request when the current one's completed
          const period = item.data('period');
          if (period) {
            //return setTimeout(worker, period * 1000);
          }
        }
      });
    };

    return worker();
  })
  
  $('table.sticky-header').stickyTableHeaders({scrollableArea: $('.panel_contents')});  
  
  
});