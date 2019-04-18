#ifndef FACCION_H
#define FACCION_H
#include<iostream>

class Faccion {

 private:
    int id;
    char* nombre;

 public:
    Faccion();
    Faccion(int _id,char* _nombre);
    ~Faccion();
    int getId();
    char* getNombre();
    void setId(int _id);
    void setNombre(char* _nombre);





};
#endif