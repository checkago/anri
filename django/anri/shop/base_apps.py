from shop.models import Contact
from shop.forms import SubscribeForm


def contacts(request):
    return {'contacts': Contact.objects.all()}


def subscribe(request):
    if request.method == 'POST':
        form = SubscribeForm(request.POST)

        if form.is_valid():
            form.save()

    else:
        form = SubscribeForm()

    return {'form': form}