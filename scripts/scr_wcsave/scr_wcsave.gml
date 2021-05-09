function scr_wcsave()
{
	// save everything
	wc_save = file_text_open_write("wc_save");
					
	file_text_write_real(wc_save, WC_saveversion);
					
	file_text_writeln(wc_save);
	file_text_write_real(wc_save, colour_get_red(WC_consolecolor));
	file_text_writeln(wc_save);
	file_text_write_real(wc_save, colour_get_green(WC_consolecolor));
	file_text_writeln(wc_save);
	file_text_write_real(wc_save, colour_get_blue(WC_consolecolor));
				
	file_text_writeln(wc_save);
	file_text_write_real(wc_save, WC_maxconsolebottom);
					
	file_text_writeln(wc_save);
	file_text_write_string(wc_save, ds_list_write(WC_bindkey));
	file_text_writeln(wc_save);
	file_text_write_string(wc_save, ds_list_write(WC_bindmap));
				
	file_text_writeln(wc_save);
	file_text_write_real(wc_save, WC_togglekey);
					
	file_text_writeln(wc_save);
	file_text_write_real(wc_save, WC_swapconsolefont); // pt exclusive
			
	file_text_writeln(wc_save);
	file_text_write_real(wc_save, WC_candrag);

	file_text_writeln(wc_save);
	file_text_write_real(wc_save, WC_prioritizebaddies); // pt exclusive

	file_text_writeln(wc_save);
	file_text_write_real(wc_save, WC_draggrid);

	file_text_close(wc_save);
}