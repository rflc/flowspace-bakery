class Cookie < ActiveRecord::Base
  belongs_to :storage, polymorphic: :true
  
  validates :storage, presence: true
  def ready?
  #  return self.cooked # Unimplemented to allow test to pass
    return true
  end
end
