class Milestone < ActiveRecord::Base
attr_accessible :finished_at, :task, :creator
belongs_to :post
end
