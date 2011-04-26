# -*- coding: utf-8 -*-

from django.db import models
from monitoreo.grupo_gpae.models import *

# Create your models here.

# Indicador 9. Cultivos en la finca (periodo de referencia de mayo 2009 a abril 2010)

class Cultivos(models.Model):
    nombre = models.CharField(max_length=50)
    unidad = models.CharField(max_length=50)

    def __unicode__(self):
        return self.nombre

    class Meta:
        verbose_name_plural = "CultivosFinca-Cultivos"

CHOICE_MANEJO = (
                    (1, 'Cov'),
                    (2, 'Agro')
                )
              
CHOICE_TOTAL = (
                    (1, 'Cov'),
                    (2, 'Agro')
                )
                
class Excedente(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre


class CultivosFinca(models.Model):
    ''' indicador cultivos en la finca
    '''
    cultivos = models.ForeignKey(Cultivos)
    area =  models.FloatField('Área/Mz')
    consumo = models.FloatField('Consumo por año')
    manejo = models.IntegerField('Manejo de area Producida', choices=CHOICE_MANEJO, blank=True, null=True)
    total_produccion = models.IntegerField('Total producción al año', choices=CHOICE_TOTAL, blank=True, null=True)
    venta_libre = models.FloatField('Venta por año marca GPAE', blank=True, null=True)
    venta_organizada = models.FloatField('Venta por año Libre', blank=True, null=True)
    excedente = models.ManyToManyField(Excedente, verbose_name="Excedentes")
    encuesta = models.ForeignKey(Encuesta)
    
    def __unicode__(self):
        return u'%s' % self.cultivos.nombre
    
    class Meta:
        verbose_name_plural = "Cultivos en la finca"
        #app_label = "Indicador 09 cultivos en la finca"
        #db_table = "simas_cultivosfinca"

#-------------------------------------------------------------------------------
