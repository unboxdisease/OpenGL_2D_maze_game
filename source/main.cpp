#include "main.h"
#include "timer.h"
#include "ball.h"
#include "button.h"
#include "maze.h"
#include "coin.h"
#include "bomb.h"
#include<iostream>  

using namespace std;

GLMatrices Matrices;
GLuint     programID;
GLFWwindow *window;

/**************************
* Customizable functions *
**************************/
int endgame = 0 , wongame = 0 ;
Ball ball1,imposter;
Maze maze1;
Button button1,button2;
Coin coin1;
Bomb bomb1,bomb2;
int powerups = 0;
float screen_zoom = 1, screen_center_x = 0, screen_center_y = 0;
float camera_rotation_angle = 0;

Timer t60(1.0 / 60);

/* Render the scene with openGL */
/* Edit this function according to your assignment */
bool CheckCollision(Ball &one, Button &two) // AABB - AABB collision
{
    // collision x-axis?
    bool collisionX = one.position.x + one.Size.x >= two.position.x &&
        two.position.x + two.Size.x >= one.position.x;
    // collision y-axis?
    bool collisionY = one.position.y + one.Size.y >= two.position.y &&
        two.position.y + two.Size.y >= one.position.y;
    // collision only if on both axes
    return collisionX && collisionY;
}
bool CheckCollision1(Ball &one, Coin &two) // AABB - AABB collision
{
    // collision x-axis?
    bool collisionX = one.position.x + one.Size.x >= two.position.x &&
        two.position.x + two.Size.x >= one.position.x;
    // collision y-axis?
    bool collisionY = one.position.y + one.Size.y >= two.position.y &&
        two.position.y + two.Size.y >= one.position.y;
    // collision only if on both axes
    return collisionX && collisionY;
}
bool CheckCollision2(Ball &one, Bomb &two) // AABB - AABB collision
{
    // collision x-axis?
    bool collisionX = one.position.x + one.Size.x >= two.position.x &&
        two.position.x + two.Size.x >= one.position.x;
    // collision y-axis?
    bool collisionY = one.position.y + one.Size.y >= two.position.y &&
        two.position.y + two.Size.y >= one.position.y;
    // collision only if on both axes
    return collisionX && collisionY;
}
bool CheckCollision3(Ball &one, Ball &two) // AABB - AABB collision
{
    // collision x-axis?
    bool collisionX = one.position.x + one.Size.x >= two.position.x &&
        two.position.x + two.Size.x >= one.position.x;
    // collision y-axis?
    bool collisionY = one.position.y + one.Size.y >= two.position.y &&
        two.position.y + two.Size.y >= one.position.y;
    // collision only if on both axes
    return collisionX && collisionY;
}
void draw() {
    // clear the color and depth in the frame buffer
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // use the loaded shader program
    // Don't change unless you know what you are doing
    glUseProgram (programID);

    // Eye - Location of camera. Don't change unless you are sure!!
    glm::vec3 eye ( 2.0, 1.5, 5 );
    // Target - Where is the camera looking at.  Don't change unless you are sure!!
    glm::vec3 target (2.0, 1.5, 0);
    // Up - Up vector defines tilt of camera.  Don't change unless you are sure!!
    glm::vec3 up (0, 1, 0);

    // Compute Camera matrix (view)
    Matrices.view = glm::lookAt( eye, target, up ); // Rotating Camera for 3D
    // Don't change unless you are sure!!
    // Matrices.view = glm::lookAt(glm::vec3(0, 0, 3), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0)); // Fixed camera for 2D (ortho) in XY plane

    // Compute ViewProject matrix as view/camera might not be changed for this frame (basic scenario)
    // Don't change unless you are sure!!
    glm::mat4 VP = Matrices.projection * Matrices.view;

    // Send our transformation to the currently bound shader, in the "MVP" uniform
    // For each model you render, since the MVP will be different (at least the M part)
    // Don't change unless you are sure!!
    glm::mat4 MVP;  // MVP = Projection * View * Model

    // Scene render
    ball1.draw(VP);
    maze1.draw(VP);
    button1.draw(VP);
    button2.draw(VP);
    imposter.draw(VP);

    
    //collisions
    // cout << ball1.Size.x <<" "<<button1.Size.x<<endl;
    if(CheckCollision(ball1,button1)){
        button1.collect();
        
    }
    if(CheckCollision(ball1,button2)){
        ball1.tasks += 1;
        button2.collect2();
        imposter.vapor();
        
    }
    if(CheckCollision3(ball1,imposter)){
        ball1.tasks += 1;
        ball1.health -= 5;
        button2.collect2();
        imposter.vapor();
        
    }
    
    if(powerups){
        coin1.draw(VP);
        bomb1.draw(VP);
        bomb2.draw(VP);
        if(CheckCollision2(ball1,bomb1)){
            bomb1.collect();
            ball1.health -= 5;
        
        }
        if(CheckCollision2(ball1,bomb2)){
            bomb2.collect();
            ball1.health -= 5;
        
        }
        if(CheckCollision1(ball1,coin1)){
            coin1.collect();
            ball1.tasks +=1;
        
        }
    }
    


}

void tick_input(GLFWwindow *window) {
    if(wongame == 0 && endgame ==0){
        if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
            ball1.move_yf();
            
        if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS){
            ball1.move_yb();
            imposter.move_yf();
        }
        // if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
        //     eye -= target;
        if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
            ball1.move_xb();
        if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS){
            
            ball1.move_xf();
            imposter.move_xb();
            
        }
        
    }
}

void tick_elements() {
    
}

/* Initialize the OpenGL rendering properties */
/* Add all the models to be created here */
void initGL(GLFWwindow *window, int width, int height) {
    /* Objects should be created before any other gl function and shaders */
    // Create the models

    ball1       = Ball(0.5, 3.5, COLOR_RED);
    maze1       = Maze(0, 0, COLOR_RED); 

    button1     =Button(0,0, COLOR_GREEN);
    // color_t ss = {}; 
    button2     =Button(0,0, COLOR_BLACK);
    coin1       =Coin(0,0,COLOR_RED);
    bomb1       =Bomb(0,0,COLOR_RED);
    bomb2 = Bomb(0,0,COLOR_RED);
    imposter = Ball(4.5,-0.5,COLOR_GREEN);

    // Create and compile our GLSL program from the shaders
    programID = LoadShaders("../source/shaders/shader.vert", "../source/shaders/shader.frag");
    // Get a handle for our "MVP" uniform
    Matrices.MatrixID = glGetUniformLocation(programID, "MVP");


    reshapeWindow (window, width, height);

    // Background color of the scene
    glClearColor (COLOR_BACKGROUND.r / 256.0, COLOR_BACKGROUND.g / 256.0, COLOR_BACKGROUND.b / 256.0, 0.0f); // R, G, B, A
    glClearDepth (1.0f);

    glEnable (GL_DEPTH_TEST);
    glDepthFunc (GL_LEQUAL);

    cout << "VENDOR: " << glGetString(GL_VENDOR) << endl;
    cout << "RENDERER: " << glGetString(GL_RENDERER) << endl;
    cout << "VERSION: " << glGetString(GL_VERSION) << endl;
    cout << "GLSL: " << glGetString(GL_SHADING_LANGUAGE_VERSION) << endl;
}


int main(int argc, char **argv) {
    srand(time(0));
    int width  = 600;
    int height = 600;
    char str[100],str2[100],str3[100],str4[100];
    window = initGLFW(width, height);
    int time;
    initGL (window, width, height);
    gltInit();
    GLTtext *text = gltCreateText();
    GLTtext *text2 = gltCreateText();
    GLTtext *text3 = gltCreateText();
    GLTtext *text4 = gltCreateText();
    GLTtext *text5 = gltCreateText();
    /* Draw in loop */
    while (!glfwWindowShouldClose(window)) {
        // Process timers
        time = (int)glfwGetTime();
        if (t60.processTick()) {
            // 60 fps
            // OpenGL Draw commands
            draw();
            
            sprintf(str,"Health : %d",ball1.health);
            gltSetText(text, str);
            sprintf(str2,"Time : %d",60-time);
            gltSetText(text2, str2);
            sprintf(str3,"Tasks : %d",ball1.tasks);
            gltSetText(text3, str3);
            gltSetText(text4, "You Lost !");
               
                gltSetText(text5, "You Won !");
            gltBeginDraw();

// Draw any amount of text between begin and end
        
            gltColor(1.0f, 1.0f, 1.0f, 1.0f);
            gltDrawText2D(text, -1.0f, 4.5f, 1);
            gltDrawText2D(text2, -1.0f, 45.0f, 1);
            gltDrawText2D(text3, -1.0f, 25.0f, 1);
            if((time == 60) || ball1.health == 0){
                gltDrawText2D(text4, 105.0f, 0.0f, 6);
                endgame = 1;
            }
             if(ball1.position.x > 5 && ball1.position.y < 0 && ball1.tasks == 2 ){
                gltDrawText2D(text5, 105.0f, 0.0f, 6);
                wongame =1;
             }
            // Swap Frame Buffer in double buffering
            glfwSwapBuffers(window);

            tick_elements();
            tick_input(window);
            gltEndDraw();
        }

        // Poll for Keyboard and mouse events
        glfwPollEvents();
    }

    quit(window);
    // Deleting text
gltDeleteText(text);

// Destroy glText
gltTerminate();
}



void reset_screen() {
    float top    = screen_center_y + 4 / screen_zoom;
    float bottom = screen_center_y - 4 / screen_zoom;
    float left   = screen_center_x - 4 / screen_zoom;
    float right  = screen_center_x + 4 / screen_zoom;
    Matrices.projection = glm::ortho(left, right, bottom, top, 0.1f, 500.0f);
}
