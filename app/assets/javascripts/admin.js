$(document).ready(function(){
  
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
  
  $('.lightbox').click(function(event){
    event.preventDefault();
    var selected = [];
    $('input[type=checkbox]:checked').each(function() {
        var guest = {
          "id": $(this)[0].id,
          "name": $(this)[0].name,
          "email": $(this)[0].value
        };
        
        selected.push(guest);
    });
    
    var request = {
          "request": selected
    };
    console.log( JSON.stringify(request));

    var html = $($(this).data("target")).html();
    
    $.each( selected, function( key, value ) {
      html = html + "<p>" +value.name + ": " + value.email +"<p/>";
    });
    
    admin.lightbox.show({
      html: html,
      title: "Confirmar Envío de Invitaciones"
    }).done(() => sendMails(selected)  );
    
    function sendMails(guests){
      //console.log( JSON.stringify(guests));

      $.post(location.protocol + '//' + location.host + location.pathname + '/lock', JSON.stringify(request), 
          function(returnedData){
               console.log(returnedData);
        }).fail(function(){
              console.log("error");
        });
    }
  })
  


  //$('.has_many_container .has_many_fields li').hide();
  $('.has_many_container.guests .has_many_fields').each(function (i, el) {
      var container = $(this);
      
      container.find( $("li")).hide();
      
      container.find( $("input[type='text'][id*='name']") ).each(function (i, el) {
        var legend = $( "<legend><span>"+ el.value +"</span></legend>" );
        legend.prependTo(container);
        legend.click(function(event){
          event.preventDefault();
          container.find( $("li")).slideToggle();
        });
        console.log(el.value);     
      });;
      
      
      
  });
  
  
  
  //displayVals();
  
})
$(document).on('ready page:load', function () {
/* Activating Best In Place */
  $("a.fancybox").fancybox({parent: 'body'});

  $(".best_in_place").best_in_place();
  
  $('.async-panel').worker();
});