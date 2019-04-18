#ifndef PUEDEUSAR_H
#define PUEDEUSAR_H
#include"Clase.h"
#include"Equipamento.h"

class PuedeUsar {
 
 private:
    Clase _clase;
    Equipamento _equipamento;

 public:
    PuedeUsar();
    PuedeUsar(Clase _cls, Equipamento _equip);
    ~PuedeUsar();
    Clase getClase();
    Equipamento getEquipamento();
    void setClase(Clase _cls);
    void setEquipamento(Equipamento _equi);


};
#endif