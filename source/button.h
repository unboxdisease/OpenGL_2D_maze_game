#include "main.h"

#ifndef Button_H
#define Button_H


class Button {
public:
    Button() {}
    Button(float x, float y, color_t color);
    glm::vec3 position;
    glm::vec3 Size;
    float rotation;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void collect();
    void collect2();
    void tick();
    double speed;
private:
    VAO *object[10];
};

#endif // Button_H
