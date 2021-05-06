#include "bomb.h"
#include "main.h"

Bomb::Bomb(float x, float y, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = 0;
    speed = 1;
    float a = rand()%5 + 0.5;
    float b = rand()%4 + 0.5;
    this->position = glm::vec3(a,b, 0);
    // Our vertices. Three consecutive floats give a 3D vertex; Three consecutive vertices give a triangle.
    // A cube has 6 faces with 2 triangles each, so this makes 6*2=12 triangles, and 12*3 vertices
    // static const GLfloat vertex_buffer_data2[] = {
    //     -0.150f,-0.050f,0.0f, // triangle 1 : begin
    //     -0.150f,0.10f, 0.0f,
    //     0.150f, 0.10f, 0.0f, // triangle 1 : end
    //     0.150f, 0.10f,0.0f, // triangle 2 : begin
    //     -0.150f,-0.050f,0.0f,
    //     0.150f, -0.050f,0.0f, // triangle 2 : end
        
    // };
    static const GLfloat vertex_buffer_data[] = {
        -0.20f,0.0f,0.0f, // triangle 1 : begin
        0.0f,0.20f, 0.0f,
        0.0f, -0.20f, 0.0f, // triangle 1 : end
        0.20f, 0.0f,0.0f, // triangle 2 : begin
        0.0f,-0.20f,0.0f,
        0.0f, 0.20f,0.0f, // triangle 2 : 
        

        // -0.050f,-0.20f,0.0f, // triangle 1 : begin
        // -0.20f,-0.20f, 0.0f,
        // -0.20f, -0.30f, 0.0f, // triangle 1 : end
        // -0.050f,-0.30f,0.0f, // triangle 1 : begin
        // -0.20f,-0.30f, 0.0f,
        // -0.050f, -0.20f, 0.0f,

        // 0.050f,-0.20f,0.0f, // triangle 1 : begin
        // 0.20f,-0.20f, 0.0f,
        // 0.20f, -0.30f, 0.0f, // triangle 1 : end
        // 0.050f,-0.30f,0.0f, // triangle 1 : begin
        // 0.20f,-0.30f, 0.0f,
        // 0.050f, -0.20f, 0.0f,
        
    };
    static const GLfloat vertex_buffer_data1[] = {
        -0.10f,0.10f,0.0f, // triangle 1 : begin
        0.10f,0.10f, 0.0f,
        -0.10f, -0.10f, 0.0f, // triangle 1 : end
        0.10f, 0.10f,0.0f, // triangle 2 : begin
        0.10f,-0.10f,0.0f,
        -0.10f, -0.10f,0.0f,
    };
    color = {250,50,50};
    this->Size = glm::vec3(0.2,0.2,0);
    this->object[0] = create3DObject(GL_TRIANGLES, 6*3, vertex_buffer_data, color, GL_FILL);
    color = {220,150,00};
    this->object[1] = create3DObject(GL_TRIANGLES, 2*3, vertex_buffer_data1, color, GL_FILL);
}

void Bomb::draw(glm::mat4 VP) {
    this->rotation += 5;
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 1, 0));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object[0]);
    draw3DObject(this->object[1]);
    
}
void Bomb::collect(){
    this->position.x = 100;
    this->position.y = 100;
    powerups = 1;
}

