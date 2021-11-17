class Cookie < ActiveRecord::Base
  belongs_to :storage, polymorphic: :true
  
  validates :storage, presence: true
  def ready?
    # return self.cooked
    return true
  end
end
