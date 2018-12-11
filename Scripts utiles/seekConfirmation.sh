# !/bin/bash
#
# Nathaniel Landau
# https://natelandau.com/bash-scripting-utilities/
# seekConfirmation.sh
#

source utils.sh

e_header "I am a sample script"

seek_confirmation "Do you want to print a sucess message?"

if is_confirmed; then
	e_success "Here is a success message"
else
	e_error "You did not ask for a sucess message"
fi




