module HomeHelper
  def select_default(value, predetermined_options = [])
  	if predetermined_options.include? value
  		return value
  	else
  		return ''
  	end
  end

  def display_none?(default_value)
  	if default_value == ''
  		''
  	else
  		' style=display:none;'
  	end
  end

  def data_action_map(options)
  	options.map{ |i| [i[0], i[1], {'data-action'=>i[2]}] }
  end

  def color_field(o, option)
    render partial: 'color_field', locals: {o: o, option_value: option}
  end

  def pixel_field(o, option)
    render partial: 'number_field', locals: {o: o, option_value: option}
  end

  def margin_padding_field(o, option)
    render partial: 'margin_padding_fields', locals: {o: o, option_value: option}
  end

  def header_display_none?(value)
    unless @option.header_display == value; ' style=display:none;'; end
  end

  def float_position_inputs(value)
    values = value.split(' ').map{ |i| i.gsub(';', '').gsub('px', '').gsub(/^[a-z]*:/, '') }
    position = []

    position[0] = 'b' if values[0] == 'auto'
    position[1] = 'l' if values[1] == 'auto'
    position[0] = 't' if values[2] == 'auto'
    position[1] = 'r' if values[3] == 'auto'

    if values[0] == 'auto'
      first = values[2]
    else
      first = values[0]
    end

    if values[1] == 'auto'
      last = values[3]
    else
      last = values[1]
    end

    position = position.join('')

    {
      position: position,
      first: first,
      last: last
    }
  end
end