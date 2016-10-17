require 'faker'

FactoryGirl.define do
	factory :shop do |f|
    f.shopify_domain "cart-timer.myshopify.com"
    f.shopify_token "b09c090a3b6b5805e637b3f13659f2c1"
	end

  factory :option do |f|
		f.custom_css "css"
		f.timer_label_text { Faker::Hacker.say_something_smart }
		f.timer_warning_message { Faker::StarWars.quote }
		f.timer_expired_message { Faker::ChuckNorris.fact }
		f.header_color "#43e9b0"
		f.header_font_size "20px"
		f.header_border_color "#7243a7"
		f.header_background_color "#c3585b"
		f.header_border_radius "20px"
		f.header_padding "5px 10px 5px 10px"
		f.header_margin "15px 20px 25x 20px"
		f.quick_view_color "#73e936"
		f.quick_view_font_size "12px"
		f.quick_view_border_color "#4c686a"
		f.quick_view_background_color "#67a74b"
		f.quick_view_border_radius "4px"
		f.quick_view_padding "1px 2px 3px 4px"
		f.quick_view_margin "4px 3px 2px 1px"
		f.message_color "#b10137"
		f.message_font_size "30px"
		f.message_border_color "#40dd08"
		f.message_background_color "#8ff1ae"
		f.message_border_radius "4px"
		f.message_padding "30px 20px 30px 20px"
		f.message_margin "10px 15px 10px 15px"
		f.button_1_text { Faker::Pokemon.name }
		f.button_1_color "#3cefa9"
		f.button_1_font_size "10px"
		f.button_1_background_color "#55b10a"
		f.button_1_padding "5px 10px 7px 10px"
		f.button_1_border "1px solid #8fdd70"
		f.button_1_border_radius "4px"
		f.button_2_text { Faker::Pokemon.location }
		f.button_2_color "#476005"
		f.button_2_font_size "10px"
		f.button_2_background_color "#ccadb8"
		f.button_2_padding "10px 10px 10px 10px"
		f.button_2_border "5px dashed #b0363c"
		f.button_2_border_radius "5px"
  end
end