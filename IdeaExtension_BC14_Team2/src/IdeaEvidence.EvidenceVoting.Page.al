page 50130 "Voting List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Evidence Voting Table";
    //CardPageId = 50121;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Idea No."; "Idea No.1")
                {
                    ApplicationArea = All;
                    Width = 2;
                    trigger OnDrillDown() // kliknutí na záznam
                    var
                        IdeaEvid: Record "Idea Evidence Header";
                    begin
                        IdeaEvid.Get("Idea No.1"); // funkce, která nám vrátí samotný záznam
                        Page.Run(Page::"Idea Evidence Card", IdeaEvid);
                        //        stránka, která se má zobrazit    záznam, který se má otevřít
                    end;

                }
                field("Name"; "Name")
                {
                    StyleExpr = 'strong';
                    ApplicationArea = All;
                    Width = 40;
                    trigger OnDrillDown() // kliknutí na záznam
                    var
                        IdeaEvid: Record "Idea Evidence Header";
                    begin
                        IdeaEvid.Get("Idea No.1"); // funkce, která nám vrátí samotný záznam
                        Page.Run(Page::"Idea Evidence Card", IdeaEvid);
                        //        stránka, která se má zobrazit    záznam, který se má otevřít
                    end;

                }
                field("User"; "User")
                {
                    ApplicationArea = All;
                    Width = 10;
                }
            }
        }
    }
}