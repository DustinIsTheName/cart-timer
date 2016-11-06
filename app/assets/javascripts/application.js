// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery.minicolors

var ready = function() {
	$('.color_picker_visable').minicolors();
	$('.color_picker_visable').change(function() {
		var color = $(this).data('color');
		$('.color-'+color).val($(this).val());
	});

	function conditionalLogic() {
		var $this = $(this),
				condition = $this.data('condition'),
				scope = $this.data('scope');

		if (scope) {

			$('.conditional-receive[data-scope="' + scope + '"]').hide();
			$('.conditional-receive[data-condition="' + condition + '"]').show();

		} else if($this.is('select')) {
			
			var value = $this.val(),
					option = $this.find('option[value="' + value + '"]'),
					action = option.data('action');

			if (action === 'show') $('.conditional-receive[data-condition="' + condition + '"]').show();
			if (action === 'hide') $('.conditional-receive[data-condition="' + condition + '"]').hide();

		} else {

		}
	}

	$('select.conditional-send, input.conditional-send').change(conditionalLogic);
	$('div.conditional-send').click(conditionalLogic);




};

$(document).ready(ready);
$(document).on('page:change', ready);