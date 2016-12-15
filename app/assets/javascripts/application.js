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

			if (action === 'show') $('.conditional-receive[data-condition="' + condition + '"]').slideDown();
			if (action === 'hide') $('.conditional-receive[data-condition="' + condition + '"]').slideUp();

		} else {

		}
	}

	$('.dynamic-send.margin_padding').keyup(function() {
		var option = $(this).data('option');

		var top = $('[data-option="'+option+'"][data-margin-padding="0"]').val();
		var right = $('[data-option="'+option+'"][data-margin-padding="1"]').val();
		var bottom = $('[data-option="'+option+'"][data-margin-padding="2"]').val();
		var left = $('[data-option="'+option+'"][data-margin-padding="3"]').val();

		if (!top) top = 0;
		if (!right) right = 0;
		if (!bottom) bottom = 0;
		if (!left) left = 0;

		$('.dynamic-receive[data-option="'+option+'"]').val(top+'px '+right+'px '+bottom+'px '+left+'px');
	});

	$('.dynamic-send[data-option="low_time_location"]').change(function() {
		if ($('.type[data-option="low_time_location"]').val() === 'modal') {
			$('.dynamic-receive[data-option="low_time_location"]').val('modal');
		} else {
			var position = $('.position[data-option="low_time_location"]').val();
			$('.dynamic-receive[data-option="low_time_location"]').val(position);
		}
	});

	function adjustPositionValue() {
		var position = $('.float-position-select').val().split('');
		var values = {
			top: 'auto',
			right: 'auto',
			bottom: 'auto',
			left: 'auto'
		};

		if (position[0] == 't') {
			values.top = $('.float-number-first input').val() + 'px';
		} else {
			values.bottom = $('.float-number-first input').val() + 'px';
		}

		if (position[1] == 'r') {
			values.right = $('.float-number-last input').val() + 'px';
		} else {
			values.left = $('.float-number-last input').val() + 'px';
		}

		$('.dynamic-receive[data-option="float_position"]').val('top:'+ values.top +'; right:'+ values.right +'; bottom:'+ values.bottom +'; left:'+ values.left +';')
	}

	$('.float-position-select').change(function() {
		var value = $(this).val().split('');

		if (value[0] == 't') {
			$('.float-number-first label').text('top');
		} else {
			$('.float-number-first label').text('bottom');
		}

		if (value[1] == 'r') {
			$('.float-number-last label').text('right');
		} else {
			$('.float-number-last label').text('left');
		}

		adjustPositionValue();
	});

	$('input[type="number"][data-option="float_position"]').keyup(adjustPositionValue);

	$('select.conditional-send, input.conditional-send').change(conditionalLogic);
	$('div.conditional-send').click(conditionalLogic);

	$('.tabs .well').click(function() {
		$('.tabs .well').removeClass('cssarrow');
		$(this).addClass('cssarrow');
	});

	$('#option_low_time_warning').change(function() {
		var time = $(this).val();

		$('.low-time-select select option:first-child').attr('value', time);
	});

	$('#option_low_time_warning').change(function() {
		var seconds = parseInt( $(this).val() );

		$('#option_low_time_warning_2 option').each(function() {
			console.log($(this).val(), seconds);
			if (parseInt( $(this).val() ) < seconds) {
				$(this).show();
			} else {
				$(this).hide();
			}
		});
	});
};

$(document).ready(ready);
$(document).on('page:change', ready);
$(document).on('turbolinks:load', ready);


















