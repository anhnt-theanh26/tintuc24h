from django.db import models
from django.urls import reverse

from news.custom_field import *
from news.define import *

# Create your models here.
class Category(models.Model):

    name = models.CharField(max_length=255, unique=True)
    slug = models.SlugField(max_length=255, unique=True)
    is_homepage = CustomBooleanField()
    layout = models.CharField(max_length=10, choices=APP_VALUE_CHOICE_LAYOUT, default=APP_VALUE_LAYOUT_DEFINE)
    status = models.CharField(max_length=10, choices=APP_VALUE_CHOICE_STATUS, default=APP_VALUE_STATUS_DEFINE)
    ordering = models.IntegerField(default=0)
    
    class Meta:
        verbose_name = TABLE_NAME_CATEGORY_SHOW
        verbose_name_plural = TABLE_NAME_CATEGORY_SHOW
    
    
    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("category", kwargs={"category_slug": self.slug}); 