#include"Equipamento.h"

Equipamento::Equipamento(){

}
Equipamento::Equipamento(int _id,char* _nombre, int _nivel){
    this->id=_id;
    this->nombre=_nombre;
    this->nivel=_nivel;
}
Equipamento::~Equipamento(){

}
int Equipamento::getId(){
    return this->id;
}
char* Equipamento::getNombre(){
    return this->nombre;
}
int Equipamento::getNivel(){
    return this->nivel;
}
void Equipamento::setId(int _id){
    this->id=_id;
}
void Equipamento::setNombre(char* _nombre){
    this->nombre=_nombre;
}
void Equipamento::setNivel(int _niv){
    this->nivel=_niv;
}