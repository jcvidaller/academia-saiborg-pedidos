using { avvale.demo as modelo } from '../db/modelo';

service PedidosService {

    @readonly entity Monedas as projection on modelo.Monedas;
    entity Material as projection on modelo.Materiales;
    entity Posiciones as projection on modelo.Posiciones;
    entity Pedidos as projection on modelo.Pedidos;
}

annotate modelo.Materiales with @odata.draft.enabled;
annotate modelo.Pedidos with @odata.draft.enabled;


