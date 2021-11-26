class BakeJob < ApplicationJob
  queue_as :default
   
  def perform(cookie)
    sleep 5 #120 #cooking time
    cookie.update(cooked: true)
    update_view = ApplicationController.render(:partial => "ovens/cookie_update",
                                               :locals => {cookie: cookie})
    ActionCable.server.broadcast "oven_#{cookie.storage_id}", {cookie_update: update_view}
  end
end
