page 50102 "Book List"
{

    PageType = List;
    SourceTable = Book;
    Caption = 'Books';
    Editable = false;
    CardPageId = "Book Card";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Author; Author)
                {
                    ApplicationArea = All;
                }
                field(ISBN; ISBN)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field("No. of Pages"; "No. of Pages")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
