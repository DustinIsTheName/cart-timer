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

  def float_position_options
    [
      ['Top, Right', 'tr'],
      ['Top, Left', 'tl'],
      ['Bottom, Right', 'br'],
      ['Bottom, Left', 'bl']
    ]
  end

  def low_time_location_options
    [
      ['Message Bar', '', 'show'],
      ['Modal', 'modal', 'hide']
    ]
  end

  def low_time_location_bar_options
    [
      ['Top', 'top'],
      ['Bottom', 'bottom']
    ]
  end

  def low_time_warning_options
    [
      ['30 seconds', 30],
      ['1 minute', 60],
      ['3 minutes', 180],
      ['5 minutes', 300]
    ]
  end

  def low_time_warning_2_options
    [
      ['Don’t show 2nd warning', -1],
      ['30 seconds', 30],
      ['1 minute', 60],
      ['3 minutes', 180]
    ]
  end

  def header_low_warning_options
    [
      ['Same as “Show Warning” in Low Time Warning (General Settings)', @option.low_time_warning],
      ['30 seconds', 30],
      ['1 minute', 60],
      ['3 minutes', 180],
      ['5 minutes', 300]
    ]
  end

  def header_low_animation_options
    [
      ['None', 'none'],
      ['Pulse', 'pulse'],
      ['Blink', 'blink']
    ]
  end
end