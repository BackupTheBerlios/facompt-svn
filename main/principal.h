//---------------------------------------------------------------------------

#ifndef principalH
#define principalH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "JvMenus.hpp"
#include <Menus.hpp>
//---------------------------------------------------------------------------
class TformPrincipal : public TForm
{
__published:	// IDE-managed Components
        TJvMainMenu *mainMenu;
        TMenuItem *information;
        TMenuItem *grandLivre;
        TMenuItem *clients;
        TMenuItem *fournisseurs;
        TMenuItem *salaires;
        TMenuItem *facturation;
private:	// User declarations
public:		// User declarations
        __fastcall TformPrincipal(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TformPrincipal *formPrincipal;
//---------------------------------------------------------------------------
#endif
