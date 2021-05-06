#include "ball.h"
#include "main.h"
#include <unistd.h>
#include<stdlib.h>
float nextx, nexty;
float tt = 250000;
Ball::Ball(float x, float y, color_t color)
{
    this->position = glm::vec3(x, y, 0);
    this->rotation = 0;
    this->health = 10;
    this->tasks = 0;
    speed = 1;
    // Our vertices. Three consecutive floats give a 3D vertex; Three consecutive vertices give a triangle.
    // A cube has 6 faces with 2 triangles each, so this makes 6*2=12 triangles, and 12*3 vertices
    static const GLfloat vertex_buffer_data2[] = {
        -0.150f, -0.050f, 0.0f, // triangle 1 : begin
        -0.150f, 0.10f, 0.0f,
        0.150f, 0.10f, 0.0f, // triangle 1 : end
        0.150f, 0.10f, 0.0f, // triangle 2 : begin
        -0.150f, -0.050f, 0.0f,
        0.150f, -0.050f, 0.0f, // triangle 2 : end

    };
    static const GLfloat vertex_buffer_data[] = {
        -0.20f,
        -0.20f,
        0.0f, // triangle 1 : begin
        -0.20f,
        0.20f,
        0.0f,
        0.20f,
        0.20f,
        0.0f, // triangle 1 : end
        0.20f,
        0.20f,
        0.0f, // triangle 2 : begin
        -0.20f,
        -0.20f,
        0.0f,
        0.20f,
        -0.20f,
        0.0f, // triangle 2 : end

        -0.050f,
        -0.20f,
        0.0f, // triangle 1 : begin
        -0.20f,
        -0.20f,
        0.0f,
        -0.20f,
        -0.30f,
        0.0f, // triangle 1 : end
        -0.050f,
        -0.30f,
        0.0f, // triangle 1 : begin
        -0.20f,
        -0.30f,
        0.0f,
        -0.050f,
        -0.20f,
        0.0f,

        0.050f,
        -0.20f,
        0.0f, // triangle 1 : begin
        0.20f,
        -0.20f,
        0.0f,
        0.20f,
        -0.30f,
        0.0f, // triangle 1 : end
        0.050f,
        -0.30f,
        0.0f, // triangle 1 : begin
        0.20f,
        -0.30f,
        0.0f,
        0.050f,
        -0.20f,
        0.0f,

    };
    this->Size = glm::vec3(0.2, 0.3, 0);
    this->object[0] = create3DObject(GL_TRIANGLES, 6 * 3, vertex_buffer_data, color, GL_FILL);
    color = {20, 150, 200};
    this->object[1] = create3DObject(GL_TRIANGLES, 2 * 3, vertex_buffer_data2, color, GL_FILL);
}

void Ball::draw(glm::mat4 VP)
{
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate(this->position); // glTranslatef
    glm::mat4 rotate = glm::rotate((float)(this->rotation * M_PI / 180.0f), glm::vec3(1, 0, 0));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object[0]);
    draw3DObject(this->object[1]);
}

void Ball::set_position(float x, float y)
{
    this->position = glm::vec3(x, y, 0);
}
void Ball::move_xf()

{
    
    nextx = this->position.x + 1.00;
    int flag = 0;
    for (int i = 0; i < verti; i++)
    {
        
        if ((this->position.y > vertical[i].y && this->position.y < vertical[i].y1) && (this->position.x < vertical[i].x && nextx > vertical[i].x))
        {
            flag = 1;
        }
    }
    if (flag == 0)
        this->position.x += 1.00;
    else
    {
    }

    usleep(tt);
}
void Ball::move_xb()
{
    nextx = this->position.x - 1.00;
    int flag = 0;
    for (int i = 0; i < verti; i++)
    {
        if ((this->position.y > vertical[i].y && this->position.y < vertical[i].y1) && (this->position.x > vertical[i].x && nextx < vertical[i].x))
        {
            flag = 1;
        }
    }
    if (flag == 0)
        this->position.x -= 1.00;
    else
    {
    }
    usleep(tt);
}
void Ball::move_yf()
{
    nexty = this->position.y + 1.00;
    int flag = 0;
    for (int i = 0; i < hori; i++)
    {
        
        if ((this->position.x > horizon[i].x && this->position.x < horizon[i].x1) && (this->position.y < horizon[i].y && nexty > horizon[i].y))
        {
            flag = 1;
        }
    }
    if (flag == 0)
        this->position.y += 1.00;
    else
    {
    }
    usleep(tt);
}
void Ball::move_yb()
{
    nexty = this->position.y - 1.00;
    int flag = 0;
    for (int i = 0; i < hori; i++)
    {   
        // printf("%f ",horizon[i].x);
        // printf("%f \n",horizon[i].y);
        
        if ((this->position.x > horizon[i].x && this->position.x < horizon[i].x1) && (this->position.y > horizon[i].y && nexty < horizon[i].y))
        {
            flag = 1;
        }
    }
    if (flag == 0)
        this->position.y -= 1.00;
    else
    {
    }
    usleep(tt);
}
void Ball::vapor()
{
    this->position.x = 100;
    this->position.y = 100;
}