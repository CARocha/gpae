# -*- coding: utf-8 -*-

from django.db import models
from monitoreo.grupo_gpae.models import *

# Create your models here.

# Indicador 8. Animales en la finca y la producción (periodo de referencia de mayo 2009 a abril 2010)

class Animales(models.Model):
    nombre = models.CharField(max_length=50)

    def __unicode__(self):
        return self.nombre

    class Meta:
        verbose_name_plural = "Finca - Animales"

class ProductoAnimal(models.Model):
    nombre = models.CharField(max_length=100)
    unidad = models.CharField(max_length=100)

    def __unicode__(self):
        return self.nombre

    class Meta:
        verbose_name_plural = "Finca - Producto"

CHOICE_PERDIDA = (
                    (1, 'Robo'),
                    (2, 'Perdidas'),
                    (3, 'Desc'),
                 )

class AnimalesFinca(models.Model):
    ''' Modelo animales en la finca
    '''
    animales = models.ForeignKey(Animales)
    cantidad = models.FloatField()
    perdida = models.IntegerField(choices=CHOICE_PERDIDA, blank=True, null=True)
    produccion = models.ForeignKey(ProductoAnimal)
    total_produccion = models.IntegerField('Total producion por año', null=True)
    consumo = models.FloatField('Consumo')
    venta_libre = models.FloatField('Venta libre')
    venta_organizada = models.FloatField('Venta organizada')
    encuesta = models.ForeignKey(Encuesta)
    
    def __unicode__(self):
        return u'%s' % self.animales.nombre
    
    class Meta:
        verbose_name_plural = "Animales en la finca"

#-------------------------------------------------------------------------------
