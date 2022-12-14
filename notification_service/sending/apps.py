from django.apps import AppConfig


class SendingConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'notification_service.sending'

    def ready(self):
        from notification_service.sending import signals
