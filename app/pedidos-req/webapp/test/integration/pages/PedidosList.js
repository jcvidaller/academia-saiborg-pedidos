sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'avvale.demo.pedidosreq',
            componentId: 'PedidosList',
            contextPath: '/Pedidos'
        },
        CustomPageDefinitions
    );
});