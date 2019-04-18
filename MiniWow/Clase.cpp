#include"Clase.h"

Clase::Clase(){
this->nombre="";
this->id=-1;
}

Clase::Clase(int _id,char* _nombre){
this->id=_id;    
this->nombre=_nombre;
}

Clase::~Clase(){
    
}

int Clase::getId(){
return this->id;
}

char* Clase::getNombre(){
 return this->nombre;
}
void Clase::setId(int _id){
    this->id=id;
}

void Clase::setNombre(char* _nombre){
 this->nombre=_nombre;
}