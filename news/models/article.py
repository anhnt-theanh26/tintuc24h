from django.db import models
from django.urls import reverse
from tinymce.models import HTMLField
from news.helpers import *
from news.custom_field import *
from news.define import *

from .category import Category

# Create your models here.
class Article(models.Model):
    name = models.CharField(max_length=255, unique=True)
    slug = models.SlugField(max_length=255, unique=True)
    status = models.CharField(max_length=10, choices=APP_VALUE_CHOICE_STATUS, default=APP_VALUE_STATUS_DEFINE)
    ordering = models.IntegerField(default=0)
    special = CustomBooleanField()
    publish_date = models.DateTimeField()
    content = HTMLField()
    image = models.ImageField(upload_to=path_and_rename)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    
    class Meta:
        verbose_name = TABLE_NAME_ARTICLE_SHOW
        verbose_name_plural = TABLE_NAME_ARTICLE_SHOW
    
    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("article", kwargs={"article_slug": self.slug, "article_id": self.id}); #reverse -> name path url
    
   