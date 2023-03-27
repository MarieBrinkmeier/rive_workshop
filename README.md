# Rive workshop for #FlutterGraz

## What do you need?

- Rive account (https://rive.app/)
- IDE for Flutter

## What is the goal?

This workshop aims to teach the basics of creating a Rive animation and integrating it into a Flutter app.     
A speedometer animation will be created, which can be passed an initial value.     
The speedometer will open with an animated effect, and the needle will animate to the desired position.


## How do you create the animation?

### Preparation
- Open the Rive editor (web or desktop) and sign in
- Create a new Rive file
- Import the "needle.svg" from "assets/rive_assets" (use drag and drop or the plus icon in the assests section of your rive editor)


### Design
**Speedometer**
- Select the "Ellipse" shape in the "Create Tools" (pen icon)
- Draw a circle with a width and height of 200 (you can set this values on the right side in the "Ellipse Path" section)
- Remove the fill by clicking on the "X" icon
- Add two strokes with the plus icon
- Set a green color (e.g B6FF45) for one stroke, a red color (e.g FF5600) for the other
- Set the width of both strokes to 20
- Select the stroke settings (settings icon right beside the color) of the green stroke and set following options:
    - **Cap** to the rounded option
    - **Trim Path** to "Sequential"
    - **Start** to 43%
    - **Offset** to -30%
- Select the stroke settings of the red stroke and set following options:
    - **Cap** to the rounded option
    - **Trim Path** to "Sequential"
    - **Start** to 13%
    - **Offset** to 17%

**Needle**

**Change stroke color**
- Drag the needle into your artboard
- Select the needle and change the stroke color from white to the backgroundcolor of your artboard
    - (select the white color and use the pipette to select the color value of the background)

**Shift origin**
- Move the needle to the top center of the speedometer
- Select the needle
- Open the "Transform Tools" (blue arrow, second icon from the left side)
- Select "Freeze"
- Grab the green arrow of the needles origin to move it horizontally, the red arrow to move it vertically, place the origin in the middle of the circle
- Click "Done"


### Animate
Switch from "Design" to "Animate" in the top right corner.

**Preparation**
- Select the "State Machine 1" in the bottom left corner, make a double tap and rename it to "speedometer"
- Select the "Timeline 1" and rename it to "speedo_bounce"
- Add two new timelines with the name "init_needle_zero" and "init_needle_hundred"

**Speedo Bounce Animation**
- Select the "speedo_bounce" timeline
- Click on the time-setting and set the animations 
  - **Duration** to 00:00:43 and the 
  - **Playback Speed** to 0.5x
- Set the time-slider to:

**00:00:00**
- select the "Ellipse"
- Select the stroke settings of the red stroke and set following options:
  - **Start** to 0%
  - **Offset** to 17%
- Select the stroke settings of the green stroke and set following options:
  - **Start** to 2%
  - **Offset** to -1%

**00:00:09**
- select the "Ellipse"
- Select the stroke settings of the red stroke and set following options:
  - **Start** to 0%
  - **Offset** to 17%
- Select the stroke settings of the green stroke and set following options:
  - **Start** to 28%
  - **Offset** to -15%

**00:00:20**
- select the "Ellipse"
- Select the stroke settings of the red stroke and set following options:
  - **Start** to 13%
  - **Offset** to 17%
- Select the stroke settings of the green stroke and set following options:
  - **Start** to 43%
  - **Offset** to -30%

**00:00:30**
- select the "Ellipse"
- Select the stroke settings of the red stroke and set following options:
  - **Start** to 15%
  - **Offset** to 19%
- Select the stroke settings of the green stroke and set following options:
  - **Start** to 49%
  - **Offset** to -34%

**00:00:43**
- select the "Ellipse"
- Select the stroke settings of the red stroke and set following options:
  - **Start** to 15%
  - **Offset** to 17%
- Select the stroke settings of the green stroke and set following options:
  - **Start** to 45%
  - **Offset** to -32%

**Init Needle Zero Animation**
- Select the “init_needle_zero” timeline
- Click on the time-setting and set the animations
  - **Duration** to 00:00:43 and the
  - **Playback Speed** to 0.5x
- Set the time-slider to:

**00:00:00**
- select the "Needle"
- Set the rotation to 0°

**00:00:20**
- select the "Needle"
- Set the rotation to -104°

**00:00:30**
- select the "Needle"
- Set the rotation to -110°

**00:00:43**
- select the "Needle"
- Set the rotation to -104°

**Init Needle Hundred Animation**
- Select the “init_needle_hundred” timeline
- Click on the time-setting and set the animations
  - **Duration** to 00:00:43 and the
  - **Playback Speed** to 0.5x
- Set the time-slider to:  

  **00:00:00**
- select the "Needle"
- Set the rotation to 0°

**00:00:20**
- select the "Needle"
- Set the rotation to 104°

**00:00:30**
- select the "Needle"
- Set the rotation to 110°

**00:00:43**
- select the "Needle"
- Set the rotation to 104°

**Speedometer State Machine**
- Select the “speedometer” state machine
- Add a number input with the name "initValue" (Click the plus icon at "Inputs")
- Double click on "Layer 1" and rename it to "reset_init"
- Add a second layer, rename it to "speedo_bounce"
- Add a third layer, rename it to "init_needle_blend"
- Select layer:

**reset_init**
- drag the "init_needle_zero" timeline into the state machine and connect it to the "Entry"

**speedo_bounce**
- drag the "speedo_bounce" timeline into the state machine and connect it to the "Entry"

**init_needle_blend**
- adda 1D blend state to the state machine (right click inside the state machine, select "Add BlendState (1D)")
- select "initValue" as input
- add two timelines via the plus icon
- select the "init_needle_zero" timeline in the first line
- select the "init_needle_hundred" timeline in the second line and change the value on the right side to 100