from django.shortcuts import render

from predictions.models import Predictor
from predictions.forms import PredictionForm


def index(request, start_data=None, end_date=None):
    if request.method == 'POST':
        form = PredictionForm(request.POST)
        if form.is_valid():
            period = form.cleaned_data['period']
            type = form.cleaned_data['type']
            context = {
                'form':form,
                'predictions': predict(period, type) 
            }
            return render(request, 'predictions/index.html', context=context)

    form = PredictionForm()
    return render(request, 'predictions/index.html', {'form': form})


def predict(period, type):
    predictor = Predictor(period, type)
    prediction = predictor.predict()
    return prediction