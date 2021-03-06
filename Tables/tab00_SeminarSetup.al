table 50100 "CSD Seminar Setup"

// CSD1.00 - 1stMarch2019 - D. E. Veloper
// Chapter 5 - Lab 2-1 
{
    Caption = 'Seminar Setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';

        }

        field(20; "Seminar Nos."; Code[20])

        {
            Caption = 'Seminar Nos.';

            TableRelation = "No. Series";
        }

        field(30; "Seminar Registration Nos."; code[20])

        {
            caption = 'Seminar Registration Nos.';

            TableRelation = "No. Series";
        }

        field(40; "Posted Seminar Reg. Nos."; Code[20])

        {
            caption = 'Posted Seminar Reg. Nos.';

            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}