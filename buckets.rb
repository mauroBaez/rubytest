#require "aws-sdk-s3"

#client = Aws::S3::Client.new(
#  access_key_id:     "AKIAJOBPI4ABZVXNLYBA",
#  secret_access_key: "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",
#  region:            "us-east-2",
#)

#client.put_bucket_cors(
  #bucket: "papita",
#  cors_configuration: {
#    cors_rules: [{
#      allowed_headers: ["Authorization", "Content-Type", "Origin"],
#      allowed_methods: ["GET", "POST", "PUT"],
#      allowed_origins: ["*"],
#      max_age_seconds: 3000,
#    }]
#  }
#)