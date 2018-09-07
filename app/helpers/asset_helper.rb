module AssetHelper
  # Somehow, you can't use Rails or Sprockets helpers directly if you're not in a view. You have to call them from the context of a Controller.

  def full_digest_url(source)
    ActionController::Base.asset_host + ActionController::Base.helpers.asset_path(source)
  end
end