#include "main.h"

#ifndef Bomb_H
#define Bomb_H


class Bomb {
public:
    Bomb() {}
    Bomb(float x, float y, color_t color);
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

#endif // Bomb_H
