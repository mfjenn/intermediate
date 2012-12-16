class Reply < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :post
  belongs_to :user
  validates_presence_of :user_id
end
