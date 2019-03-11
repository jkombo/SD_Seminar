pageextension 50101 "CSD ResourceListExt" extends "Resource List"
//CSD1.00 -28thFeb2019 - D.E Veloper
//Chapter 5 Lab 1-2
//Add New Fields:
//- Internal/External
//- Maximum Participants
//Add new FastTab
//Added ode to OnOpenPage trigger a
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }

        addafter(Type)

        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }

            field("CSD Maximum Participants"; "CSD Maximum Participants")

            {
                Visible = ShowMaxField;
            }
        }
    }

    trigger OnOpenPage()

    begin
        ShowType := (GetFilter(Type) = '');

        ShowMaxField :=

            (GetFilter(Type) = format(Type::Machine));
    end;

    var

        [InDataSet]

        ShowType: Boolean;

        [InDataSet]

        ShowMaxField: Boolean;
}