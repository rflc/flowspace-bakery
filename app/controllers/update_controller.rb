class UpdateController < AbstractController::Base
  
  include AbstractController::Rendering
#  include AbstractController::Layouts
  include AbstractController::Helpers
  include AbstractController::Translation
  include AbstractController::AssetPaths
#  include ActionController::UrlWriter

  self.view_paths = "app/views"

  def update_view(cookie)
    puts "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZzz"
    baked_cookies = ApplicationControlle.render.(:partial =>  "ovens/cookie_update", :locals => {cookie: cookie})
    ActionCable.server.broadcast "oven_#{cookie.storage_id}", {cookie_update: baked_cookies}
  end
end


