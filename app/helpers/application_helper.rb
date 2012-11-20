module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_submit(text)
  link_to_function text, "$(this).closest('form').submit()"
  end

  def office_path
    if current_user.user_office == 1
      positions_international_path
    elsif current_user.user_office == 2
      positions_unitedkingdom_path
    elsif current_user.user_office == 3
      positions_netherlands_path
    elsif current_user.user_office == 4
      positions_newzealand_path
    elsif current_user.user_office == 5
      positions_livescreen_path
    end
  end

end
