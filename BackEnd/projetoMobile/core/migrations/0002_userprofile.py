# Generated by Django 3.1.1 on 2020-09-25 23:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserProfile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('login', models.CharField(max_length=255)),
                ('senha', models.CharField(max_length=255)),
                ('empresa', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='core.empresa')),
            ],
        ),
    ]