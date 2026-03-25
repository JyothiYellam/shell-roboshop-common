

source ./common.sh
app_name=user

check_user
nodejs_setup
app_setup
systemd_setup
print_total_time