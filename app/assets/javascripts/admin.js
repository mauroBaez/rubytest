$(document).ready(function(){
  
  $('.lightbox').click(function(event){
    event.preventDefault()
    window.admin.lightbox.show({
      html: "my html goes here",
      title: "my title"
    })
  })
  


  //$('.has_many_container .has_many_fields li').hide();
  $('.has_many_container .has_many_fields').each(function (i, el) {
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