pageextension 50100 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            group(Bookstore)
            {
                Caption = 'Bookstore';

                field("Favorite Book No."; "Favorite Book No.")
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Favorite Book Description"; "Favorite Book Description")
                {
                    ApplicationArea = All;
                }
            }
        }
        addbefore(Control149)
        {
            part(BookDetailsFactbox; "Book Details Factbox")
            {
                Caption = 'Book Details';
                ApplicationArea = All;
                SubPageLink = "No." = field ("Favorite Book No.");
            }
        }
    }
}
