

source ./common.sh
app_name=user

check_user
app_setup
nodejs_setup
systemd_setup
print_total_time