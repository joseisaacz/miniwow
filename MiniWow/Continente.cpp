#include"Continente.h"

Continente::Continente(){
this->nombre="";
this->id=-1;
}

Continente::Continente(int _id,char* _nombre){
this->id=_id;    
this->nombre=_nombre;
}

Continente::~Continente(){
    
}

int Continente::getId(){
return this->id;
}

char* Continente::getNombre(){
 return this->nombre;
}
void Continente::setId(int _id){
    this->id=id;
}

void Continente::setNombre(char* _nombre){
 this->nombre=_nombre;
}