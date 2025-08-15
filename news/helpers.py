from django.db import models
from django.utils import timezone
import os
from uuid import uuid4
import re


def path_and_rename(instance, filename):
    upload_to = 'news/images/articles/'
    ext = filename.split('.')[-1]
    if instance.pk:
        filename = '{}.{}'.format(instance.pk, ext)
    else:
        filename = '{}.{}'.format(uuid4().hex, ext)
    file_path = os.path.join(upload_to, filename)
    if os.path.exists(file_path):
        filename = '{}_{}{}'.format(uuid4().hex, instance.pk, '.' + ext)   
    return os.path.join(upload_to, filename)

def get_skip_slug_article(path):
    last_path = path.split('/')[-1];
    skip_slug = None;
    match = re.search(r'^(?P<article_slug>[\w-]+)-a(?P<article_id>\d+)\.html$', last_path);
    if match:
        skip_slug = match.group('article_slug');
    return skip_slug;