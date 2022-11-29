from django import forms

class PredictionForm(forms.Form):
    CHOICES=[('lstm','LSTM нейронная сеть (день)'),
         ('dense','Полносвязная НС прямого распространения (день)'),
         ('sarimax',' SARIMAX (месяц)')]

    type = forms.ChoiceField(choices=CHOICES, widget=forms.RadioSelect)
    period = forms.IntegerField(min_value=1)
