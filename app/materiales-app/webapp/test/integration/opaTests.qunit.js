sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'avvale/demo/materialesapp/test/integration/FirstJourney',
		'avvale/demo/materialesapp/test/integration/pages/MaterialList',
		'avvale/demo/materialesapp/test/integration/pages/MaterialObjectPage'
    ],
    function(JourneyRunner, opaJourney, MaterialList, MaterialObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('avvale/demo/materialesapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMaterialList: MaterialList,
					onTheMaterialObjectPage: MaterialObjectPage
                }
            },
            opaJourney.run
        );
    }
);