sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'avvale/demo/pedidosreq/test/integration/FirstJourney',
		'avvale/demo/pedidosreq/test/integration/pages/PedidosList',
		'avvale/demo/pedidosreq/test/integration/pages/PedidosObjectPage',
		'avvale/demo/pedidosreq/test/integration/pages/PosicionesObjectPage'
    ],
    function(JourneyRunner, opaJourney, PedidosList, PedidosObjectPage, PosicionesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('avvale/demo/pedidosreq') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePedidosList: PedidosList,
					onThePedidosObjectPage: PedidosObjectPage,
					onThePosicionesObjectPage: PosicionesObjectPage
                }
            },
            opaJourney.run
        );
    }
);