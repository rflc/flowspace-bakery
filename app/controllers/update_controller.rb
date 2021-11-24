class UpdateController < AbstractController::Base
  
  include AbstractController::Rendering
  include AbstractController::Layouts
  include AbstractController::Helpers
  include AbstractController::Translation
  include AbstractController::AssetPaths
#  include ActionController::UrlWriter

  self.view_paths = "app/views"

  def update_view(cookie)
    @cookie = cookie
#    baked_cookies = render(:partial => "ovens/cookie_update", :locals => {cookie: @cookie})
    ActionCable.server.broadcast "oven_1", {cookie_update: "baked_cookies"}
#    ActionCable.server.broadcast "oven_#{$oven.id}", {cookie_update: "Test"}
  end
end


