#include "main.h"

#ifndef Coin_H
#define Coin_H


class Coin {
public:
    Coin() {}
    Coin(float x, float y, color_t color);
    glm::vec3 position;
    glm::vec3 Size;
    float rotation;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void collect();
    void tick();
    double speed;
private:
    VAO *object[10];
};

#endif // Coin_H
