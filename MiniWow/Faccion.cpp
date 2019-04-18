#include"Faccion.h"

Faccion::Faccion(){
this->nombre="";
this->id=-1;
}

Faccion::Faccion(int _id,char* _nombre){
this->id=_id;    
this->nombre=_nombre;
}
Faccion::~Faccion(){
    
}

int Faccion::getId(){
return this->id;
}

char* Faccion::getNombre(){
 return this->nombre;
}
void Faccion::setId(int _id){
    this->id=id;
}

void Faccion::setNombre(char* _nombre){
 this->nombre=_nombre;
}