$(document)
	.on("blur", ".currency", function () {
		var rounded = 2;
		if ($(this).attr("rounded") !== undefined) {
			rounded = Number($(this).attr("rounded"));
		}
		$(this).formatCurrency({
			colorize: true,
			negativeFormat: "-%s%n",
			roundToDecimalPlace: rounded,
		});
	})
	.on("keyup", ".currency", function (e) {
		var e = window.event || e;
		var keyUnicode = e.charCode || e.keyCode;
		if (e !== undefined) {
			switch (keyUnicode) {
				case 16:
					break; // Shift
				case 17:
					break; // Ctrl
				case 18:
					break; // Alt
				// case 27: this.value = ''; break; // Esc: clear entry
				case 27:
					break; // Esc: clear entry
				case 35:
					break; // End
				case 36:
					break; // Home
				case 37:
					break; // cursor left
				case 38:
					break; // cursor up
				case 39:
					break; // cursor right
				case 40:
					break; // cursor down
				case 78:
					break; // N (Opera 9.63+ maps the "." from the 11111111 key section to the "N" key too!) (See: http://unixpapa.com/js/key.html search for ". Del")
				case 110:
					break; // . number block (Opera 9.63+ maps the "." from the number block to the "N" key (78) !!!)
				case 190:
					break; // .
				default:
					$(this).formatCurrency({
						colorize: true,
						negativeFormat: "-%s%n",
						roundToDecimalPlace: -1,
						eventOnDecimalsEntered: true,
					});
			}
		}
	})
	.on("blur", ".currency", function (e) {
		var rounded = 2;
		if ($(this).attr("rounded") !== undefined) {
			rounded = Number($(this).attr("rounded"));
		}
		$(this).formatCurrency({
			colorize: true,
			negativeFormat: "-%s%n",
			roundToDecimalPlace: rounded,
		});
	});

$(document).on("keydown", ".currency", function (event) {
	// Allow: backspace, delete, tab, escape, and enter
	if (
		event.keyCode == 46 ||
		event.keyCode == 8 ||
		event.keyCode == 9 ||
		event.keyCode == 27 ||
		event.keyCode == 13 ||
		event.keyCode == 190 ||
		event.keyCode == 110 ||
		// Allow: Ctrl+A
		(event.keyCode == 65 && event.ctrlKey === true) ||
		// Allow: home, end, left, right
		(event.keyCode >= 35 && event.keyCode <= 39)
	) {
		// let it happen, don't do anything
		return;
	} else {
		// Ensure that it is a number and stop the keypress
		if (
			event.shiftKey ||
			((event.keyCode < 48 || event.keyCode > 57) &&
				(event.keyCode < 96 || event.keyCode > 105))
		) {
			event.preventDefault();
		}
	}
});

/////////////////////////// WITHOUT DECIMAL

$(document)
	.on("blur", ".currency_notdecimal", function () {
		var rounded = 0;
		if ($(this).attr("rounded") !== undefined) {
			rounded = Number($(this).attr("rounded"));
		}
		$(this).formatCurrency({
			colorize: true,
			negativeFormat: "-%s%n",
			roundToDecimalPlace: rounded,
		});
	})
	.on("keyup", ".currency_notdecimal", function (e) {
		var e = window.event || e;
		var keyUnicode = e.charCode || e.keyCode;
		if (e !== undefined) {
			switch (keyUnicode) {
				case 16:
					break; // Shift
				case 17:
					break; // Ctrl
				case 18:
					break; // Alt
				// case 27: this.value = ''; break; // Esc: clear entry
				case 27:
					break; // Esc: clear entry
				case 35:
					break; // End
				case 36:
					break; // Home
				case 37:
					break; // cursor left
				case 38:
					break; // cursor up
				case 39:
					break; // cursor right
				case 40:
					break; // cursor down
				case 78:
					break; // N (Opera 9.63+ maps the "." from the 11111111 key section to the "N" key too!) (See: http://unixpapa.com/js/key.html search for ". Del")
				case 110:
					break; // . number block (Opera 9.63+ maps the "." from the number block to the "N" key (78) !!!)
				case 190:
					break; // .
				default:
					$(this).formatCurrency({
						colorize: true,
						negativeFormat: "-%s%n",
						roundToDecimalPlace: -1,
						eventOnDecimalsEntered: true,
					});
			}
		}
	})
	.on("blur", ".currency_notdecimal", function (e) {
		var rounded = 0;
		if ($(this).attr("rounded") !== undefined) {
			rounded = Number($(this).attr("rounded"));
		}
		$(this).formatCurrency({
			colorize: true,
			negativeFormat: "-%s%n",
			roundToDecimalPlace: rounded,
		});
	});

$(document).on("keydown", ".currency_notdecimal", function (event) {
	// Allow: backspace, delete, tab, escape, and enter
	if (
		event.keyCode == 46 ||
		event.keyCode == 8 ||
		event.keyCode == 9 ||
		event.keyCode == 27 ||
		event.keyCode == 13 ||
		event.keyCode == 86 ||
		event.keyCode == 82 ||
		// Allow: Ctrl+A
		(event.keyCode == 65 && event.ctrlKey === true) ||
		// Allow: home, end, left, right
		(event.keyCode >= 35 && event.keyCode <= 39)
	) {
		// let it happen, don't do anything
		return;
	}
});
