table 50100 "Book"
{
    Caption = 'Book';
    DataCaptionFields = "No.", Description;
    LookupPageId = "Book List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';

            trigger OnValidate()
            begin
                if ("Search Description" = UpperCase(xRec.Description)) or ("Search Description" = '') then
                    "Search Description" := CopyStr(Description, 1, MaxStrLen("Search Description"));
            end;
        }
        field(3; "Search Description"; Code[30])
        {
            Caption = 'Search Description';
        }
        field(4; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(5; "Type"; Option)
        {
            Caption = 'Type';
            OptionMembers = Hardcover,Paperbag;
            OptionCaption = 'Hardcover,Paperbag';
        }
        field(7; Created; Date)
        {
            Caption = 'Created';
            Editable = false;
        }
        field(8; "Last Modified"; Date)
        {
            Caption = 'Last Modified';
            Editable = false;
        }
        field(10; Author; Text[50])
        {
            Caption = 'Author';
        }
        field(11; "Author Privision %"; Decimal)
        {
            Caption = 'Author Privision %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            MaxValue = 100;
        }
        field(15; "ISBN"; Code[20])
        {
            Caption = 'ISBN';
        }
        field(16; "No. of Pages"; Integer)
        {
            Caption = 'No. of Pages';
            MinValue = 0;
        }
        field(17; "Edition No."; Integer)
        {
            Caption = 'Edition No.';
        }
        field(18; "Date of Publishing"; Date)
        {
            Caption = 'Date of Publishing';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, Author, "Date of Publishing") { }
    }

    trigger OnInsert()
    begin
        OnBeforeInsertBook(Rec);
        Created := Today();
        OnAfterInsertBook(Rec);
    end;

    trigger OnModify()
    begin
        "Last Modified" := Today();
    end;

    trigger OnRename()
    begin
        "Last Modified" := Today();
    end;

    [IntegrationEvent(true, false)]
    procedure OnBeforeInsertBook(var Book: Record Book)
    begin

    end;

    [IntegrationEvent(true, false)]
    procedure OnAfterInsertBook(var Book: Record Book)
    begin

    end;

    procedure TestBlocked()
    begin
        TestField(Blocked, false);
    end;
}