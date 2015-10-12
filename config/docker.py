import os
from .aws_appsembler import *

EMAIL_BACKEND = "django.core.mail.backends.smtp.EmailBackend"
EMAIL_HOST = "smtp.qq.com"
EMAIL_PORT = 25
EMAIL_USE_TLS = False
EMAIL_HOST_USER = "1624140001@qq.com"
EMAIL_HOST_PASSWORD = "edx_cn1"

LMS_BASE = (ENV_TOKENS.get("LMS_BASE","") or os.environ.get("EDX_LMS_BASE", ""))
CMS_BASE = (ENV_TOKENS.get("CMS_BASE","") or os.environ.get("EDX_CMS_BASE", ""))
FEATURES.update(PREVIEW_LMS_BASE=(ENV_FEATURES.get("PREVIEW_LMS_BASE","") or os.environ.get("EDX_PREVIEW_LMS_BASE", "")))

SITE_NAME = LMS_BASE

default_email = "1624140001@qq.com"
DEFAULT_FROM_EMAIL = 'registration@appsembler.com' if default_email == "registration@example.com" else default_email

#can probably be clean up later
env_platform_name = ENV_TOKENS.get("PLATFORM_NAME","")
PLATFORM_NAME = "edx_cn"
