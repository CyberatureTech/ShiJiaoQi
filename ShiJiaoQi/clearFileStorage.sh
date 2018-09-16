#! /bin/sh
# clear /ShiJiaoQi directory about file storage files content
# before using please use root permission
# this script use absolute path, it can run in everywhere
# code by </MATRIX>@Neod Anderjon

echo "Welcome to use </MATRIX> shell script"
echo "code by </MATRIX>@Neod Anderjon"

ORDER_FILE_DIR="/ShiJiaoQi/order_file.d"
ORDER_FILE_USB_DIR="/ShiJiaoQi/order_file_usb.d"

# use linux bash command ls to judge directory is empty or not
is_empty_dir(){
    return `ls -A $1|wc -w`
}

echo "Clear order_file.d and order_file_usb.d directory..."
if is_empty_dir $ORDER_FILE_DIR
then
    :
else
    rm -r /ShiJiaoQi/order_file.d/*
fi
if is_empty_dir $ORDER_FILE_USB_DIR
then
    :
else
    rm -r /ShiJiaoQi/order_file_usb.d/*
fi

echo "Clear task finished"

# code by </MATRIX>@Neod Anderjon
