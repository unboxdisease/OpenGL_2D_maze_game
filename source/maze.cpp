#include "maze.h"
#include "main.h"
#include<iostream>
using namespace std;
struct wall vertical[100],horizon[100];
int verti,hori;
Maze::Maze(float x, float y, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = 0;
    speed = 1;
    // Our vertices. Three consecutive floats give a 3D vertex; Three consecutive vertices give a triangle.
    // A cube has 6 faces with 2 triangles each, so this makes 6*2=12 triangles, and 12*3 vertices
    // static const GLfloat vertex_buffer_data[] = {
    //     -0.20f,-0.20f,0.0f, // triangle 1 : begin
    //     -0.20f,0.20f, 0.0f,
    //     0.20f, 0.20f, 0.0f, // triangle 1 : end
    //     0.20f, 0.20f,0.0f, // triangle 2 : begin
    //     -0.20f,-0.20f,0.0f,
    //     0.20f, -0.20f,0.0f, // triangle 2 : end
        
    // };
    int index = 0,a = 0,vert = 0,hor = 0;
    char arr[5][5],temp[2] = {'U','R'};
    // this->object = create3DObject(GL_TRIANGLES, 12*3, vertex_buffer_data, color, GL_FILL);
    for(int i=0;i<5;i++){
        for(int j=0;j<5;j++){
            a = rand()%2;
            if(j==4){
                arr[i][j] = 'U';
            }
            else if(i==4){
                arr[i][j] = 'R';
            }
            else{
                arr[i][j] = temp[a];
            }
            cout << arr[i][j]<<" ";
        }
        cout << endl;
    }
    static GLfloat vertex_buffer_data[5000];
    index = 0;
    for(int i = 0;i<5;i++){ 
        horizon[hor].x = 1.0f*i;
        horizon[hor].y = -1.0f;
        vertex_buffer_data[index++] = 1.0f*(i);
            vertex_buffer_data[index++] = -1.0f;
            vertex_buffer_data[index++] = 0.0f;

            horizon[hor].x1 = 1.0f*(i+1);
        horizon[hor++].y1 = -1.0f;
            vertex_buffer_data[index++] = 1.0f*(i+1);
            vertex_buffer_data[index++] = -1.0f;
            vertex_buffer_data[index++] = 0.0f;
    }
    for(int j = -1;j<4;j++){
                vertical[vert].x = 1.0f*(0);
                vertex_buffer_data[index++] = 1.0f*(0);
                vertical[vert].y = 1.0f*j;
                vertex_buffer_data[index++] = 1.0f*j;
                vertex_buffer_data[index++] = 0.0f;
                vertex_buffer_data[index++] = 1.0f*(0);

                vertical[vert].x1 = 1.0f*(0);
                vertical[vert++].y1 = 1.0f*(j+1);
                vertex_buffer_data[index++] = 1.0f*(j+1);
                vertex_buffer_data[index++] = 0.0f;
    }

   
    
    for(int i=0;i<5;i++){
        for(int j=0;j<5;j++){
            if(arr[i][j] == 'R'){
                
                vertical[vert].x = 1.0f*(i+1);
                vertical[vert].y = 1.0f*j;
                printf("%f ",vertical[vert].x);
                printf("%f",vertical[vert].y);
                vertex_buffer_data[index++] = 1.0f*(i+1);
                vertex_buffer_data[index++] = 1.0f*j;
                vertex_buffer_data[index++] = 0.0f;

                vertical[vert].x1 = 1.0f*(i+1);
                vertical[vert++].y1 = 1.0f*(j+1);
                vertex_buffer_data[index++] = 1.0f*(i+1);
                vertex_buffer_data[index++] = 1.0f*(j+1);
                vertex_buffer_data[index++] = 0.0f;
            }
            else{
                horizon[hor].x = 1.0f*i;
        horizon[hor].y = 1.0f*j;
                vertex_buffer_data[index++] = 1.0f*(i);
                vertex_buffer_data[index++] = 1.0f*j;
                vertex_buffer_data[index++] = 0.0f;

                horizon[hor].x1 = 1.0f*(i+1);
        horizon[hor++].y1 = 1.0f*j;
                vertex_buffer_data[index++] = 1.0f*(i+1);
                vertex_buffer_data[index++] = 1.0f*(j);
                vertex_buffer_data[index++] = 0.0f;

            }
            cout << arr[i][j]<<" ";
        }
        cout << endl;
    }
    verti = vert;
    hori = hor;
    this->object = create3DObject(GL_LINES, 35*2, vertex_buffer_data, color, GL_FILL);

}

void Maze::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(1, 0, 0));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);
}

void Maze::set_position(float x, float y) {
    this->position = glm::vec3(x, y, 0);
}


