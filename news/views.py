from django.shortcuts import render, get_object_or_404

from django.core.paginator import Paginator
from django.utils import timezone
from bs4 import BeautifulSoup

from .models import Category, Article, Feed
from .define import *

import re
import feedparser


def index(request):
    try:
        items_article_special = Article.objects.filter(special=True, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date')[:SETTING_ARTICLE_TOTAL_ITEMS_SPECIAL];
        items_category = Category.objects.filter(status=APP_VALUE_STATUS_ACTIVE, is_homepage=True).order_by('ordering');
        
        for category in items_category:
            category.article_filter = category.article_set.filter(status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date');
        
        return render(request, APP_PATH_PAGES + 'index.html', {
            'title_page': 'Trang chủ',
            'items_article_special': items_article_special,
            'items_category': items_category,
        });
    except:
        return render(request, APP_PATH_PAGES + 'not-found.html', {
            'title_page': 'Not Found',
        });

def category(request, category_slug):
    try:
        item_category = get_object_or_404(Category, slug=category_slug, status=APP_VALUE_STATUS_ACTIVE);
        items_article = Article.objects.filter(category=item_category, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date');
        paginator = Paginator(items_article, SETTING_ARTICLE_TOTAL_ITEMS_PER_PAGE);
        page = request.GET.get('page');
        items_article = paginator.get_page(page);
        
        return render(request, APP_PATH_PAGES + 'category.html', {
            'title_page': item_category.name,
            "item_category": item_category,
            "items_article": items_article,
            "paginator": paginator,
        })
    except:
        return render(request, APP_PATH_PAGES + 'not-found.html', {
            'title_page': 'Not Found',
        });

def feed(request, feed_slug):
    item_feed = get_object_or_404(Feed, slug=feed_slug, status=APP_VALUE_STATUS_ACTIVE);
    items_feed = [];
    try:
        feed = feedparser.parse(item_feed.link);
        for entry in feed.entries:
            soup = BeautifulSoup(entry.summary, 'html.parser');
            image_tag = soup.find('img');
            src_img = APP_VALUE_SRC_IMAGE_DEFAULT;
            if image_tag:
                src_img = image_tag['src'];
            
            item = {
                'title': entry.title,
                'link': entry.link,
                'pub_date': entry.published,
                'img': src_img,
            }
            items_feed.append(item);
    except:
        print('Get feed: Error');
    return render(request, APP_PATH_PAGES + 'feed.html', {
        'title_page': 'Tin tức tổng hợp '+item_feed.name,
        'item_feed': item_feed,
        'items_feed': items_feed,
    });
    # try:
    # except:
    #     return render(request, APP_PATH_PAGES + 'not-found.html', {
    #         'title_page': 'Not Found',
    #     });
 


def article(request, article_slug, article_id):
    try:
        article = get_object_or_404(Article.objects.filter(id=article_id, slug=article_slug, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()));
        items_article_related = Article.objects.filter(category=article.category, status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).exclude(slug=article_slug).order_by('-publish_date')[:SETTING_ARTICLE_TOTAL_ITEMS_RELATED];
        
        return render(request, APP_PATH_PAGES + 'article.html', {
            'title_page': article.name,
            'article': article,
            'items_article_related': items_article_related,
        });
    except:
        return render(request, APP_PATH_PAGES + 'not-found.html', {
            'title_page': 'Not Found',
        });

def search(request):
    try:
        keyword = request.GET.get('keyword');
        items_article = Article.objects.filter(name__iregex=re.escape(keyword), status=APP_VALUE_STATUS_ACTIVE, publish_date__lte=timezone.now()).order_by('-publish_date');
        paginator = Paginator(items_article, SETTING_ARTICLE_TOTAL_ITEMS_PER_PAGE);
        page = request.GET.get('page');
        items_article = paginator.get_page(page);
        return render(request, APP_PATH_PAGES + 'search.html', {
            'title_page': 'Kết quả tìm kiếm cho: ' + keyword,
            'keyword': keyword,
            'items_article': items_article,
            'paginator': paginator,
        });
    except:
        return render(request, APP_PATH_PAGES + 'not-found.html', {
            'title_page': 'Not Found',
        });
    
def about(request):
    try:
        return render(request, APP_PATH_PAGES + 'about.html', {
            'title_page': 'Giới thiệu',
        });
    except:
        return render(request, APP_PATH_PAGES + 'not-found.html', {
            'title_page': 'Not Found',
        });
    
def contact(request):
    try:
        return render(request, APP_PATH_PAGES + 'contact.html', {
            'title_page': 'Liên hệ',
        });
    except:
        return render(request, APP_PATH_PAGES + 'not-found.html', {
            'title_page': 'Not Found',
        });