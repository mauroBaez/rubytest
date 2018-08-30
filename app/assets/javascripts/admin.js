$(document).ready(function(){
  
  
  $('.lightbox').click(function(event){
    event.preventDefault();
    var selected = [];
    $('input[type=checkbox]:checked').each(function() {
        var guest = {
          id: $(this)[0].id,
          name: $(this)[0].name,
          email: $(this)[0].value
        };
        
        selected.push(guest);
    });
    
    console.log(selected);
    var html = $($(this).data("target")).html();
    
    $.each( selected, function( key, value ) {
      html = html + "<p>" +value.name + ": " + value.email +"<p/>";
    });
    
    admin.lightbox.show({
      html: html,
      title: "Confirmar Envío de Invitaciones"
    }).done(() => sendMails(selected)  );
    
    function sendMails(guests){
      console.log( JSON.stringify(guests));
      $.post(location.protocol + '//' + location.host + location.pathname + '/lock', JSON.stringify(guests), 
          function(returnedData){
               console.log(returnedData);
        }).fail(function(){
              console.log("error");
        });
      console.log($.parseJSON(guests));
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