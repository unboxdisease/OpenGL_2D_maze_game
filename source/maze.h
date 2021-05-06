#include "main.h"

#ifndef Maze_H
#define Maze_H


class Maze {
public:
    Maze() {}
    Maze(float x, float y, color_t color);
    glm::vec3 position;
    float rotation;
    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void tick();
    double speed;
private:
    VAO *object;
};

#endif // Maze_H
