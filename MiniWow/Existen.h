#ifndef EXISTEN_H
#define EXISTEN_H
#include"Raza.h"
#include"Faccion.h"

class Existen{

 private:
    Faccion _faccion;
    Raza _raza;

 public:
    Existen();
    Existen(Faccion _facc, Raza _raz);
    ~Existen();
    Faccion getFaccion();
    Raza getRaza();
    void setFaccion(Faccion _fac);
    void setRaza(Raza _raz);


};
#endif