{"filter":false,"title":"invitations.rb","tooltip":"/app/admin/invitations.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":69,"column":83},"end":{"row":71,"column":8},"action":"insert","lines":["","          ","        "],"id":11615}],[{"start":{"row":70,"column":10},"end":{"row":70,"column":12},"action":"insert","lines":["  "],"id":11616}],[{"start":{"row":70,"column":12},"end":{"row":70,"column":14},"action":"insert","lines":["  "],"id":11617}],[{"start":{"row":70,"column":14},"end":{"row":70,"column":16},"action":"insert","lines":["  "],"id":11618}],[{"start":{"row":70,"column":16},"end":{"row":70,"column":96},"action":"insert","lines":[":html => (render_to_string(template: \"../views/app_mailer/sample_email\")).to_str"],"id":11619}],[{"start":{"row":70,"column":53},"end":{"row":70,"column":87},"action":"remove","lines":["\"../views/app_mailer/sample_email\""],"id":11620},{"start":{"row":70,"column":53},"end":{"row":70,"column":103},"action":"insert","lines":["\"../views/invitation_mailer/send_invitation_email\""]}],[{"start":{"row":66,"column":8},"end":{"row":66,"column":12},"action":"remove","lines":["data"],"id":11621},{"start":{"row":66,"column":8},"end":{"row":66,"column":22},"action":"insert","lines":["message_params"]}],[{"start":{"row":59,"column":8},"end":{"row":65,"column":27},"action":"remove","lines":["message_params =  {","                           from: 'giypablo@mailgun.giypablo.com',","                           to:   @g.email,","                           subject: 'Gi y Pablo - Invitación a Nuestro Casamiento!',","                           #text:    'Los invitamos a Nuestro Casamiento!',","                           html: (render_to_string(template: \"../views/invitation_mailer/send_invitation_email\")).to_str","                          }"],"id":11622},{"start":{"row":59,"column":6},"end":{"row":59,"column":8},"action":"remove","lines":["  "]},{"start":{"row":59,"column":4},"end":{"row":59,"column":6},"action":"remove","lines":["  "]},{"start":{"row":59,"column":2},"end":{"row":59,"column":4},"action":"remove","lines":["  "]},{"start":{"row":59,"column":0},"end":{"row":59,"column":2},"action":"remove","lines":["  "]},{"start":{"row":58,"column":0},"end":{"row":59,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":62,"column":0},"end":{"row":63,"column":0},"action":"remove","lines":["                :html => '<html><body><p>This is the HTML part.</p></body></html>',",""],"id":11623}],[{"start":{"row":62,"column":103},"end":{"row":62,"column":104},"action":"insert","lines":[","],"id":11624}],[{"start":{"row":62,"column":104},"end":{"row":62,"column":114},"action":"insert","lines":["post: post"],"id":11625}],[{"start":{"row":62,"column":104},"end":{"row":62,"column":108},"action":"remove","lines":["post"],"id":11626},{"start":{"row":62,"column":104},"end":{"row":62,"column":105},"action":"insert","lines":["g"]},{"start":{"row":62,"column":105},"end":{"row":62,"column":106},"action":"insert","lines":["u"]},{"start":{"row":62,"column":106},"end":{"row":62,"column":107},"action":"insert","lines":["e"]},{"start":{"row":62,"column":107},"end":{"row":62,"column":108},"action":"insert","lines":["s"]},{"start":{"row":62,"column":108},"end":{"row":62,"column":109},"action":"insert","lines":["t"]}],[{"start":{"row":62,"column":111},"end":{"row":62,"column":115},"action":"remove","lines":["post"],"id":11627},{"start":{"row":62,"column":111},"end":{"row":62,"column":121},"action":"insert","lines":["post: post"]}],[{"start":{"row":62,"column":111},"end":{"row":62,"column":116},"action":"remove","lines":["post:"],"id":11628},{"start":{"row":62,"column":110},"end":{"row":62,"column":111},"action":"remove","lines":[" "]}],[{"start":{"row":62,"column":111},"end":{"row":62,"column":115},"action":"remove","lines":["post"],"id":11629},{"start":{"row":62,"column":111},"end":{"row":62,"column":112},"action":"insert","lines":["g"]},{"start":{"row":62,"column":112},"end":{"row":62,"column":113},"action":"insert","lines":["u"]},{"start":{"row":62,"column":113},"end":{"row":62,"column":114},"action":"insert","lines":["e"]},{"start":{"row":62,"column":114},"end":{"row":62,"column":115},"action":"insert","lines":["s"]},{"start":{"row":62,"column":115},"end":{"row":62,"column":116},"action":"insert","lines":["t"]}],[{"start":{"row":62,"column":111},"end":{"row":62,"column":116},"action":"remove","lines":["guest"],"id":11630},{"start":{"row":62,"column":111},"end":{"row":62,"column":113},"action":"insert","lines":["@g"]}],[{"start":{"row":62,"column":104},"end":{"row":62,"column":134},"action":"insert","lines":[":locals => {:sender => sender}"],"id":11631}],[{"start":{"row":62,"column":117},"end":{"row":62,"column":123},"action":"remove","lines":["sender"],"id":11632},{"start":{"row":62,"column":117},"end":{"row":62,"column":118},"action":"insert","lines":["g"]},{"start":{"row":62,"column":118},"end":{"row":62,"column":119},"action":"insert","lines":["u"]},{"start":{"row":62,"column":119},"end":{"row":62,"column":120},"action":"insert","lines":["e"]},{"start":{"row":62,"column":120},"end":{"row":62,"column":121},"action":"insert","lines":["s"]},{"start":{"row":62,"column":121},"end":{"row":62,"column":122},"action":"insert","lines":["t"]}],[{"start":{"row":62,"column":126},"end":{"row":62,"column":132},"action":"remove","lines":["sender"],"id":11633},{"start":{"row":62,"column":126},"end":{"row":62,"column":128},"action":"insert","lines":["@g"]}],[{"start":{"row":62,"column":129},"end":{"row":62,"column":138},"action":"remove","lines":["guest: @g"],"id":11634}],[{"start":{"row":68,"column":0},"end":{"row":69,"column":0},"action":"remove","lines":["        @guest.save",""],"id":11635}],[{"start":{"row":62,"column":138},"end":{"row":62,"column":139},"action":"insert","lines":[","],"id":11639}],[{"start":{"row":62,"column":139},"end":{"row":62,"column":140},"action":"insert","lines":[" "],"id":11640}],[{"start":{"row":62,"column":140},"end":{"row":62,"column":153},"action":"insert","lines":["layout: false"],"id":11641}],[{"start":{"row":56,"column":0},"end":{"row":57,"column":0},"action":"insert","lines":["",""],"id":11642},{"start":{"row":57,"column":0},"end":{"row":58,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":58,"column":0},"end":{"row":58,"column":2},"action":"insert","lines":["  "],"id":11643}],[{"start":{"row":58,"column":2},"end":{"row":58,"column":4},"action":"insert","lines":["  "],"id":11644}],[{"start":{"row":58,"column":4},"end":{"row":58,"column":6},"action":"insert","lines":["  "],"id":11645}],[{"start":{"row":58,"column":6},"end":{"row":58,"column":8},"action":"insert","lines":["  "],"id":11646}],[{"start":{"row":57,"column":0},"end":{"row":57,"column":2},"action":"insert","lines":["  "],"id":11647}],[{"start":{"row":57,"column":2},"end":{"row":57,"column":4},"action":"insert","lines":["  "],"id":11648}],[{"start":{"row":57,"column":4},"end":{"row":57,"column":6},"action":"insert","lines":["  "],"id":11649}],[{"start":{"row":57,"column":6},"end":{"row":57,"column":8},"action":"insert","lines":["  "],"id":11650}],[{"start":{"row":57,"column":8},"end":{"row":70,"column":7},"action":"insert","lines":["<!DOCTYPE html>","<html>","  <head>","    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />","  </head>","  <body>","    <h1>Welcome to example.com, <%= guest.name %></h1>","    ","    <p>","      To login to the site, just follow this link: <%= guest.id %>.","    </p>","    <p>Thanks for joining and have a great day!</p>","  </body>","</html>"],"id":11651}],[{"start":{"row":58,"column":0},"end":{"row":58,"column":2},"action":"insert","lines":["  "],"id":11652},{"start":{"row":59,"column":0},"end":{"row":59,"column":2},"action":"insert","lines":["  "]},{"start":{"row":60,"column":0},"end":{"row":60,"column":2},"action":"insert","lines":["  "]},{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "]},{"start":{"row":62,"column":0},"end":{"row":62,"column":2},"action":"insert","lines":["  "]},{"start":{"row":63,"column":0},"end":{"row":63,"column":2},"action":"insert","lines":["  "]},{"start":{"row":64,"column":0},"end":{"row":64,"column":2},"action":"insert","lines":["  "]},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"insert","lines":["  "]},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]},{"start":{"row":68,"column":0},"end":{"row":68,"column":2},"action":"insert","lines":["  "]},{"start":{"row":69,"column":0},"end":{"row":69,"column":2},"action":"insert","lines":["  "]},{"start":{"row":70,"column":0},"end":{"row":70,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":58,"column":0},"end":{"row":58,"column":2},"action":"insert","lines":["  "],"id":11653},{"start":{"row":59,"column":0},"end":{"row":59,"column":2},"action":"insert","lines":["  "]},{"start":{"row":60,"column":0},"end":{"row":60,"column":2},"action":"insert","lines":["  "]},{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "]},{"start":{"row":62,"column":0},"end":{"row":62,"column":2},"action":"insert","lines":["  "]},{"start":{"row":63,"column":0},"end":{"row":63,"column":2},"action":"insert","lines":["  "]},{"start":{"row":64,"column":0},"end":{"row":64,"column":2},"action":"insert","lines":["  "]},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"insert","lines":["  "]},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]},{"start":{"row":68,"column":0},"end":{"row":68,"column":2},"action":"insert","lines":["  "]},{"start":{"row":69,"column":0},"end":{"row":69,"column":2},"action":"insert","lines":["  "]},{"start":{"row":70,"column":0},"end":{"row":70,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":58,"column":0},"end":{"row":58,"column":2},"action":"insert","lines":["  "],"id":11654},{"start":{"row":59,"column":0},"end":{"row":59,"column":2},"action":"insert","lines":["  "]},{"start":{"row":60,"column":0},"end":{"row":60,"column":2},"action":"insert","lines":["  "]},{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "]},{"start":{"row":62,"column":0},"end":{"row":62,"column":2},"action":"insert","lines":["  "]},{"start":{"row":63,"column":0},"end":{"row":63,"column":2},"action":"insert","lines":["  "]},{"start":{"row":64,"column":0},"end":{"row":64,"column":2},"action":"insert","lines":["  "]},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"insert","lines":["  "]},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]},{"start":{"row":68,"column":0},"end":{"row":68,"column":2},"action":"insert","lines":["  "]},{"start":{"row":69,"column":0},"end":{"row":69,"column":2},"action":"insert","lines":["  "]},{"start":{"row":70,"column":0},"end":{"row":70,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":58,"column":0},"end":{"row":58,"column":2},"action":"insert","lines":["  "],"id":11655},{"start":{"row":59,"column":0},"end":{"row":59,"column":2},"action":"insert","lines":["  "]},{"start":{"row":60,"column":0},"end":{"row":60,"column":2},"action":"insert","lines":["  "]},{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "]},{"start":{"row":62,"column":0},"end":{"row":62,"column":2},"action":"insert","lines":["  "]},{"start":{"row":63,"column":0},"end":{"row":63,"column":2},"action":"insert","lines":["  "]},{"start":{"row":64,"column":0},"end":{"row":64,"column":2},"action":"insert","lines":["  "]},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"insert","lines":["  "]},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]},{"start":{"row":68,"column":0},"end":{"row":68,"column":2},"action":"insert","lines":["  "]},{"start":{"row":69,"column":0},"end":{"row":69,"column":2},"action":"insert","lines":["  "]},{"start":{"row":70,"column":0},"end":{"row":70,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":57,"column":8},"end":{"row":57,"column":9},"action":"insert","lines":["\""],"id":11656}],[{"start":{"row":70,"column":15},"end":{"row":70,"column":16},"action":"insert","lines":["\""],"id":11657}],[{"start":{"row":57,"column":8},"end":{"row":57,"column":9},"action":"insert","lines":["@"],"id":11658},{"start":{"row":57,"column":9},"end":{"row":57,"column":10},"action":"insert","lines":["h"]},{"start":{"row":57,"column":10},"end":{"row":57,"column":11},"action":"insert","lines":["t"]},{"start":{"row":57,"column":11},"end":{"row":57,"column":12},"action":"insert","lines":["m"]}],[{"start":{"row":57,"column":12},"end":{"row":57,"column":13},"action":"insert","lines":["l"],"id":11659}],[{"start":{"row":57,"column":13},"end":{"row":57,"column":14},"action":"insert","lines":[" "],"id":11660},{"start":{"row":57,"column":14},"end":{"row":57,"column":15},"action":"insert","lines":["="]}],[{"start":{"row":57,"column":15},"end":{"row":57,"column":16},"action":"insert","lines":[" "],"id":11661}],[{"start":{"row":63,"column":39},"end":{"row":63,"column":40},"action":"insert","lines":["\""],"id":11662}],[{"start":{"row":63,"column":42},"end":{"row":63,"column":45},"action":"remove","lines":["%= "],"id":11663},{"start":{"row":63,"column":41},"end":{"row":63,"column":42},"action":"remove","lines":["<"]}],[{"start":{"row":63,"column":41},"end":{"row":63,"column":46},"action":"remove","lines":["guest"],"id":11664},{"start":{"row":63,"column":41},"end":{"row":63,"column":42},"action":"insert","lines":["@"]},{"start":{"row":63,"column":42},"end":{"row":63,"column":43},"action":"insert","lines":["g"]}],[{"start":{"row":63,"column":40},"end":{"row":63,"column":41},"action":"insert","lines":["+"],"id":11665}],[{"start":{"row":63,"column":40},"end":{"row":63,"column":41},"action":"insert","lines":[" "],"id":11666}],[{"start":{"row":63,"column":51},"end":{"row":63,"column":53},"action":"remove","lines":["%>"],"id":11667},{"start":{"row":63,"column":51},"end":{"row":63,"column":52},"action":"insert","lines":["+"]}],[{"start":{"row":63,"column":52},"end":{"row":63,"column":53},"action":"insert","lines":[" "],"id":11668},{"start":{"row":63,"column":53},"end":{"row":63,"column":54},"action":"insert","lines":["\""]}],[{"start":{"row":66,"column":59},"end":{"row":66,"column":74},"action":"remove","lines":["<%= guest.id %>"],"id":11669},{"start":{"row":66,"column":59},"end":{"row":66,"column":74},"action":"insert","lines":["\" + @g.name + \""]}],[{"start":{"row":66,"column":66},"end":{"row":66,"column":70},"action":"remove","lines":["name"],"id":11670},{"start":{"row":66,"column":66},"end":{"row":66,"column":67},"action":"insert","lines":["i"]},{"start":{"row":66,"column":67},"end":{"row":66,"column":68},"action":"insert","lines":["d"]}],[{"start":{"row":77,"column":25},"end":{"row":77,"column":113},"action":"remove","lines":["(render_to_string(template: \"../views/invitation_mailer/send_invitation_email\",:locals ="],"id":11671},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[">"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[" "]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["{"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[":"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["g"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["u"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["e"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["s"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["t"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[" "]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["="]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[">"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[" "]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["@"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["g"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["}"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[")"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[")"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["."]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["t"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["o"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["_"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["s"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["t"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["r"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[","]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[" "]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["l"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["a"]}],[{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["y"],"id":11672},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["o"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["u"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["t"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[":"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":[" "]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["f"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["a"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["l"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["s"]},{"start":{"row":77,"column":25},"end":{"row":77,"column":26},"action":"remove","lines":["e"]}],[{"start":{"row":77,"column":25},"end":{"row":77,"column":30},"action":"insert","lines":["@html"],"id":11673}],[{"start":{"row":66,"column":14},"end":{"row":66,"column":34},"action":"remove","lines":["To login to the site"],"id":11674},{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"insert","lines":["P"]},{"start":{"row":66,"column":15},"end":{"row":66,"column":16},"action":"insert","lines":["a"]},{"start":{"row":66,"column":16},"end":{"row":66,"column":17},"action":"insert","lines":["r"]},{"start":{"row":66,"column":17},"end":{"row":66,"column":18},"action":"insert","lines":["a"]}],[{"start":{"row":66,"column":18},"end":{"row":66,"column":19},"action":"insert","lines":[" "],"id":11675},{"start":{"row":66,"column":19},"end":{"row":66,"column":20},"action":"insert","lines":["v"]},{"start":{"row":66,"column":20},"end":{"row":66,"column":21},"action":"insert","lines":["e"]},{"start":{"row":66,"column":21},"end":{"row":66,"column":22},"action":"insert","lines":["r"]}],[{"start":{"row":66,"column":22},"end":{"row":66,"column":23},"action":"insert","lines":[" "],"id":11676},{"start":{"row":66,"column":23},"end":{"row":66,"column":24},"action":"insert","lines":["l"]},{"start":{"row":66,"column":24},"end":{"row":66,"column":25},"action":"insert","lines":["a"]}],[{"start":{"row":66,"column":25},"end":{"row":66,"column":26},"action":"insert","lines":[" "],"id":11677},{"start":{"row":66,"column":26},"end":{"row":66,"column":27},"action":"insert","lines":["I"]},{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"insert","lines":["n"]}],[{"start":{"row":66,"column":28},"end":{"row":66,"column":29},"action":"insert","lines":["v"],"id":11678},{"start":{"row":66,"column":29},"end":{"row":66,"column":30},"action":"insert","lines":["i"]},{"start":{"row":66,"column":30},"end":{"row":66,"column":31},"action":"insert","lines":["t"]},{"start":{"row":66,"column":31},"end":{"row":66,"column":32},"action":"insert","lines":["a"]},{"start":{"row":66,"column":32},"end":{"row":66,"column":33},"action":"insert","lines":["c"]},{"start":{"row":66,"column":33},"end":{"row":66,"column":34},"action":"insert","lines":["i"]}],[{"start":{"row":66,"column":34},"end":{"row":66,"column":35},"action":"insert","lines":["{"],"id":11679},{"start":{"row":66,"column":35},"end":{"row":66,"column":36},"action":"insert","lines":["o"]}],[{"start":{"row":66,"column":35},"end":{"row":66,"column":36},"action":"remove","lines":["o"],"id":11680},{"start":{"row":66,"column":34},"end":{"row":66,"column":35},"action":"remove","lines":["{"]}],[{"start":{"row":66,"column":34},"end":{"row":66,"column":35},"action":"insert","lines":["ó"],"id":11681},{"start":{"row":66,"column":35},"end":{"row":66,"column":36},"action":"insert","lines":["n"]}],[{"start":{"row":68,"column":15},"end":{"row":68,"column":54},"action":"remove","lines":["Thanks for joining and have a great day"],"id":11682},{"start":{"row":68,"column":15},"end":{"row":68,"column":16},"action":"insert","lines":["L"]},{"start":{"row":68,"column":16},"end":{"row":68,"column":17},"action":"insert","lines":["o"]},{"start":{"row":68,"column":17},"end":{"row":68,"column":18},"action":"insert","lines":["s"]}],[{"start":{"row":68,"column":18},"end":{"row":68,"column":19},"action":"insert","lines":[" "],"id":11683},{"start":{"row":68,"column":19},"end":{"row":68,"column":20},"action":"insert","lines":["e"]},{"start":{"row":68,"column":20},"end":{"row":68,"column":21},"action":"insert","lines":["s"]},{"start":{"row":68,"column":21},"end":{"row":68,"column":22},"action":"insert","lines":["p"]},{"start":{"row":68,"column":22},"end":{"row":68,"column":23},"action":"insert","lines":["e"]},{"start":{"row":68,"column":23},"end":{"row":68,"column":24},"action":"insert","lines":["r"]},{"start":{"row":68,"column":24},"end":{"row":68,"column":25},"action":"insert","lines":["a"]},{"start":{"row":68,"column":25},"end":{"row":68,"column":26},"action":"insert","lines":["m"]}],[{"start":{"row":68,"column":26},"end":{"row":68,"column":27},"action":"insert","lines":["o"],"id":11684},{"start":{"row":68,"column":27},"end":{"row":68,"column":28},"action":"insert","lines":["s"]}],[{"start":{"row":66,"column":14},"end":{"row":66,"column":59},"action":"remove","lines":["Para ver la Invitación, just follow this link"],"id":11685},{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"insert","lines":["L"]},{"start":{"row":66,"column":15},"end":{"row":66,"column":16},"action":"insert","lines":["i"]},{"start":{"row":66,"column":16},"end":{"row":66,"column":17},"action":"insert","lines":["n"]},{"start":{"row":66,"column":17},"end":{"row":66,"column":18},"action":"insert","lines":["k"]}],[{"start":{"row":66,"column":18},"end":{"row":66,"column":19},"action":"insert","lines":[" "],"id":11686},{"start":{"row":66,"column":19},"end":{"row":66,"column":20},"action":"insert","lines":["p"]},{"start":{"row":66,"column":20},"end":{"row":66,"column":21},"action":"insert","lines":["a"]},{"start":{"row":66,"column":21},"end":{"row":66,"column":22},"action":"insert","lines":["r"]},{"start":{"row":66,"column":22},"end":{"row":66,"column":23},"action":"insert","lines":["a"]}],[{"start":{"row":66,"column":23},"end":{"row":66,"column":24},"action":"insert","lines":[" "],"id":11687},{"start":{"row":66,"column":24},"end":{"row":66,"column":25},"action":"insert","lines":["v"]},{"start":{"row":66,"column":25},"end":{"row":66,"column":26},"action":"insert","lines":["e"]},{"start":{"row":66,"column":26},"end":{"row":66,"column":27},"action":"insert","lines":["r"]}],[{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"insert","lines":[" "],"id":11688},{"start":{"row":66,"column":28},"end":{"row":66,"column":29},"action":"insert","lines":["l"]},{"start":{"row":66,"column":29},"end":{"row":66,"column":30},"action":"insert","lines":["a"]}],[{"start":{"row":66,"column":30},"end":{"row":66,"column":31},"action":"insert","lines":[" "],"id":11689},{"start":{"row":66,"column":31},"end":{"row":66,"column":32},"action":"insert","lines":["I"]},{"start":{"row":66,"column":32},"end":{"row":66,"column":33},"action":"insert","lines":["n"]},{"start":{"row":66,"column":33},"end":{"row":66,"column":34},"action":"insert","lines":["v"]},{"start":{"row":66,"column":34},"end":{"row":66,"column":35},"action":"insert","lines":["i"]}],[{"start":{"row":66,"column":14},"end":{"row":66,"column":50},"action":"remove","lines":["Link para ver la Invi: \" + @g.id + \""],"id":11690},{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"insert","lines":[">"]}],[{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"remove","lines":[">"],"id":11691}],[{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"insert","lines":["<"],"id":11692},{"start":{"row":66,"column":15},"end":{"row":66,"column":16},"action":"insert","lines":["a"]}],[{"start":{"row":66,"column":16},"end":{"row":66,"column":17},"action":"insert","lines":[" "],"id":11693},{"start":{"row":66,"column":17},"end":{"row":66,"column":18},"action":"insert","lines":["h"]},{"start":{"row":66,"column":18},"end":{"row":66,"column":19},"action":"insert","lines":["r"]},{"start":{"row":66,"column":19},"end":{"row":66,"column":20},"action":"insert","lines":["e"]},{"start":{"row":66,"column":20},"end":{"row":66,"column":21},"action":"insert","lines":["f"]}],[{"start":{"row":66,"column":21},"end":{"row":66,"column":22},"action":"insert","lines":["="],"id":11694},{"start":{"row":66,"column":22},"end":{"row":66,"column":23},"action":"insert","lines":["\""]},{"start":{"row":66,"column":23},"end":{"row":66,"column":24},"action":"insert","lines":["\""]}],[{"start":{"row":66,"column":24},"end":{"row":66,"column":25},"action":"insert","lines":[">"],"id":11695}],[{"start":{"row":66,"column":25},"end":{"row":66,"column":26},"action":"insert","lines":["V"],"id":11696},{"start":{"row":66,"column":26},"end":{"row":66,"column":27},"action":"insert","lines":["e"]},{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"insert","lines":["r"]}],[{"start":{"row":66,"column":28},"end":{"row":66,"column":29},"action":"insert","lines":[" "],"id":11697},{"start":{"row":66,"column":29},"end":{"row":66,"column":30},"action":"insert","lines":["I"]},{"start":{"row":66,"column":30},"end":{"row":66,"column":31},"action":"insert","lines":["n"]},{"start":{"row":66,"column":31},"end":{"row":66,"column":32},"action":"insert","lines":["v"]},{"start":{"row":66,"column":32},"end":{"row":66,"column":33},"action":"insert","lines":["i"]}],[{"start":{"row":66,"column":33},"end":{"row":66,"column":34},"action":"insert","lines":["t"],"id":11698},{"start":{"row":66,"column":34},"end":{"row":66,"column":35},"action":"insert","lines":["a"]},{"start":{"row":66,"column":35},"end":{"row":66,"column":36},"action":"insert","lines":["c"]},{"start":{"row":66,"column":36},"end":{"row":66,"column":37},"action":"insert","lines":["i"]}],[{"start":{"row":66,"column":37},"end":{"row":66,"column":38},"action":"insert","lines":["ó"],"id":11699}],[{"start":{"row":66,"column":38},"end":{"row":66,"column":39},"action":"insert","lines":["n"],"id":11700}],[{"start":{"row":66,"column":39},"end":{"row":66,"column":40},"action":"remove","lines":["."],"id":11701}],[{"start":{"row":66,"column":39},"end":{"row":66,"column":40},"action":"insert","lines":["<"],"id":11702},{"start":{"row":66,"column":40},"end":{"row":66,"column":41},"action":"insert","lines":["/"]}],[{"start":{"row":66,"column":41},"end":{"row":66,"column":42},"action":"insert","lines":["a"],"id":11703},{"start":{"row":66,"column":42},"end":{"row":66,"column":43},"action":"insert","lines":[">"]}],[{"start":{"row":66,"column":23},"end":{"row":66,"column":24},"action":"insert","lines":["h"],"id":11704},{"start":{"row":66,"column":24},"end":{"row":66,"column":25},"action":"insert","lines":["t"]},{"start":{"row":66,"column":25},"end":{"row":66,"column":26},"action":"insert","lines":["t"]},{"start":{"row":66,"column":26},"end":{"row":66,"column":27},"action":"insert","lines":["p"]},{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"insert","lines":[":"]}],[{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"remove","lines":[":"],"id":11705}],[{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"insert","lines":["s"],"id":11706},{"start":{"row":66,"column":28},"end":{"row":66,"column":29},"action":"insert","lines":[":"]},{"start":{"row":66,"column":29},"end":{"row":66,"column":30},"action":"insert","lines":["/"]},{"start":{"row":66,"column":30},"end":{"row":66,"column":31},"action":"insert","lines":["/"]}],[{"start":{"row":66,"column":22},"end":{"row":66,"column":23},"action":"remove","lines":["\""],"id":11707}],[{"start":{"row":66,"column":21},"end":{"row":66,"column":22},"action":"remove","lines":["="],"id":11708}],[{"start":{"row":66,"column":21},"end":{"row":66,"column":22},"action":"insert","lines":["="],"id":11709},{"start":{"row":66,"column":22},"end":{"row":66,"column":23},"action":"insert","lines":["'"]}],[{"start":{"row":66,"column":31},"end":{"row":66,"column":32},"action":"remove","lines":["\""],"id":11710},{"start":{"row":66,"column":31},"end":{"row":66,"column":32},"action":"insert","lines":["'"]}],[{"start":{"row":66,"column":31},"end":{"row":66,"column":32},"action":"insert","lines":["w"],"id":11711},{"start":{"row":66,"column":32},"end":{"row":66,"column":33},"action":"insert","lines":["w"]},{"start":{"row":66,"column":33},"end":{"row":66,"column":34},"action":"insert","lines":["w"]},{"start":{"row":66,"column":34},"end":{"row":66,"column":35},"action":"insert","lines":["."]},{"start":{"row":66,"column":35},"end":{"row":66,"column":36},"action":"insert","lines":["g"]},{"start":{"row":66,"column":36},"end":{"row":66,"column":37},"action":"insert","lines":["i"]},{"start":{"row":66,"column":37},"end":{"row":66,"column":38},"action":"insert","lines":["y"]}],[{"start":{"row":66,"column":38},"end":{"row":66,"column":39},"action":"insert","lines":["p"],"id":11712},{"start":{"row":66,"column":39},"end":{"row":66,"column":40},"action":"insert","lines":["a"]},{"start":{"row":66,"column":40},"end":{"row":66,"column":41},"action":"insert","lines":["b"]},{"start":{"row":66,"column":41},"end":{"row":66,"column":42},"action":"insert","lines":["l"]},{"start":{"row":66,"column":42},"end":{"row":66,"column":43},"action":"insert","lines":["o"]}],[{"start":{"row":66,"column":43},"end":{"row":66,"column":44},"action":"insert","lines":["."],"id":11713},{"start":{"row":66,"column":44},"end":{"row":66,"column":45},"action":"insert","lines":["c"]},{"start":{"row":66,"column":45},"end":{"row":66,"column":46},"action":"insert","lines":["o"]},{"start":{"row":66,"column":46},"end":{"row":66,"column":47},"action":"insert","lines":["m"]}],[{"start":{"row":66,"column":47},"end":{"row":66,"column":48},"action":"insert","lines":["/"],"id":11714}],[{"start":{"row":66,"column":48},"end":{"row":66,"column":63},"action":"insert","lines":["\" + @g.name + \""],"id":11715}],[{"start":{"row":66,"column":55},"end":{"row":66,"column":59},"action":"remove","lines":["name"],"id":11716},{"start":{"row":66,"column":55},"end":{"row":66,"column":56},"action":"insert","lines":["i"]},{"start":{"row":66,"column":56},"end":{"row":66,"column":57},"action":"insert","lines":["d"]}],[{"start":{"row":66,"column":57},"end":{"row":66,"column":58},"action":"insert","lines":["."],"id":11717},{"start":{"row":66,"column":58},"end":{"row":66,"column":59},"action":"insert","lines":["t"]},{"start":{"row":66,"column":59},"end":{"row":66,"column":60},"action":"insert","lines":["o"]}],[{"start":{"row":66,"column":58},"end":{"row":66,"column":60},"action":"remove","lines":["to"],"id":11718},{"start":{"row":66,"column":58},"end":{"row":66,"column":62},"action":"insert","lines":["to_s"]}]]},"ace":{"folds":[],"scrolltop":778,"scrollleft":0,"selection":{"start":{"row":66,"column":62},"end":{"row":66,"column":62},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":50,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1536274416645,"hash":"965508a1f8e49e3a0e751e3bba5ad24296f358ca"}