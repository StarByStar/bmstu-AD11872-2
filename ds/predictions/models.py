from django.db import models
from datetime import date, timedelta

import pandas as pd
import numpy as np

import tensorflow as tf 
from statsmodels.tsa.statespace.sarimax import SARIMAXResults
import statistics

from datetime import datetime, timedelta


class HistoryData(models.Model):
    date = models.DateField(blank=False, null=False)
    quantity = models.IntegerField(blank=False, null=False)


class Predictor():
    STARTDATE = date(2022,11,1)
    STARTPERIOD = 34
    MODELS = {
        'lstm':'../models/model_lstm2',
        'dense':'../models/simple_dense_model',
        'sarimax':'../models/sarimax_model'
    }
    LSTM_STEP = 7
    INIT_DENSE_PARAMS = np.array([ 2., 1., 11., 0.0651731])
    INIT_LSTM_PARAMS = list(np.array([-0.47363509, -0.71369815, -0.4896393 , -0.37849899, -0.87107282, -0.73770446,  0.0651731 ]))
    STD_DEVIATION = 1125.248221
    AVG = 2851.69951690821

    def __init__(self, period, type) -> None:
        self.period = period
        self.type = type
        self.model = self.load_model()
        self.dates = [self.STARTDATE]

    def load_model(self):
        if self.type == 'lstm' or self.type == 'dense':
            model = tf.keras.models.load_model(self.MODELS[self.type])
            return model
        model = SARIMAXResults.load(self.MODELS[self.type])
        return model

    def predict(self):
        if self.type == 'sarimax':
            prediction = self.__predict_sarimax
            return prediction
        elif self.type == 'dense':
            prediction = self.__predict_dense
            return prediction
        elif self.type == 'lstm':
            prediction = self.__predict_lstm
            return prediction
        else:
            return None

    def __predict_dense(self):
        rez = []
        params = self.INIT_DENSE_PARAMS
        for day in range(self.period):
            predict = self.model.predict(params.reshape(1, 4), verbose=0)
            rez.append(predict[0][0])
            params = self.__next_params(day, predict)
        rez = self.__reverse_standart(rez)
        return dict(zip(self.dates, rez))

    def __next_params(self, day, predict):
        start_date = self.STARTDATE
        next_date = start_date + timedelta(days=day)
        self.dates.append(next_date)
        params = np.array([float(next_date.strftime('%w')),
                      float(next_date.strftime('%#d')),
                      float(next_date.strftime('%#m')),
                      predict[0][0]])
        return params

    def __predict_lstm(self):
        y = list(np.array([-0.47363509, -0.71369815, -0.4896393 , -0.37849899, -0.87107282, -0.73770446,  0.0651731 ]))
        future = []
        for day in range(self.period):
            x = np.array(y[-1*self.LSTM_STEP::]).reshape((1, self.LSTM_STEP, 1))
            y_f = self.model.predict(x, verbose=0)[0][0]
            y.append(y_f)
            future.append(y_f)
            start_date = self.STARTDATE
            next_date = start_date + timedelta(days=day)
            self.dates.append(next_date)
        future = self.__reverse_standart(future)
        return dict(zip(self.dates, future))

    def __predict_sarimax(self):
        prediction = self.model.predict(self.STARTPERIOD, self.STARTPERIOD + self.period)
        prediction = dict(zip(prediction.index.format() , prediction))
        return prediction

    def __reverse_standart(self, predictions_list):
        prediction_arr = np.array(predictions_list)
        std_deviation = self.STD_DEVIATION
        avg = self.AVG
        reverse_prediction = prediction_arr*std_deviation + avg
        return list(reverse_prediction)
