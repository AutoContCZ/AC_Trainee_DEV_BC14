table 50123 "Evidence Category Table"
{
    DataClassification = CustomerContent;
    DataCaptionFields = "Category Name";

    fields
    {

        field(1; "Category No."; Code[10])
        {
            Caption = 'Category No.';
            DataClassification = CustomerContent;
            //AutoIncrement = false;
        }
        field(2; "Category Name"; Text[40])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Posts"; Integer)
        {
            Caption = 'Posts';
            FieldClass = FlowField;
            CalcFormula = count ("Category Idea Connec. Table EV" where("Category No." = field("Category No.")));
        }

    }

    keys
    {
        key(PK; "Category No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Category No.", "Category Name")
        {

        }
    }
}