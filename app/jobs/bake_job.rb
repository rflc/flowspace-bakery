class BakeJob < ApplicationJob
  queue_as :default
    
  def perform(cookie)
    sleep 5#120
    cookie.update(cooked: true)
    UpdateController.new.update_view(cookie)
    puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  end
end
