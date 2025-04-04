namespace avvale.demo;

using { cuid, managed } from '@sap/cds/common';


entity Monedas {
    key id: String(3);
    nombre: String(50);
    simbolo: String(5);
}

entity Materiales : cuid, managed {
  nombre: String;
  tipo: String;
  precio: Decimal;
  moneda: Association to one Monedas;
}

entity Posiciones : cuid, managed {
  material: Association to one Materiales;
  cantidad: Decimal;
  precio: Decimal = cantidad * material.precio;
  moneda: Association to one Monedas;
  pedido: Association to one Pedidos;
}

entity Pedidos : cuid, managed {
  descripcion: String;
  fechaEntrega: Date;
  posiciones: Composition of many Posiciones on posiciones.pedido = $self;
}


