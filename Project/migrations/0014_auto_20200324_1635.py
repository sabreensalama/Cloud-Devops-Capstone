# Generated by Django 2.2.11 on 2020-03-24 14:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Project', '0013_projects_nor'),
    ]

    operations = [
        migrations.AddField(
            model_name='project_comments',
            name='dislikes',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='project_comments',
            name='likes',
            field=models.IntegerField(default=0),
        ),
    ]
