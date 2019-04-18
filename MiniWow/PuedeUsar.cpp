#include"PuedeUsar.h"

 PuedeUsar::PuedeUsar(){

 }
PuedeUsar::PuedeUsar(Clase _cls, Equipamento _equip){
    this->_clase=_cls;
    this->_equipamento=_equip;
}
PuedeUsar::~PuedeUsar(){

    }
Clase PuedeUsar::getClase(){
    return this->_clase;
}
Equipamento PuedeUsar::getEquipamento(){
    return this->_equipamento;
}
void PuedeUsar::setClase(Clase _cls){
    this->_clase=_cls;
}
void PuedeUsar::setEquipamento(Equipamento _equi){
    this->_equipamento=_equi;
}