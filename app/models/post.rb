class Post < ActiveRecord::Base
attr_accessible :idea_title, :idea_name, :idea_body, :tag
validates :idea_name,  :presence => true
validates :idea_title, :presence => true,
                    :length => { :minimum => 5 }
validates_presence_of :idea_body

has_many :comments, :dependent => :destroy
has_many :projects, :dependent => :destroy
end
