{"filter":false,"title":"jquery-turbolinks.coffee","tooltip":"/app/assets/javascripts/jquery-turbolinks.coffee","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":29,"column":27},"action":"insert","lines":["{defer, dispatch} = Turbolinks","","handleEvent = (eventName, handler) ->","  document.addEventListener(eventName, handler, false)","","translateEvent = ({from, to}) ->","  handler = (event) ->","    event = dispatch(to, target: event.target, cancelable: event.cancelable, data: event.data)","    event.preventDefault() if event.defaultPrevented","  handleEvent(from, handler)","","translateEvent from: \"turbolinks:click\", to: \"page:before-change\"","translateEvent from: \"turbolinks:request-start\", to: \"page:fetch\"","translateEvent from: \"turbolinks:request-end\", to: \"page:receive\"","translateEvent from: \"turbolinks:before-cache\", to: \"page:before-unload\"","translateEvent from: \"turbolinks:render\", to: \"page:update\"","translateEvent from: \"turbolinks:load\", to: \"page:change\"","translateEvent from: \"turbolinks:load\", to: \"page:update\"","","loaded = false","handleEvent \"DOMContentLoaded\", ->","  defer ->","    loaded = true","handleEvent \"turbolinks:load\", ->","  if loaded","    dispatch(\"page:load\")","","jQuery?(document).on \"ajaxSuccess\", (event, xhr, settings) ->","  if jQuery.trim(xhr.responseText).length > 0","    dispatch(\"page:update\")"],"id":1}]]},"ace":{"folds":[],"scrolltop":93,"scrollleft":0,"selection":{"start":{"row":29,"column":27},"end":{"row":29,"column":27},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":5,"mode":"ace/mode/coffee"}},"timestamp":1535499239798,"hash":"17739e5c806c7cb4c546d96e8bd98e9af0fa9e12"}