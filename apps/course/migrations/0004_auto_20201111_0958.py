# Generated by Django 2.2.16 on 2020-11-11 09:58

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0003_auto_20201109_0854'),
    ]

    operations = [
        migrations.RenameField(
            model_name='course',
            old_name='click_names',
            new_name='click_nums',
        ),
    ]
