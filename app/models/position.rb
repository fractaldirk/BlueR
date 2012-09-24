class Position < ActiveRecord::Base
attr_accessible :position_name, :job_title, :valid_from, :job_grade, :reports_to, :line_manages, :overall_purpose,
                :scope, :specific_work, :competencies_attributes, :name, :experience, :date_birth
has_many :competencies 
accepts_nested_attributes_for :competencies
end

