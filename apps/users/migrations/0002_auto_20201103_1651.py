# Generated by Django 2.2.16 on 2020-11-03 16:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='userprofile',
            old_name='adress',
            new_name='address',
        ),
    ]