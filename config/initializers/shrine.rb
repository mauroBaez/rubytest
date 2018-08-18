require "shrine"


Shrine.plugin :activerecord
Shrine.plugin :backgrounding
Shrine.plugin :logging
Shrine.plugin :determine_mime_type
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data
Shrine.plugin :upload_endpoint



if Rails.env.production?
  require "./config/cloudinarycredentials"

  require "shrine/storage/cloudinary"
  
  require "./jobs/promote_job"
  require "./jobs/delete_job"
  
  Cloudinary.config(
    cloud_name: ENV.fetch("CLOUDINARY_CLOUD_NAME"),
    api_key:    ENV.fetch("CLOUDINARY_API_KEY"),
    api_secret: ENV.fetch("CLOUDINARY_API_SECRET"),
  )
  
  Shrine.storages = {
    cache: Shrine::Storage::Cloudinary.new(prefix: "cache"),
    store: Shrine::Storage::Cloudinary.new(prefix: "store"),
  }
  
  Shrine.plugin :backgrounding
  Shrine.plugin :logging
  
  
#  Shrine.plugin :presign_endpoint, presign_options: { method: :put }
#  s3_options = {
#    access_key_id:     "uuuu",
#    secret_access_key: "uuuuu",
#    region:            "us-east-2",
#    bucket:            "papita",
#  }
#  Shrine.storages = {
#    cache: Shrine::Storage::S3.new(prefix: "cache", **s3_options),
#    store: Shrine::Storage::S3.new(**s3_options),
#  }

else
  require "shrine/storage/file_system"

  Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
    store: Shrine::Storage::FileSystem.new("public", prefix: "uploads"),       # permanent
  }
end

Shrine::Attacher.promote { |data| PromoteJob.perform_async(data) }
Shrine::Attacher.delete { |data| DeleteJob.perform_async(data) }