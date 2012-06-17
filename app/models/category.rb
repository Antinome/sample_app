class Category < ActiveRecord::Base
  
  attr_accessible :id, :name, :parent_id, :rgt, :lft ,:depth    
  
  # Behaviours
  acts_as_nested_set

  # Callbacks
  after_save :update_depth

  # Validations
  validates_presence_of :name
  validates_uniqueness_of :name

  def update_depth
    unless self.level == self.depth
      self.update_attribute(:depth, self.level)
      self.children.each{|child| child.update_depth }
    end
  end
  
end
