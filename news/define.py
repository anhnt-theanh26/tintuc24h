# model 
APP_VALUE_LAYOUT_DEFINE = 'list';
APP_VALUE_STATUS_DEFINE = 'draft';

TABLE_NAME_CATEGORY_SHOW = 'Category';
TABLE_NAME_ARTICLE_SHOW = 'Article';
TABLE_NAME_FEED_SHOW = 'Feed';

APP_VALUE_CHOICE_LAYOUT = (
    ('list', 'List'),
    ('grid', 'Grid'),
)
APP_VALUE_CHOICE_STATUS = (
    ('draft', 'Draft'),
    ('published', 'Published'),
)

# admin 
ADMIN_SRC_JS = ('my_admin/js/general.js', 'my_admin/js/jquery-3.6.0.min.js', 'my_admin/js/slugify.min.js', );
ADMIN_SRC_CSS = {'all': ('my_admin/css/custom.css', ), };
ADMIN_SITE_HEADER_NAME = 'Quản lý trang tin tức';

# view 
APP_VALUE_STATUS_ACTIVE = 'published';
SETTING_ARTICLE_TOTAL_ITEMS_SPECIAL = 5;
SETTING_ARTICLE_TOTAL_ITEMS_PER_PAGE = 8;
SETTING_ARTICLE_TOTAL_ITEMS_RELATED = 6;
APP_PATH_PAGES = 'pages/';
APP_VALUE_SRC_IMAGE_DEFAULT = '/media/news/images/feed/no-image.jpg';

# my_context
SETTING_TOTAL_ITEMS_COIN = 5;
SETTING_TOTAL_ITEMS_GOLD = 5;
SETTING_TOTAL_ITEMS_ARTICLE_TRENDING = 1;
SETTING_TOTAL_ITEMS_ARTICLE_RANDOM_FOOTER = 3;
SETTING_TOTAL_ITEMS_ARTICLE_SIDEBAR_RECENT = 5;
SETTING_TOTAL_ITEMS_FEED_SIDEBAR_MENU = 5;
SETTING_TOTAL_ITEMS_CATEGORY_SIDEBAR_MENU = 5;
SETTING_URL_API_PRICE_COIN = 'http://apiforlearning.zendvn.com/api/get-coin';
SETTING_URL_API_PRICE_GOLD = 'http://apiforlearning.zendvn.com/api/get-gold';