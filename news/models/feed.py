from django.db import models
from django.urls import reverse

from news.define import *


# Create your models here.
class Feed(models.Model):
    name = models.CharField(max_length=255, unique=True)
    slug = models.SlugField(max_length=255, unique=True)
    status = models.CharField(max_length=10, choices=APP_VALUE_CHOICE_STATUS, default=APP_VALUE_STATUS_DEFINE)
    ordering = models.IntegerField(default=0)
    link = models.CharField(max_length=255)
    
    class Meta:
        verbose_name = TABLE_NAME_FEED_SHOW
        verbose_name_plural = TABLE_NAME_FEED_SHOW
    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("feed", kwargs={"feed_slug": self.slug})