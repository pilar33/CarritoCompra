# Generated by Django 4.2.6 on 2023-11-11 20:34

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CarritoApp', '0006_tipocliente_alter_detallepedidos_options'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='clientes',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='tipocliente',
            options={'managed': False},
        ),
    ]
