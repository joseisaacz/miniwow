 #include"Tienen.h"   
    
Tienen::Tienen(){

}
Tienen::Tienen(Clase _cls, Raza _raz){
    this->_clase = _cls;
    this->_raza=_raz;
}
Tienen::~Tienen(){

}
Clase Tienen::getClase(){
    return this->_clase;
}
Raza Tienen::getRaza(){
    return this->_raza;
}
void Tienen::setClase(Clase _cls){
    this->_clase=_cls;
}
void Tienen::setRaza(Raza _raz){
    this->_raza=_raz;
}