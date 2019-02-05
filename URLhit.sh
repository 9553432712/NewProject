#!/bin/bash

#Response: 

#{"error": "error_message"}
#{"success": "success_message"}


#Parse the response 



IFS= read -d '' DATA < temp.txt  ## Imitates your DATA=$(wget ...). Just replace it.
while IFS=\" read -ra LINE; do
    case "${LINE[1]}" in
    error)
        # ERROR_MSG=${LINE[3]}
        printf -v ERROR_MSG '%b' "${LINE[3]}"
        ;;
    success)
        # SUCCESS_MSG=${LINE[3]}
        printf -v SUCCESS_MSG '%b' "${LINE[3]}"
        ;;
    esac
done <<< "$DATA"
echo "$ERROR_MSG|$SUCCESS_MSG"  ## Shows: error_message|success_message
