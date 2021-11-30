


#include "../include/raylib.h"

int main(void)
{
    // Init

    const int screenWidth = 800;
    const int screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "Adventure Plus");
    InitAudioDevice();

    SetTargetFPS(60);

    // Load

    Sound sound = LoadSound("data/sound/select.wav");

    // Main game loop
    while (!WindowShouldClose())   
    {
        // Update
        if (IsKeyPressed(KEY_SPACE)) {
            PlaySound(sound);
        }
        // TODO: Update your variables here

        // Draw
        BeginDrawing();

            ClearBackground(RAYWHITE);

            DrawText("Gadsame Here!", 190, 200, 20, LIGHTGRAY);

        EndDrawing();

    }

    // Unload
    UnloadSound(sound);

    // De-Init

    CloseWindow();      

    return 0;
}