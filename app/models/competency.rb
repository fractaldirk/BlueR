class Competency < ActiveRecord::Base
  attr_accessible :competencies, :competency_value, :competency_cpv, :competency_options
  belongs_to :position
end
