
source ./common.sh
app_name=payment

check_user
python_setup
app_setup
systemd_setup
print_total_time