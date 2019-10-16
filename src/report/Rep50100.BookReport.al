report 50100 "BookReport"
{
    Caption = 'Book List';
    DefaultLayout = RDLC;
    RDLCLayout = 'Rep50100.BookReport.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    dataset
    {
        dataitem("Single_Row_Integer"; Integer)
        {
            DataItemTableView = sorting (number) where (number = const (1));
            column(ShowPageCount; ShowPageCount) { }
            dataitem(Book; Book)
            {
                RequestFilterFields = "No.", Description;
                column(No_Book; "No.") { IncludeCaption = true; }
                column(Title_Book; Description) { IncludeCaption = true; }
                //column(Page_Count_Book; "Page Count") { IncludeCaption = true; }
                column(Autor_Book; Author) { IncludeCaption = true; }
            }
        }
    }
    requestpage
    {
        Caption = 'Book Request';
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field("Show Page Count"; ShowPageCount)
                    {
                        ApplicationArea = All;
                        caption = 'Show Page Count';
                    }
                }
            }
        }
    }
    var
        ShowPageCount: Boolean;

    trigger OnInitReport()
    begin
        ShowPageCount := true;
    end;
}