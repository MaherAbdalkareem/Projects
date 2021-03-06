# Generated by Django 2.2.4 on 2022-02-26 13:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('login_app', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sale',
            name='crop',
            field=models.ForeignKey(on_delete='cascade', related_name='sales', to='login_app.Crop'),
        ),
        migrations.AlterField(
            model_name='sale',
            name='trader',
            field=models.ForeignKey(on_delete='cascade', related_name='sales', to='login_app.Trader'),
        ),
    ]
