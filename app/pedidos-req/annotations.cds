using PedidosService as service from '../../srv/servicido';
annotate service.Pedidos with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Descripción',
                Value : descripcion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Fecha de Entrega',
                Value : fechaEntrega,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Posiciones',
            ID : 'Posiciones',
            Target : 'posiciones/@UI.LineItem#Posiciones',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Descripción',
            Value : descripcion,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Fecha de entrega',
            Value : fechaEntrega,
        },
    ],
    UI.HeaderInfo : {
        TypeName : 'Pedido',
        TypeNamePlural : 'Pedidos',
        Title : {
            $Type : 'UI.DataField',
            Value : descripcion,
        },
    },
    UI.SelectionFields : [
        descripcion,
        fechaEntrega,
    ],
);

annotate service.Posiciones with @(
    UI.LineItem #Posiciones : [
        {
            $Type : 'UI.DataField',
            Value : material.nombre,
            Label : 'Producto',
        },
        {
            $Type : 'UI.DataField',
            Value : cantidad,
            Label : 'Cantidad',
        },
        {
            $Type : 'UI.DataField',
            Value : precio,
            Label : 'Importe',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation',
        },
    ],
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : material_ID,
                Label : 'Producto',
            },
            {
                $Type : 'UI.DataField',
                Value : cantidad,
                Label : 'Cantidad',
            },
            {
                $Type : 'UI.DataField',
                Value : precio,
                Label : 'Importe',
            },
            {
                $Type : 'UI.DataField',
                Value : moneda_id,
                Label : 'Moneda',
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : 'Posición',
        TypeNamePlural : 'Posiciones',
        Title : {
            $Type : 'UI.DataField',
            Value : material.nombre,
        },
    },
);

annotate service.Posiciones with {
    material @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Material',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : material_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'nombre',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'tipo',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'precio',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'moneda_id',
                },
            ],
            Label : 'Productos',
        },
        Common.ValueListWithFixedValues : false,
        Common.Text : {
            $value : material.nombre,
            ![@UI.TextArrangement] : #TextOnly
        },
        Common.FieldControl : #Mandatory,
)};

annotate service.Posiciones with {
    precio @(
        Common.FieldControl : #ReadOnly,
        Measures.ISOCurrency : material.moneda_id,
    )
};

annotate service.Posiciones with {
    moneda @Common.FieldControl : #ReadOnly
};

annotate service.Pedidos with {
    descripcion @(
        Common.Label : 'Descripción',
        Common.FieldControl : #Mandatory,
    )
};

annotate service.Pedidos with {
    fechaEntrega @(
        Common.Label : 'Fecha de entrega',
        Common.FieldControl : #Mandatory,
    )
};

annotate service.Material with {
    ID @Common.Text : nombre
};

annotate service.Posiciones with {
    cantidad @Common.FieldControl : #Mandatory
};

