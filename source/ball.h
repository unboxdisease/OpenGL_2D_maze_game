#include "main.h"

#ifndef BALL_H
#define BALL_H


class Ball {
public:

    Ball() {}
    Ball(float x, float y, color_t color);
    glm::vec3 position;
    glm::vec3 Size;
    float rotation;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void move_xf();
    void move_xb();
    void move_yf();
    void move_yb();
    void tick();
    void vapor();
    double speed;
    int health;
    int tasks;
private:
    VAO *object[10];
};

#endif // BALL_H
