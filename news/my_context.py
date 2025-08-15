from django.db.models import Count
from django.utils import timezone

from .models import Category, Article, Feed

from .define import *
import requests
from .helpers import *

def items_category_sidebar_menu(request):
    items_category_sidebar_menu = Category.objects.filter(status=APP_VALUE_STATUS_ACTIVE).order_by('ordering').annotate(num_articles=Count('article'))[:5];
    return {'items_category_sidebar_menu': items_category_sidebar_menu}

def items_feed_sidebar_menu(request):
    items_feed_sidebar_menu = Feed.objects.filter(status=APP_VALUE_STATUS_ACTIVE).order_by('ordering')[:SETTING_TOTAL_ITEMS_FEED_SIDEBAR_MENU];
    return {'items_feed_sidebar_menu': items_feed_sidebar_menu}

def items_article_sidebar_recent(request):
    skip_slug = get_skip_slug_article(request.path);
    items_article_sidebar_recent = Article.objects.filter(status=APP_VALUE_STATUS_ACTIVE, publish_date__lte = timezone.now()).exclude(slug=skip_slug).order_by('-publish_date')[:SETTING_TOTAL_ITEMS_ARTICLE_SIDEBAR_RECENT]
    return {'items_article_sidebar_recent': items_article_sidebar_recent}
    
def items_article_footer_random(request):
    skip_slug = get_skip_slug_article(request.path);
    items_article_footer_random = Article.objects.filter(status=APP_VALUE_STATUS_ACTIVE, publish_date__lte = timezone.now()).exclude(slug=skip_slug).order_by('?')[:SETTING_TOTAL_ITEMS_ARTICLE_RANDOM_FOOTER]
    return {'items_article_footer_random': items_article_footer_random}

def items_article_header_trending(request):
    skip_slug = get_skip_slug_article(request.path);
    items_article_header_trending = Article.objects.filter(status=APP_VALUE_STATUS_ACTIVE, publish_date__lte = timezone.now()).exclude(slug=skip_slug).order_by('?')[:SETTING_TOTAL_ITEMS_ARTICLE_TRENDING]
    return {'items_article_header_trending': items_article_header_trending}

def items_sidebar_price_coin(request):
    url = SETTING_URL_API_PRICE_COIN;
    items_sidebar_price_coin = [];
    try: 
        response = requests.get(url);
        if(response.status_code == 200):
            items_sidebar_price_coin = response.json()[:SETTING_TOTAL_ITEMS_COIN];
    except:
        print('Get coin: Error');
    return {'items_sidebar_price_coin': items_sidebar_price_coin}

def items_sidebar_price_gold(request):
    url = SETTING_URL_API_PRICE_GOLD;
    items_sidebar_price_gold = [];
    try:
        response = requests.get(url);
        if(response.status_code == 200):
            items_sidebar_price_gold = response.json()[:SETTING_TOTAL_ITEMS_GOLD];
    except:
        print('Get gold: Error');
    return {'items_sidebar_price_gold': items_sidebar_price_gold}