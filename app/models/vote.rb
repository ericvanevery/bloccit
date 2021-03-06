class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :value, :post

  validates :value, inclusion: { in: [-1, 1], message: "%{value} is not a valid vote." }

after_save :update_post
 def up_vote?
    value == 1
  end

  def down_vote?
    value == -1
  end
  private

  def update_post
    self.post.update_rank  
  end 
   def update_rank
    age = (self.created_at - Time.new(1970,1,1)) / 86400
    new_rank = points + age

    self.update_attribute(:rank, new_rank)
  end

 
  

end
