#ifndef CLASE_H
#define CLASE_H
#include<iostream>

class Clase{

 private:
    int id;
    char* nombre;

 public:
    Clase();
    Clase(int _id,char* _nombre);
    ~Clase();
    int getId();
    char* getNombre();
    void setId(int _id);
    void setNombre(char* _nombre);
};
#endif