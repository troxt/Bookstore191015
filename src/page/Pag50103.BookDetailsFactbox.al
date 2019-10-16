page 50103 "Book Details Factbox"
{
    PageType = CardPart;
    SourceTable = Book;
    Caption = 'Book Details';

    layout
    {
        area(content)
        {
            field("No."; "No.")
            {
                ApplicationArea = All;
                DrillDown = true;

                trigger OnDrillDown()
                begin
                    ShowDetail();
                end;
            }
            field(Description; Description)
            {
                ApplicationArea = All;
            }
            field(Author; Author)
            {
                ApplicationArea = All;
            }
        }
    }

    local procedure ShowDetail()
    begin
        Page.Run(Page::"Book Card", Rec);
    end;
}
