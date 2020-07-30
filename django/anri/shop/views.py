from django.shortcuts import render
from shop.forms import *
from shop.models import *


def index(request):
    seo_title = 'Магазин профессиональной косметики'
    seo_description = 'Профессиональная косметик от известных мировых брендов'
    seo_keywords = 'шампуни, краски для волос, иснтрументы, макияж'
    sliders = Slider.objects.all()
    banners = Banner.objects.all()
    banner3s = Banner3.objects.all()
    bannerls = BannerL.objects.all()
    brands = Brand.objects.order_by('?')

    return render(request, 'index/index.html', {'title': seo_title, 'description': seo_description, 'keywords': seo_keywords,
                                                'sliders': sliders, 'banners': banners, 'banner3s': banner3s,
                                                'bannerls': bannerls, 'brands': brands})


def contact_us(request):
    seo_title = 'Магазин профессиональной косметики'
    seo_description = 'Профессиональная косметик от известных мировых брендов'
    seo_keywords = 'шампуни, краски для волос, иснтрументы, макияж'
    lable = 'Контакты'
    contacts = Contact.objects.all()

    if request.method == 'POST':
        form = ContactFormForm(request.POST)

        if form.is_valid():
            form.save()

    else:
        form = ContactFormForm()

    return render(request, 'contact_us.html', {'title': seo_title, 'description': seo_description, 'keywords': seo_keywords,
                                               'lable': lable, 'contacts': contacts, 'form': form})