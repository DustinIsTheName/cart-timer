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
  		' style="display:none;"' 
  	end
  end
end