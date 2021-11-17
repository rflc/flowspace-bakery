class BakeJob < ApplicationJob
    queue_as :default
    def perform(id)
      sleep 120
      Cookie.where(id: id).update(cooked: true)
    end
end
