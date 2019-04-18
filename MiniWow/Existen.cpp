#include"Existen.h"
    
   Existen::Existen(){

   }
   Existen::Existen(Faccion _facc, Raza _raz){
       this->_faccion=_facc;
       this->_raza=_raz;
   }
    Existen::~Existen(){

    }
   Faccion Existen::getFaccion(){
       return this->_faccion;
   }
    Raza Existen::getRaza(){
        return this->_raza;
    }
   void Existen::setFaccion(Faccion _fac){
       this->_faccion=_fac;
   }
    void Existen::setRaza(Raza _raz){
        this->_raza=_raz;
    }