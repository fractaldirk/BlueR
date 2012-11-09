class Project < ActiveRecord::Base
  attr_accessible :name, :email, :office, :post_id
  belongs_to :post
end
