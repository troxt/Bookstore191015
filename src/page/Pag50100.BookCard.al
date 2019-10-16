page 50100 "Book Card"
{
    PageType = Card;
    SourceTable = Book;
    Caption = 'Book Card';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Search Description"; "Search Description")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field(Author; Author)
                {
                    ApplicationArea = All;
                }
                field("No. of Pages"; "No. of Pages")
                {
                    ApplicationArea = All;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = All;
                }
                field(Created; Created)
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Author Privision %"; "Author Privision %")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
            }
            group(Publishing)
            {
                Caption = 'Publishing';
                field("Edition No."; "Edition No.")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Date of Publishing"; "Date of Publishing")
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field(ISBN; ISBN)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Last Modified"; "Last Modified")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
