{"filter":false,"title":"shrine.rb","tooltip":"/config/initializers/shrine.rb","ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":19,"column":32},"end":{"row":19,"column":32},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"88a2bb3447d94dd5cb4d0d5d23b8262704bb9b2f","undoManager":{"mark":6,"position":6,"stack":[[{"start":{"row":14,"column":2},"end":{"row":47,"column":0},"action":"remove","lines":["require \"./config/cloudinarycredentials\"","","  require \"shrine/storage/cloudinary\"","  ","  #require \"./jobs/promote_job\"","  #require \"./jobs/delete_job\"","  ","  Cloudinary.config(","    cloud_name: ENV.fetch(\"CLOUDINARY_CLOUD_NAME\"),","    api_key:    ENV.fetch(\"CLOUDINARY_API_KEY\"),","    api_secret: ENV.fetch(\"CLOUDINARY_API_SECRET\"),","  )","  ","  Shrine.storages = {","    cache: Shrine::Storage::Cloudinary.new(prefix: \"cache\"),","    store: Shrine::Storage::Cloudinary.new(prefix: \"store\"),","  }","  ","  Shrine.plugin :backgrounding","  Shrine.plugin :logging","  ","  ","#  Shrine.plugin :presign_endpoint, presign_options: { method: :put }","#  s3_options = {","#    access_key_id:     \"uuuu\",","#    secret_access_key: \"uuuuu\",","#    region:            \"us-east-2\",","#    bucket:            \"papita\",","#  }","#  Shrine.storages = {","#    cache: Shrine::Storage::S3.new(prefix: \"cache\", **s3_options),","#    store: Shrine::Storage::S3.new(**s3_options),","#  }",""],"id":17},{"start":{"row":14,"column":2},"end":{"row":26,"column":1},"action":"insert","lines":["require \"cloudinary\"","require \"shrine/storage/cloudinary\"","","Cloudinary.config(","  cloud_name: \"...\",","  api_key:    \"...\",","  api_secret: \"...\",",")","","Shrine.storages = {","  cache: Shrine::Storage::Cloudinary.new(prefix: \"cache\"), # for direct uploads","  store: Shrine::Storage::Cloudinary.new(prefix: \"store\"),","}"]}],[{"start":{"row":14,"column":2},"end":{"row":15,"column":35},"action":"remove","lines":["require \"cloudinary\"","require \"shrine/storage/cloudinary\""],"id":18}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":35},"action":"insert","lines":["require \"cloudinary\"","require \"shrine/storage/cloudinary\""],"id":19}],[{"start":{"row":19,"column":15},"end":{"row":19,"column":18},"action":"remove","lines":["..."],"id":20},{"start":{"row":19,"column":15},"end":{"row":19,"column":30},"action":"insert","lines":["367271932682191"]}],[{"start":{"row":20,"column":15},"end":{"row":20,"column":18},"action":"remove","lines":["..."],"id":21},{"start":{"row":20,"column":15},"end":{"row":20,"column":42},"action":"insert","lines":["MjVw1Rnj9wINNAk8bOo6X5uGt_E"]}],[{"start":{"row":18,"column":15},"end":{"row":18,"column":18},"action":"remove","lines":["..."],"id":22},{"start":{"row":18,"column":15},"end":{"row":18,"column":16},"action":"insert","lines":["a"]},{"start":{"row":18,"column":16},"end":{"row":18,"column":17},"action":"insert","lines":["u"]},{"start":{"row":18,"column":17},"end":{"row":18,"column":18},"action":"insert","lines":["r"]},{"start":{"row":18,"column":18},"end":{"row":18,"column":19},"action":"insert","lines":["e"]},{"start":{"row":18,"column":19},"end":{"row":18,"column":20},"action":"insert","lines":["l"]},{"start":{"row":18,"column":20},"end":{"row":18,"column":21},"action":"insert","lines":["i"]},{"start":{"row":18,"column":21},"end":{"row":18,"column":22},"action":"insert","lines":["o"]}],[{"start":{"row":28,"column":2},"end":{"row":33,"column":3},"action":"remove","lines":["require \"shrine/storage/file_system\"","","  Shrine.storages = {","    cache: Shrine::Storage::FileSystem.new(\"public\", prefix: \"uploads/cache\"), # temporary","    store: Shrine::Storage::FileSystem.new(\"public\", prefix: \"uploads\"),       # permanent","  }"],"id":23},{"start":{"row":28,"column":2},"end":{"row":37,"column":1},"action":"insert","lines":["Cloudinary.config(","  cloud_name: \"aurelio\",","  api_key:    \"367271932682191\",","  api_secret: \"MjVw1Rnj9wINNAk8bOo6X5uGt_E\",",")","","Shrine.storages = {","  cache: Shrine::Storage::Cloudinary.new(prefix: \"cache\"), # for direct uploads","  store: Shrine::Storage::Cloudinary.new(prefix: \"store\"),","}"]}]]},"timestamp":1534952696658}