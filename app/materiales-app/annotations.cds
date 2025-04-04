using PedidosService as service from '../../srv/servicido';
annotate service.Material with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'nombre',
                Value : nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'tipo',
                Value : tipo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'precio',
                Value : precio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'moneda_id',
                Value : moneda_id,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Nombre}',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'tipo',
            Value : tipo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'precio',
            Value : precio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'moneda_id',
            Value : moneda_id,
        },
    ],
    UI.SelectionFields : [
        nombre,
        precio,
        tipo,
    ],
    UI.HeaderInfo : {
        TypeName : 'Material',
        TypeNamePlural : 'Materiales',
        Title : {
            $Type : 'UI.DataField',
            Value : nombre,
        },
    },
);

annotate service.Material with {
    moneda @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Monedas',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : moneda_id,
                    ValueListProperty : 'id',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'nombre',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'simbolo',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Material with {
    nombre @Common.Label : 'nombre'
};

annotate service.Material with {
    precio @Common.Label : 'precio'
};

annotate service.Material with {
    tipo @Common.Label : 'tipo'
};

annotate service.Monedas with {
    id @Common.Text : nombre
};

