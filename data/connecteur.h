//---------------------------------------------------------------------------

#ifndef connecteurH
#define connecteurH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TconnecteurDonnees : public TDataModule
{
__published:	// IDE-managed Components
private:	// User declarations
public:		// User declarations
        __fastcall TconnecteurDonnees(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TconnecteurDonnees *connecteurDonnees;
//---------------------------------------------------------------------------
#endif
