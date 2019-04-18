#include"Raza.h"

Raza::Raza(){
this->nombre="";
this->id=-1;
}

Raza::Raza(int _id,char* _nombre){
this->id=_id;    
this->nombre=_nombre;
}
Raza::~Raza(){
    
}

int Raza::getId(){
return this->id;
}

char* Raza::getNombre(){
 return this->nombre;
}

void Raza::setId(int _id){
    this->id=id;
}

void Raza::setNombre(char* _nombre){
 this->nombre=_nombre;
}