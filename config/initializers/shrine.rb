require "shrine"
require "cloudinary"
require "shrine/storage/cloudinary"

Shrine.plugin :activerecord
Shrine.plugin :backgrounding
Shrine.plugin :logging
Shrine.plugin :determine_mime_type
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data
Shrine.plugin :upload_endpoint



if Rails.env.production?
  

Cloudinary.config(
  cloud_name: "aurelio",
  api_key:    "367271932682191",
  api_secret: "MjVw1Rnj9wINNAk8bOo6X5uGt_E",
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}
else
  Cloudinary.config(
  cloud_name: "aurelio",
  api_key:    "367271932682191",
  api_secret: "MjVw1Rnj9wINNAk8bOo6X5uGt_E",
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: "cache"), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: "store"),
}
end

Shrine::Attacher.promote { |data| PromoteJob.perform_async(data) }
Shrine::Attacher.delete { |data| DeleteJob.perform_async(data) }