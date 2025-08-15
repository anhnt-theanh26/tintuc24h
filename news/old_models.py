# from django.db import models
# from django.urls import reverse
# from tinymce.models import HTMLField
# # Create your models here.

# from .helpers import *
# from .custom_field import *
# from .define import *

# class Category(models.Model):

#     name = models.CharField(max_length=255, unique=True)
#     slug = models.SlugField(max_length=255, unique=True)
#     is_homepage = CustomBooleanField()
#     layout = models.CharField(max_length=10, choices=APP_VALUE_CHOICE_LAYOUT, default=APP_VALUE_LAYOUT_DEFINE)
#     status = models.CharField(max_length=10, choices=APP_VALUE_CHOICE_STATUS, default=APP_VALUE_STATUS_DEFINE)
#     ordering = models.IntegerField(default=0)
    
#     class Meta:
#         verbose_name = TABLE_NAME_CATEGORY_SHOW
#         verbose_name_plural = TABLE_NAME_CATEGORY_SHOW
    
    
#     def __str__(self):
#         return self.name
    
#     def get_absolute_url(self):
#         return reverse("category", kwargs={"category_slug": self.slug}); 
    
# class Article(models.Model):
#     name = models.CharField(max_length=255, unique=True)
#     slug = models.SlugField(max_length=255, unique=True)
#     status = models.CharField(max_length=10, choices=APP_VALUE_CHOICE_STATUS, default=APP_VALUE_STATUS_DEFINE)
#     ordering = models.IntegerField(default=0)
#     special = CustomBooleanField()
#     publish_date = models.DateTimeField()
#     content = HTMLField()
#     image = models.ImageField(upload_to=path_and_rename)
#     category = models.ForeignKey(Category, on_delete=models.CASCADE)
    
#     class Meta:
#         verbose_name = TABLE_NAME_ARTICLE_SHOW
#         verbose_name_plural = TABLE_NAME_ARTICLE_SHOW
    
#     def __str__(self):
#         return self.name
    
#     def get_absolute_url(self):
#         return reverse("article", kwargs={"article_slug": self.slug, "article_id": self.id}); #reverse -> name path url
    
    

# class Feed(models.Model):
#     name = models.CharField(max_length=255, unique=True)
#     slug = models.SlugField(max_length=255, unique=True)
#     status = models.CharField(max_length=10, choices=APP_VALUE_CHOICE_STATUS, default=APP_VALUE_STATUS_DEFINE)
#     ordering = models.IntegerField(default=0)
#     link = models.CharField(max_length=255)
    
#     class Meta:
#         verbose_name = TABLE_NAME_FEED_SHOW
#         verbose_name_plural = TABLE_NAME_FEED_SHOW
#     def __str__(self):
#         return self.name
    
#     def get_absolute_url(self):
#         return reverse("feed", kwargs={"feed_slug": self.slug})