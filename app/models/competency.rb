class Competency < ActiveRecord::Base
  attr_accessible :competencies, :competency_value, :competency_cpv
  belongs_to :position
end