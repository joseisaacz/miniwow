#ifndef RAZA_H
#define RAZA_H
#include<iostream>

class Raza {

 private:
    int id;
    char* nombre;

 public:
    Raza();
    Raza(int _id,char* _nombre);
    ~Raza();
    int getId();
    char* getNombre();
    void setId(int _id);
    void setNombre(char* _nombre);





};
#endif