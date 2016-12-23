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

  def number_field_label_text(o, option_string, option_value)

    if option_string.include? 'font_size'
      o.label option_value, 'Font Size'
    elsif option_string.include? 'timer_size'
      o.label option_value, 'Timer Size'
    elsif option_string.include? 'opacity'
      o.label option_value, 'Opacity'
    else
      o.label option_value
    end

  end

  def number_field_bottom_label(option_string)

    if option_string.include? 'link'
      ('<label for="option_' + option_string + '" class="below">Link</label>').html_safe
    elsif option_string.include? 'top'
      ('<label for="option_' + option_string + '" class="below">Top</label>').html_safe
    elsif option_string.include? 'bottom' or option_string.include? 'opacity'  
      ('<label for="option_' + option_string + '" class="below">Bottom</label>').html_safe
    elsif option_string.include? 'border_radius'
      ('<label for="option_' + option_string + '" class="below">Border Radius</label>').html_safe
    end

  end

end