#ifndef CONTINENTE_H
#define CONTINENTE_H
#include<iostream>

class Continente{

 private:
    int id;
    char* nombre;

 public:
    Continente();
    Continente(int _id,char* _nombre);
    ~Continente();
    int getId();
    char* getNombre();
    void setId(int _id);
    void setNombre(char* _nombre);
};
#endif