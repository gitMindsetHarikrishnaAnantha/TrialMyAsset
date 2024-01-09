sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'MyAsset/MyAssetUI/test/integration/FirstJourney',
		'MyAsset/MyAssetUI/test/integration/pages/AssetList',
		'MyAsset/MyAssetUI/test/integration/pages/AssetObjectPage'
    ],
    function(JourneyRunner, opaJourney, AssetList, AssetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('MyAsset/MyAssetUI') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAssetList: AssetList,
					onTheAssetObjectPage: AssetObjectPage
                }
            },
            opaJourney.run
        );
    }
);