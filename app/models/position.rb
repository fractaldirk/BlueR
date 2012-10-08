class Position < ActiveRecord::Base
attr_accessible :position_name, :job_title, :valid_from, :job_grade, :reports_to, :line_manages, :overall_purpose,
                :scope, :specific_work_env, :competencies_attributes, :name, :date_birth,
		:attitude1, :attitude2, :attitude3, :attitude4, :attitude5, :picture, :conceptual, :implementation,
		:support, :gender_string, :personal_development, :nationality_string, :residential_status_string, :start_date,
		:office, :unique_position, :fte, :permanent
has_many :competencies 
accepts_nested_attributes_for :competencies, allow_destroy: true
validates_presence_of :job_title
end

