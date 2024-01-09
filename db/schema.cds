namespace com.trial.MyAsset;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Asset
{
    key Id : String(100);
    Name : String(100);
    Desc : String(100);
    employee : Association to one Employee;
}

entity Employee
{
    key Id : String(100);
    Name : String(100);
    asset : Association to many Asset on asset.employee = $self;
}
