# Generated by Django 2.2.16 on 2020-11-03 17:27

import DjangoUeditor.models
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_auto_20201103_1651'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='address',
            field=DjangoUeditor.models.UEditorField(default='', max_length=100, verbose_name='地址'),
        ),
    ]
