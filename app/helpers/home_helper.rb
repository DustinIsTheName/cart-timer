module HomeHelper
  def select_default(value, predetermined_options = [])
  	if predetermined_options.include? value
  		return value
  	else
  		return ''
  	end
  end
end