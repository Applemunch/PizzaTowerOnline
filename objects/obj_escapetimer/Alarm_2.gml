var get_number = get_string("Set seconds:", "")
if get_number == ""
    get_number = "0"

seconds = abs(real(get_number))
if seconds > 59
    seconds = 59