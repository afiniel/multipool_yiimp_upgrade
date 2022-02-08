#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by Afiniel for crypto use...
#####################################################

source /etc/functions.sh
cd $HOME/multipool/yiimp_upgrade

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "Afiniel YiiMP Updater" --menu "Choose one" -1 65 7 \
' ' "- Upgrade Stratum and YiiMP -" \
1 "Upgrade YiiMP And Stratum" \
' ' "- Upgrade just Stratum Servers -" \
2 "Upgrade Stratum server" \
' ' "- More Comming soon! -" \
3 Exit)
if [ $RESULT = ]
then
bash $(basename $0) && exit;
fi

if [ $RESULT = 1 ]
then
clear;
cd $HOME/multipool/yiimp_upgrade
source single.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/multipool/yiimp_upgrade
source up_stratum.sh;
fi

if [ $RESULT = 10 ]
then
clear;
cd $HOME/multipool/yiimp_upgrade
source up_web.sh;
fi

if [ $RESULT = 3 ]
then
clear;
exit;
fi
