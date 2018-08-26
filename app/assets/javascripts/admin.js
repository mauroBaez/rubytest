$(document).ready(function(){
  
  $('.lightbox').click(function(event){ 
    event.preventDefault()
    window.admin.lightbox.show({
      html: "my html goes here",
      title: "my title"
    })
    
      
  })
})