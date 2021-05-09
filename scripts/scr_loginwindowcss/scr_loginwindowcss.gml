function scr_loginwindowcss() {
#region login

	gms_show_replace(wt_login, @"<constants>

	</constants>

	<styles>

	overlay:

	{

		background: 0;



		open:

		{

			background-alpha: 0.5;

		}



		close:

		{

			background-alpha: 0;

		}

	}



	window:

	{

		width: preferred;

		height: min;



		min-width: 200;

		preferred-width: 640;



		center: true;



		drop-shadow: 2;

		drop-shadow-intensity: 0.04;

		drop-shadow-spread: 10;



		open:

		{

			y-offset: 0;

			tween-speed: 0.3;

		}



		close:

		{

			y-offset: 1;

			tween-speed: 0.3;

		}



		extrawindow:

		{

			y-offset: -1;

		}



		unextrawindow:

		{

			y-offset: 0;

		}



		error:

		{

			x-offset: 0.005;

			tween-type: shake;

			tween-speed: 1;

		}

	}



	contents:

	{

		width: max;

		height: max;

		padding: 20;	

	}



	titlebar:

	{

		width: max;

		height: 52;



		title:

		{

			color: @c_text;

			font: @f_title;

			width: max;

			height: max;

			center: 1;

		}



		closearrow:

		{

			height: max;

			color: @c_text;

			width: 32;

			horizontal-float: 1;



			hover:

			{

				arrow-size: 15;

				arrow-length: 34;

				alpha: 1.0;

				tween-speed: 0.2;

			}



			unhover:

			{

				arrow-size: 10;

				arrow-length: 20;

				alpha: 0.5;

				tween-speed: 0.2;

			}

		}

	}



	backgrounds:

	{

		normal:

		{

			background-1: @c_background1;

			background-2: @c_background1;

			background-3: @c_background2;

			background-4: @c_background2;

		}



		highlight:

		{

			background-1: @c_button1;

			background-2: @c_button1;

			background-3: @c_button2;

			background-4: @c_button2;

		}



		hover:

		{

			background-1: @c_buttonhover1;

			background-2: @c_buttonhover1;

			background-3: @c_buttonhover2;

			background-4: @c_buttonhover2;

			tween-speed: 0.1;

		}

	}



	border:

	{

		border-size: 1;

		border-color: @c_border;

	}



	tos:

	{

		font: @f_small;

		text-wrapping: true;

		width: max;

		height: 50;

		margin-bottom: -20;

			color: @c_text;

	}



	bottom:

	{

		width: max;

		height: min;

		vertical-float: true;

	}



	button:

	{

		width: max;

		height: 52;

		font: @f_text;

		color: @c_text;

		margin: 5;

	}



	buttonrow:

	{

		width: max;

	}



	textbox:

	{

		width: max;

		font: @f_text;

		color: @c_text;

		tip-color: @c_grey_text;



		margin:

		{

			margin: 8;

		}



		show:

		{

			height: 40;

			alpha: 1;

		}



		hide:

		{

			height: 0;

			alpha: 0;

		}

	}



	guest:

	{

		width: min;

		height: max;

		font: @f_text;

		color: @c_text;



		show:

		{

			width: min;

			alpha: 1;

			tween-speed: 0.3;

			padding-left: 40;

			padding-right: 40;

		}



		hide:

		{

			width: 0;

			alpha: 0;

			padding-left: 0;

			padding-right: 0;

			tween-speed: 0.3;

		}

	}



	error:

	{

		font: @f_small;

		color: @c_fault_color;

		text-wrapping: true;

		width: max;



		error:

		{

			alpha: 1;

			height: min;

			padding-top: 10;

			padding-bottom: 10;

			tween-speed: 0.5;

		}



		unerror:

		{

			alpha: 0;

			height: 0;

			tween-speed: 0.5;

		}

	}



	textboxes:

	{

		height: min;

		margin-bottom: 5;

	}

	</styles>

	<layout>

		<canvas

			name[overlay]

			style[overlay, overlay.close]

			open[overlay.open]

			close[overlay.close]

			extrawindow[overlay.close]

			unextrawindow[overlay.open]>

		

			<canvas

				name[window]

				style[window, window.close, backgrounds.normal, border] 

				open[window.open] 

				close[window.close]

				extrawindow[window.extrawindow] 

				unextrawindow[window.unextrawindow]

				error[window.error]>

				<multielement

					name[titlebar]

					style[titlebar, backgrounds.highlight]>

					<label

						name[title]

						style[titlebar.title]>@txt_loginheader</label>

					<arrow 

						style[titlebar.closearrow, titlebar.closearrow.unhover]

						hover[titlebar.closearrow.hover]

						unhover[titlebar.closearrow.unhover]

						name[login.close] />

				</multielement>



				<canvas 

					style[contents]

					name[contents]>

					<container 

						style[textboxes]

						name[textboxes]>

						<multielement style[textbox, textbox.margin, backgrounds.normal, border]>

							<label 

								style[backgrounds.highlight, guest, guest.show]

								name[login.guest]

								special[guest.show] 

								unspecial[guest.hide]>@txt_guest</label>

							<textbox 

								name[login.username]

								style[textbox, textbox.show] 

								property[tip-text = @txt_username]/>

						</multielement>

						<textbox 

							name[login.password]

							style[textbox, backgrounds.normal, textbox.margin, textbox.hide, border]

							property[tip-text = @txt_password, password = true]

							special[textbox.hide] 

							unspecial[textbox.show]/>

					</container>



					<label 

						name[login.error] 

						style[error, error.unerror]

						error[error.error]

						unerror[error.unerror]/>



					<canvas style[bottom] name[bottom]>

						<multielement style[buttonrow]>

							<button 

								name[login.login]

								style[button, backgrounds.highlight, border]

								hover[backgrounds.hover]

								unhover[backgrounds.highlight]>@txt_login</button>

							<button 

								name[login.register]

								style[button, backgrounds.highlight, border]

								hover[backgrounds.hover]

								unhover[backgrounds.highlight]>@txt_register</button>

							<button 

								name[login.close]

								style[button, backgrounds.highlight, border]

								hover[backgrounds.hover]

								unhover[backgrounds.highlight]>@txt_cancel</button>

						</multielement>

					</canvas>

				</canvas>

			</canvas>

		</canvas>

	</layout>");

#endregion
#region register

	gms_show_replace(wt_register, @"<constants>

	</constants>

	<styles>

	overlay:

	{

		background: 0;



		open:

		{

			background-alpha: 0.5;

		}



		close:

		{

			background-alpha: 0;

		}

	}



	window:

	{

		width: preferred;

		height: min;



		min-width: 200;

		preferred-width: 640;



		center: true;



		drop-shadow: 2;

		drop-shadow-intensity: 0.04;

		drop-shadow-spread: 10;



		open:

		{

			y-offset: 0;

			tween-speed: 0.3;

		}



		close:

		{

			y-offset: 1;

			tween-speed: 0.3;

		}



		extrawindow:

		{

			y-offset: -1;

		}



		unextrawindow:

		{

			y-offset: 0;

		}



		error:

		{

			x-offset: 0.005;

			tween-type: shake;

			tween-speed: 1;

		}

	}



	contents:

	{

		width: max;

		height: max;

		padding: 20;	

	}



	titlebar:

	{

		width: max;

		height: 52;



		title:

		{

			color: @c_text;

			font: @f_title;

			width: max;

			height: max;

		}



		closearrow:

		{

			height: max;

			color: @c_text;

			width: 32;



			hover:

			{

				arrow-size: 15;

				arrow-length: 34;

				alpha: 1.0;

				tween-speed: 0.2;

			}



			unhover:

			{

				arrow-size: 10;

				arrow-length: 20;

				alpha: 0.5;

				tween-speed: 0.2;

			}

		}

	}



	backgrounds:

	{

		normal:

		{

			background-1: @c_background1;

			background-2: @c_background1;

			background-3: @c_background2;

			background-4: @c_background2;

		}



		highlight:

		{

			background-1: @c_button1;

			background-2: @c_button1;

			background-3: @c_button2;

			background-4: @c_button2;

		}



		hover:

		{

			background-1: @c_buttonhover1;

			background-2: @c_buttonhover1;

			background-3: @c_buttonhover2;

			background-4: @c_buttonhover2;

		}

	}



	border:

	{

		border-size: 1;

		border-color: @c_border;

	}



	bottom:

	{

		width: max;

		height: min;

		vertical-float: true;

	}



	button:

	{

		width: max;

		height: 52;

		font: @f_text;

		color: @c_text;

		margin: 5;

	}



	buttonrow:

	{

		width: max;

	}



	error:

	{

		font: @f_small;

		color: @c_fault_color;

		text-wrapping: true;

		width: max;



		error:

		{

			alpha: 1;

			height: min;

			padding-top: 10;

			padding-bottom: 10;

			tween-speed: 0.5;

		}



		unerror:

		{

			alpha: 0;

			height: 0;

			tween-speed: 0.5;

		}

	}



	textbox:

	{

		width: max;

		font: @f_text;

		color: @c_text;

		tip-color: @c_grey_text;



		margin:

		{

			margin: 8;

		}



		show:

		{

			height: 40;

			alpha: 1;

		}

	}



	textboxes:

	{

		height: min;

		margin-bottom: 5;

	}

	</styles>

	<layout>

		<canvas

			name[overlay]

			style[overlay, overlay.close]

			open[overlay.open]

			close[overlay.close]

			extrawindow[overlay.close]

			unextrawindow[overlay.open]>

		

			<canvas

				name[window]

				style[window, window.close, backgrounds.normal, border] 

				open[window.open] 

				close[window.close]

				extrawindow[window.extrawindow] 

				unextrawindow[window.unextrawindow]

				error[window.error]>

				<multielement

					name[titlebar]

					style[titlebar, backgrounds.highlight]>

					<label

						name[title]

						style[titlebar.title]>@txt_registerheader</label>

					<arrow 

						style[titlebar.closearrow, titlebar.closearrow.unhover]

						hover[titlebar.closearrow.hover]

						unhover[titlebar.closearrow.unhover]

						name[register.close] />

				</multielement>



				<canvas 

					style[contents]

					name[contents]>



					<container 

						style[textboxes]

						name[textboxes]>

						<textbox 

								name[register.username]

								style[textbox, backgrounds.normal, textbox.margin, textbox.show, border]

								property[tip-text = @txt_username]/>

						<textbox 

								name[register.mail]

								style[textbox, backgrounds.normal, textbox.margin, textbox.show, border]

								property[tip-text = @txt_email]/>

						<textbox 

								name[register.password]

								style[textbox, backgrounds.normal, textbox.margin, textbox.show, border]

								property[tip-text = @txt_password, password = true]/>

						<textbox 

								name[register.password-again]

								style[textbox, backgrounds.normal, textbox.margin, textbox.show, border]

							property[tip-text = @txt_repeat_password, password = true]/>

					</container>



					<label 

						name[register.error] 

						style[error, error.unerror]

						error[error.error]

						unerror[error.unerror]/>



					<canvas style[bottom] name[bottom]>

						<multielement style[buttonrow]>

							<button 

								name[register.register]

								style[button, backgrounds.highlight, border]

								hover[backgrounds.hover]

								unhover[backgrounds.highlight]>@txt_register</button>

							<button 

								name[register.close]

								style[button, backgrounds.highlight, border]

								hover[backgrounds.hover]

								unhover[backgrounds.highlight]>@txt_cancel</button>

						</multielement>

					</canvas>

				</canvas>

			</canvas>

		</canvas>

	</layout>");

#endregion


}
