from django.db import models


class Slider(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название')
    title_1 = models.CharField(max_length=50, verbose_name='Заголовок 1', db_index=True)
    title_2 = models.CharField(max_length=50, verbose_name='Заголовок 2', db_index=True)
    desc = models.CharField(max_length=100, blank=True, verbose_name='Описание слайда', db_index=True)
    image = models.ImageField(upload_to='slider', verbose_name='Изображение слайда', db_index=True)
    link = models.CharField(max_length=50, blank=True, verbose_name='Ссылка к слайду', db_index=True)
    order = models.BooleanField(default=True, verbose_name='Включить заказ?')
    good_link = models.CharField(max_length=100, blank=True, verbose_name='Ссылка на товар для заказа', db_index=True)
    publish = models.BooleanField(default=True, verbose_name='Вкл/Выкл показ на главной')

    class Meta:
        verbose_name='Слайдер'
        verbose_name_plural='Слайдеры'

    def __str__(self):
        return self.name


class Banner(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название')
    image = models.ImageField(upload_to='banners/banner_upper', verbose_name='Изображение баннера', db_index=True)
    link = models.CharField(max_length=50, blank=True, verbose_name='Ссылка на акцию/товар', db_index=True)
    publish = models.BooleanField(default=False, verbose_name='Опубликован на главной')

    class Meta:
        verbose_name = 'Баннер'
        verbose_name_plural = 'Баннеры'

    def __str__(self):
        return self.name


class Banner3(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название')
    image = models.ImageField(upload_to='banners/3_in_block', db_index=True)
    link = models.CharField(max_length=50, blank=True, verbose_name='Ссылка на акцию/товар', db_index=True)
    publish = models.BooleanField(default=False, verbose_name='Опубликован на главной')

    class Meta:
        verbose_name = 'Баннер (блок по 3)'
        verbose_name_plural = 'Баннеры (блок по 3)'

    def __str__(self):
        return self.name


class BannerL(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название')
    image = models.ImageField(upload_to='banners/banner_large', verbose_name='Изображение банера', db_index=True)
    link = models.CharField(max_length=50, blank=True, verbose_name='Ссылка на акцию/товар', db_index=True)
    publish = models.BooleanField(default=False, verbose_name='Опубликован на главной')

    class Meta:
        verbose_name = 'Баннер (длинный)'
        verbose_name_plural = 'Баннер (длинный)'

    def __str__(self):
        return self.name


class CatBanner(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название')
    image = models.ImageField(upload_to='banners/category_banners', verbose_name='Изображение', db_index=True)
    link = models.CharField(max_length=50, blank=True, verbose_name='Ссылка', db_index=True)
    publish = models.BooleanField(default=False, verbose_name='Опубликован в категориях')

    class Meta:
        verbose_name = 'Баннер в категориях'
        verbose_name_plural = 'Баннеры в категриях'

    def __str__(self):
        return self.name


class Page(models.Model):
    name = models.CharField(max_length=50, verbose_name='Название страницы', db_index=True)
    name_slug = models.SlugField(unique=True, db_index=True)
    image = models.ImageField(upload_to='pages', blank=True, verbose_name='Изображение', db_index=True)
    title = models.CharField(max_length=50, verbose_name='Заголовок', db_index=True)
    text = models.TextField(max_length=1500, verbose_name='Текст страницы')
    publish = models.BooleanField(default=True, verbose_name='Опубликованно')

    class Meta:
        verbose_name = 'Страница'
        verbose_name_plural = 'Страницы'

    def __str__(self):
        return self.name


class Brand(models.Model):
    name = models.CharField(max_length=80, verbose_name='Название бренда', db_index=True)
    name_slug = models.SlugField(unique=True, db_index=True)
    image = models.ImageField(upload_to='brands_logo', verbose_name='Изображение логотипа', db_index=True)

    class Meta:
        verbose_name = 'Бренд'
        verbose_name_plural = 'Бренды'

    def __str__(self):
        return self.name


class Contact(models.Model):
    name = models.CharField(max_length=80, verbose_name='Название организации')
    image = models.ImageField(upload_to='logo', blank=True, verbose_name='Логотип', db_index=True)
    desc = models.TextField(blank=True, verbose_name='Описание организации')
    adress = models.CharField(max_length=150, blank=True, verbose_name='Адрес', db_index=True)
    mail = models.EmailField(max_length=50, blank=True, verbose_name='Эл. почта', db_index=True)
    phone = models.CharField(max_length=50, blank=True, verbose_name='Телефон', db_index=True)
    webphone = models.CharField(max_length=50, blank=True, verbose_name='Whatsapp', db_index=True)
    inn = models.CharField(max_length=10, blank=True, verbose_name='ИНН', db_index=True)

    class Meta:
        verbose_name = 'Контакт'
        verbose_name_plural = 'Контакты'

    def __str__(self):
        return self.name


class Subscribe(models.Model):
    label = 'Подписка'
    mail = models.EmailField(max_length=50, verbose_name='Электронная почта', unique=True, db_index=True)
    agreement = models.BooleanField(default=True, verbose_name='Согласие на передачу персональных данных', db_index=True)

    class Meta:
        verbose_name = 'Электронная почта'
        verbose_name_plural = 'Список Email-ов'

    def __str__(self):
        return self.mail


class ContactForm(models.Model):
    first_name = models.CharField(max_length=50, verbose_name='Ваше Имя', db_index=True)
    mail = models.EmailField(max_length=50, verbose_name='Ваша почта', db_index=True)
    company = models.CharField(max_length=1501, blank=True, verbose_name= 'Организация', db_index=True)
    phone = models.CharField(max_length=18, blank=True, verbose_name='Телефон', db_index=True)
    message = models.TextField(max_length=300, verbose_name='Сообщение')
    agreement = models.BooleanField(default=True, verbose_name='Согласие на передачу персональных данных', db_index=True)

    class Meta:
        verbose_name = 'Контактная форма'
        verbose_name_plural = 'Контактные формы'

    def __str__(self):
        return self.mail