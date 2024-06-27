from django.urls import path
from .views import SucursalesListView, SucursalCreateView, SucursalUpdateView, SucursalDeleteView

urlpatterns = [
    path('api/sucursales/', SucursalesListView.as_view(), name='api_sucursales'),
    path('sucursales/add/', SucursalCreateView.as_view(), name='sucursales_add'),
    # path('clientes/edit/<int:pk>/', ClienteUpdateView.as_view(), name='cliente_edit'),
    # path('clientes/delete/<int:pk>/', ClienteDeleteView.as_view(), name='cliente_delete'),
]