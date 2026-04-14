# Level Expansion & Progression Plan

To create new levels and connect them into a complete game experience, you can follow this implementation plan:

## 1. Level Design
- Create new `.lvl` files in the `2DGame/res/levels/` directory. 
- Use a plain text format where numbers represent the layout grid (e.g., `0` for empty space, `1` for solid walls, `2-5` for colored destructible bricks).
- Experiment with different grid dimensions and block arrangements to create interesting challenges.

## 2. Loading Multiple Levels
- In the `Game::Init()` function, instantiate new `GameLevel` objects for each level you've designed.
- Call the `Load()` method on each object, passing the path to the corresponding `.lvl` file.
- Push each successfully loaded level into the `this->Levels` vector (or whatever container manages your levels).

## 3. Level Progression Logic
- Within the `Game::Update()` loop, continuously monitor the state of the current level.
- You can determine level completion by checking if all non-solid blocks in the current `GameLevel` have been destroyed.
- Upon completion:
  - If unfinished levels remain, increment a variable tracking the current level index to move to the next level.
  - Reset the ball and paddle to their starting positions.
  - (Optional) Introduce a temporary "Level Complete" game state with a transitional screen.
- If no levels remain, transition to a "Win" state or loop back to the beginning.

## 4. Game Navigation & Flow
- Utilize a Menu screen state to allow players to select unlocked levels.
- Track the current level index and update your rendering logic to draw only the active level (e.g., `this->Levels[currentLevel].Draw()`).
