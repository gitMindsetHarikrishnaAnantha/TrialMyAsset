using MyAssetService as service from '../../srv/service';

annotate service.Asset with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Id',
            Value : Id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Desc',
            Value : Desc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'employee_Id',
            Value : employee_Id,
        },
    ]
);
annotate service.Asset with {
    employee @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Employee',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : employee_Id,
                ValueListProperty : 'Id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Name',
            },
        ],
    }
};
annotate service.Asset with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Id',
                Value : Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Desc',
                Value : Desc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'employee_Id',
                Value : employee_Id,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
