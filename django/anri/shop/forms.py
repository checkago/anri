from django import forms
from shop.models import Subscribe, ContactForm


class SubscribeForm(forms.ModelForm):
    class Meta:
        model = Subscribe
        fields = ('mail',)

        def __init__(self, *args, **kwargs):
            super(SubscribeForm, self).__init__(*args, **kwargs)
            self.fields[fields].widget.attrs.update()


class ContactFormForm(forms.ModelForm):
    class Meta:
        model = ContactForm
        fields = ('first_name', 'mail', 'mail', 'company', 'message')

        def __init__(self, *args, **kwargs):
            super(ContactFormForm, self).__init__(*args, **kwargs)
            self.fields[fields].widget.attrs.update({'class': 'form-control'})