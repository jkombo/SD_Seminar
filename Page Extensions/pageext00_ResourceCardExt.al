pageextension 50100 "CASD ResourceCardExt" extends "Resource Card"
//CSD1.00 -28thFeb2019 - D.E Veloper
//Chapter 5 Lab 1-2
//Add New Fields:
//- Internal/External
//- Maximum Participants
//Add new FastTab
//Added ode to OnOpenPage trigger 
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }

    trigger OnAfterGetRecord();

    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}