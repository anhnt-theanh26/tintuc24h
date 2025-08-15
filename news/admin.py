from django.contrib import admin

# Register your models here.

from .models import Category, Article, Feed
from .define import *
class CategoryAdmin(admin.ModelAdmin):
    list_display = ( 'name','slug','is_homepage','layout','status','ordering',)
    # prepopulated_fields = {'slug': ('name',)}
    list_filter = ('name','is_homepage','layout','status')
    search_fields = ('name',)
    
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS

class ArticleAdmin(admin.ModelAdmin):
    list_display = ('name', 'status', 'ordering', 'special', 'publish_date', 'category', )
    list_filter = ('category', 'special', 'status',)
    search_fields = ('name',)
    
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS

class FeedAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug', 'status', 'ordering', 'link', )
    list_filter = ('name', 'status',)
    search_fields = ('name',)
    
    class Media:
        js = ADMIN_SRC_JS
        css = ADMIN_SRC_CSS
        
admin.site.register(Feed, FeedAdmin)
admin.site.register(Category, CategoryAdmin)
admin.site.register(Article, ArticleAdmin)
admin.site.site_header = ADMIN_SITE_HEADER_NAME
admin.site.site_title = 'News'
