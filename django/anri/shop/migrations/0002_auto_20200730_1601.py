# Generated by Django 3.0.8 on 2020-07-30 13:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subscribe',
            name='mail',
            field=models.EmailField(db_index=True, max_length=50, unique=True, verbose_name='Электронная почта'),
        ),
    ]