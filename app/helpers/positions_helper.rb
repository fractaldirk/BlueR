module PositionsHelper
  def office_path
    if @position.office == 1
      positions_international_path
    elsif @position.office == 2
      positions_unitedkingdom_path
    elsif @position.office == 3
      positions_netherlands_path
    elsif @position.office == 4
      positions_newzealand_path
    elsif
      positions_path
    end
  end
end
