#/bin/bash
#sed
sed -i "s/\"THEME_NAME\": \"\"/\"THEME_NAME\": \"ionisx\"/" /edx/app/edxapp/lms.env.json
sed -i "s/\"USE_CUSTOM_THEME\": false/\"USE_CUSTOM_THEME\": true/" /edx/app/edxapp/lms.env.json
#sudo -H -u edxapp bash
source /edx/app/edxapp/edxapp_env
cd /edx/app/edxapp/edx-platform
paver update_assets lms --settings=aws
sudo /edx/bin/supervisorctl restart edxapp:
