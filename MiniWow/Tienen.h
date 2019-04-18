#ifndef TIENEN_H
#define TIENEN_H
#include"Raza.h"
#include"Clase.h"

class Tienen {

 private:

    Clase _clase;
    Raza _raza;

 public:
    Tienen();
    Tienen(Clase _cls, Raza _raz);
    ~Tienen();
    Clase getClase();
    Raza getRaza();
    void setClase(Clase _cls);
    void setRaza(Raza _raz);
};
#endif