# Generated by Django 2.2.4 on 2022-02-26 11:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('login_app', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='crop',
            name='quantity',
            field=models.FloatField(),
        ),
    ]
