from django.contrib import admin
from django.urls import path
from predictions import views

urlpatterns = [
    path('index/', views.index, name='index'),
    path('', views.index, name='index'),
]