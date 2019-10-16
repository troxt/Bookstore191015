pagecustomization "Customize Customer List" customizes "Customer List"
{
    layout
    {
        modify("Location Code")
        {
            Visible = False;
        }
    }
    actions
    {
        movebefore(NewSalesInvoice; NewSalesOrder)
    }
}