# 2D Breakout Game

A classic 2D Breakout clone built using C++ and OpenGL. This project serves as a computer graphics project demonstrating fundamental 2D game development concepts including rendering, collision detection, game state management, and particle systems.

## Features

- **Classic Breakout Gameplay**: Control a paddle to bounce a ball and destroy all the bricks on the screen.
- **Multiple Game Levels**: Supports loading different level layouts from files.
- **2D Rendering**: Utilizes standard OpenGL for rendering sprites and primitives.
- **Particle System**: Includes particle effects for enhanced visuals.
- **Resource Management**: Efficient loading and caching of textures, shaders, and other assets.
- **Game States**: Includes support for different game states (Active, Menu, Win).

## Technologies & Dependencies

This project is built using C++17 and relies on the following libraries (included in the `vendor` directory):

- **[OpenGL](https://www.opengl.org/)**: For 2D graphics rendering.
- **[GLFW](https://www.glfw.org/)**: Window creation and input handling.
- **[GLAD](https://glad.dav1d.de/)**: OpenGL function pointer loading.
- **[GLM](https://glm.g-truc.net/0.9.9/index.html)**: Mathematics library for graphics software.
- **[ImGui](https://github.com/ocornut/imgui)**: Bloat-free graphical user interface library for C++.
- **[spdlog](https://github.com/gabime/spdlog)**: Fast C++ logging library.
- **[stb_image](https://github.com/nothings/stb)**: Image loading tool for textures.

## Project Structure

- `2DGame/src/`: Contains all the C++ source code and header files, including:
  - Game logic and states (`game.cpp`, `gameLevel.cpp`)
  - Rendering components (`SpriteRenderer.cpp`, `shader.cpp`, `texture.cpp`)
  - Entities (`gameObject.cpp`, `ballObject.cpp`)
  - Main entry point (`progress/program.cpp`)
- `2DGame/res/`: Contains game assets including:
  - Textures and sprites
  - Shaders (Vertex and Fragment)
  - Level configuration files
  - Audio and Fonts
- `vendor/`: Third-party dependencies.
- `GenerateProject.bat`: A batch script to generate Visual Studio project files.
- `premake5.lua`: Configuration file for the Premake build system.

## Setup & Build Instructions

This project uses **[Premake5](https://premake.github.io/)** to generate project files.

### Windows (Visual Studio 2022)

1. Ensure you have **Visual Studio 2022** installed with C++ development tools.
2. Run the `GenerateProject.bat` script located in the root directory. This uses the included `premake5.exe` to generate the `.sln` and `.vcxproj` files.
3. Open the generated `2DGame.sln` file in Visual Studio 2022.
4. Set the startup project to `2DGame`.
5. Select your desired configuration (e.g., `Debug` or `Release` for `x64`).
6. Build and run the project `(F5)` or `(Ctrl+F5)`. 

The compiled executables will be placed in the `bin/` directory.

## Controls

- Use the **Left** and **Right** arrow keys (or `A`/`D`) to move the paddle.
- Press **Space** to start the ball.
- Press **Escape** to close the game window.

## License

This project is created for educational purposes. Feel free to explore, modify, and learn from the codebase!
