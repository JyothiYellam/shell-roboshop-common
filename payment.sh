
source ./common.sh
app_name=payment

check_user
app_setup
python_setup

systemd_setup
print_total_time