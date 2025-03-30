from django.contrib import admin
from .models import *

# Register your models here.
admin.site.register(Readers)
admin.site.register(Book)
admin.site.register(Loans)
admin.site.register(Bookauthors)
admin.site.register(Genre)
admin.site.register(Publishing)