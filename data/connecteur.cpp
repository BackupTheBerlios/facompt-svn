//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "connecteur.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TconnecteurDonnees *connecteurDonnees;
//---------------------------------------------------------------------------
__fastcall TconnecteurDonnees::TconnecteurDonnees(TComponent* Owner)
        : TDataModule(Owner)
{
}
//---------------------------------------------------------------------------
