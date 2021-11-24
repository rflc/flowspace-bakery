class BakeJob < ApplicationJob
  queue_as :default
   
  def perform(cookie)
    sleep 5#120
    cookie.update(cooked: true)
    update_view = ApplicationController.render(:partial => "ovens/cookie_update",
                                               :locals => {cookie: cookie})
#    test = update_view = ApplicationController.render(:partial => "ovens/test",
#                                                      :locals => {cookie: cookie})
    ActionCable.server.broadcast "oven_1", {cookie_update: update_view}
  end
end
