class Competency < ActiveRecord::Base
  attr_accessible :competencies, :competency_value, :competency_cpv, :competency_options, :job_title,
                  :department, :office
  belongs_to :position
end
