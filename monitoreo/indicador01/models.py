# -*- coding: utf-8 -*-

from django.db import models
from monitoreo.grupo_gpae.models import *

# Create your models here.

# Indicador 1: Familia

CHOICE_EDUCACION = ((1,'Hombre mayor 30 años'),
                    (2,'Mujeres mayor 30 años'),
                    (3,'Joven de 18 a 30 años'),
                    (4,'Hombres de 7 a 18 años'),
                    (5,'Mujeres de 7 a 18 años'),
                    (6,'Niños menos de 6 años'),
                    (7,'Niñas menos de 6 años'))

class Educacion(models.Model):
    ''' 1.1 - composicion y educacion
    '''
    sexo = models.IntegerField(choices=CHOICE_EDUCACION)
    total = models.IntegerField('Número total')
    no_leer = models.IntegerField('No sabe leer y escribir')
    p_incompleta = models.IntegerField('Primaria incompleta')
    p_completa = models.IntegerField('Primaria completa')
    s_incompleta = models.IntegerField('Secundaria incompleta')
    bachiller = models.IntegerField()
    universitario = models.IntegerField()
    f_comunidad = models.IntegerField('Viven fuera de la comunidad')
    encuesta = models.ForeignKey(Encuesta)
    
    def __unicode__(self):
        return u'%s' % self.get_sexo_display()
        
    class Meta:
        verbose_name_plural = "Educacion"

#-------------------------------------------------------------------------------

CHOICE_SALUD = ((1,'Si'),(2,'No'),(3,'No sabe'))

class Salud(models.Model):
    ''' 1.2 salud
    '''
    sexo = models.IntegerField(choices=CHOICE_EDUCACION)
    b_salud = models.IntegerField('# tiene buena salud')
    s_delicada = models.IntegerField('# tiene salud delicada')
    e_cronica = models.IntegerField('# tiene enfermedad crónica')
    v_centro = models.IntegerField('Visita centro de salud', choices=CHOICE_SALUD)
    v_medico = models.IntegerField('Visita médico privado', choices=CHOICE_SALUD)
    v_naturista = models.IntegerField('Visita médico naturista', choices=CHOICE_SALUD)
    automedica = models.IntegerField('Se automedica', choices=CHOICE_SALUD)
    encuesta = models.ForeignKey(Encuesta)
    
    def __unicode__(self):
        return u'%s' % self.get_sexo_display()
        
    class Meta:
        verbose_name_plural = "Salud"

#-------------------------------------------------------------------------------

class PreguntaEnergia(models.Model):
    pregunta = models.CharField(max_length=200)

    def __unicode__(self):
        return self.pregunta

    class Meta:
        verbose_name_plural = "Pregunta sobre energia"

class Energia(models.Model):
    ''' 1.3 energia
    '''
    pregunta = models.ForeignKey(PreguntaEnergia)
    respuesta = models.IntegerField(choices=CHOICE_OPCION)
    encuesta = models.ForeignKey(Encuesta)
    
    class Meta:
        verbose_name_plural = "Energia"

class TipoCocina(models.Model):
    nombre = models.CharField(max_length=200)
    
    def __unicode__(self):
        return self.nombre
        
    class Meta:
        verbose_name_plural = "Utiliza para cocinar"
class Cocina(models.Model):
    ''' Que utiliza para cocinar
    '''
    utiliza = models.ManyToManyField(TipoCocina, verbose_name="Qué utiliza para cocinar", null=True, blank=True)
    encuesta = models.ForeignKey(Encuesta)
    
#-------------------------------------------------------------------------------

class Fuente(models.Model):
    nombre = models.CharField(max_length=200)

    def __unicode__(self):
        return self.nombre

    class Meta:
        verbose_name_plural = "Fuentes de consumo de agua"
       

class Tratamiento(models.Model):
    nombre = models.CharField(max_length=200)

    def __unicode__(self):
        return self.nombre

    class Meta:
        verbose_name_plural = "Tratamiento de agua de consumo"
       

class Disponibilidad(models.Model):
    nombre = models.CharField(max_length=200)

    def __unicode__(self):
        return self.nombre

    class Meta:
        verbose_name_plural = "Disponibilidad de agua para consumo"
        
class UsoAgua(models.Model):
    nombre = models.CharField(max_length=200)
    def __unicode__(self):
        return self.nombre

class Agua(models.Model):
    ''' 1.4 Agua de consumo
    '''
    fuente = models.ManyToManyField(Fuente, verbose_name="Fuente de consumo de agua")
    trata = models.ManyToManyField(Tratamiento, verbose_name="¿Cómo se trata el agua para consumo")
    disponible = models.ManyToManyField(Disponibilidad, verbose_name="Disponibilidad de agua para consumo")
    uso = models.ManyToManyField(UsoAgua, verbose_name="Uso del agua")
    encuesta = models.ForeignKey(Encuesta)
    
    class Meta:
        verbose_name_plural = "Agua"

#-------------------------------------------------------------------------------
