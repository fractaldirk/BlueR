module PositionsHelper
  def manage_edits
    if @position.office == current_user.user_office
      true
    elsif current_user.user_office == 5
      true
    else
      false
    end
  end

  def competency_job_title
    @position.job_title
  end

  def competency_department
    @position.department
  end

  def competency_office
    @position.office
  end

end
