using { com.trial.MyAsset as my } from '../db/schema';

@path : '/service/MyAsset'
service MyAssetService
{
    @odata.draft.enabled
    entity Asset as
        projection on my.Asset;

    @odata.draft.enabled
    entity Employee as
        projection on my.Employee;
}

annotate MyAssetService with @requires :
[
    'authenticated-user'
];
