tableextension 50100 "Customer Book Ext." extends Customer
{
    fields
    {
        field(50100; "Favorite Book No."; Code[20])
        {
            Caption = 'Favorite Book No.';
            TableRelation = Book;

            trigger OnValidate()
            begin
                if "Favorite Book No." <> '' then begin
                    Book.Get("Favorite Book No.");
                    book.TestBlocked();
                end;
                CalcFields("Favorite Book Description");
            end;
        }

        field(50101; "Favorite Book Description"; Text[50])
        {
            Caption = 'Favorite Book Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup (Book.Description where ("No." = field ("Favorite Book No.")));
        }
    }

    var
        Book: Record Book;
}