from django.contrib import admin
from django import forms
from ckeditor.widgets import CKEditorWidget
from shop.models import *


class SliderAdmin(admin.ModelAdmin):
    list_display = ('name', 'publish', 'link', 'order')


class BannerAdmin(admin.ModelAdmin):
    list_display = ('name', 'publish', 'link')


class Banner3Admin(admin.ModelAdmin):
    list_display = ('name', 'publish', 'link')


class BannerLAdmin(admin.ModelAdmin):
    list_display = ('name', 'publish', 'link')


class CatBannerAdmin(admin.ModelAdmin):
    list_display = ('name', 'publish', 'link')


class PageAdmin(admin.ModelAdmin):
    list_display = ('name', 'publish')


class BrandAdmin(admin.ModelAdmin):
    list_display = ('name', 'image')


class ContactAdminForm(forms.ModelForm):
    desc = forms.CharField(widget=CKEditorWidget(config_name='awesome_ckeditor'))

    class Meta:
        model = Contact
        fields = '__all__'

class ContactAdmin(admin.ModelAdmin):
    list_display = ('name', 'phone', 'mail')
    form = ContactAdminForm


class SubscribeAdmin(admin.ModelAdmin):
    list_display = ('mail', 'agreement')


class ContactFormAdmin(admin.ModelAdmin):
    list_display = ('first_name', 'mail', 'phone', 'company', 'message')


admin.site.register(Slider, SliderAdmin),
admin.site.register(Banner, BannerAdmin),
admin.site.register(Banner3, BannerAdmin),
admin.site.register(BannerL, BannerAdmin),
admin.site.register(CatBanner, CatBannerAdmin),
admin.site.register(Page, PageAdmin),
admin.site.register(Brand, BrandAdmin),
admin.site.register(Contact, ContactAdmin),
admin.site.register(Subscribe, SubscribeAdmin),
admin.site.register(ContactForm, ContactFormAdmin)