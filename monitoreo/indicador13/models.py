# -*- coding: utf-8 -*-

from django.db import models
from monitoreo.grupo_gpae.models import *

# Create your models here.

# Indicador 13 -  Ingreso Familiar. Venta de rubros (periodo de referencia de mayo 2009 a abril 2010)

CHOICE_VENDIO = ((1,"Comunidad"),(2,"Intermediario"),(3,"Mercado"),
                 (4,"Cooperativa"),(5,'todos'))

CHOICE_MANEJA = ((1,"Hombre"),(2,"Mujer"),(3,"Ambos"),(4,"Hijos/as"),
                 (5,'Hombre-Hijos'),(6,'Mujer-Hijos'),(7,'Todos'))

class Rubros(models.Model):
    nombre = models.CharField(max_length=50)
    unidad = models.CharField(max_length=50)
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name_plural = "IngresoFamiliar-Rubros"

CHOICE_MANEJO = (
                    (1, 'Marca GPAE'),
                    (2, 'Certificado'),
                    (3, 'Normal')
                )

class IngresoFamiliar(models.Model):
    ''' Modelo Ingreso familiar. venta de rubros
    '''
    rubro = models.ForeignKey(Rubros)
    cantidad = models.FloatField('Cantidad vendida en el año pasado',null=True, blank=True)
    precio = models.FloatField('Precio de venta por unidad C$',null=True, blank=True)
    venta = models.IntegerField(choices=CHOICE_MANEJO, null=True, blank=True)
    quien_vendio = models.IntegerField('¿A quien vendio?', choices=CHOICE_VENDIO,null=True, blank=True)
    maneja_negocio = models.IntegerField('¿Quién maneja el negocio', choices=CHOICE_MANEJA,null=True, blank=True)
    encuesta = models.ForeignKey(Encuesta)
    
    def __unicode__(self):
        return u'%s' % self.rubro.nombre
    
    class Meta:
        verbose_name_plural = "Ingreso Familiar"

#-------------------------------------------------------------------------------
