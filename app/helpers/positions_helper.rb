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
end
