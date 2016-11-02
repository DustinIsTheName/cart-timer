module OptionsHelper
  def starting_time_options
		[
			['3 minutes', '180', 'hide'], 
			['5 minutes', '300', 'hide'], 
			['10 minutes', '600', 'hide'], 
			['Custom', '', 'show']
		]
  end

  def timer_format_options
    [
      ['4:17', 'clock'], 
      ['4m 17s', 'letters']
    ]
  end

  def product_rule_options
    [
      ['Don’t adjust time', 'none', 'hide'], 
      ['Reset timer to Starting Time', 'reset', 'hide'], 
      ['Add additional time (per added product)', '', 'show']
    ]
  end

  def product_rule_more_time_options
    [
      ['30 seconds', '30'],
      ['1 minute', '60'],
      ['3 minutes', '180'],
      ['5 minutes', '300']
    ]
  end
end