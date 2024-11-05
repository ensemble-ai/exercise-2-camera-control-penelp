# Peer-Review for Programming Exercise 2 #

## Description ##

For this assignment, you will be giving feedback on the completeness of assignment two: Obscura. To do so, we will give you a rubric to provide feedback. Please give positive criticism and suggestions on how to fix segments of code.

You only need to review code modified or created by the student you are reviewing. You do not have to check the code and project files that the instructor gave out.

Abusive or hateful language or comments will not be tolerated and will result in a grade penalty or be considered a breach of the UC Davis Code of Academic Conduct.

If there are any questions at any point, please email the TA.   

## Due Date and Submission Information
See the official course schedule for due date.

A successful submission should consist of a copy of this markdown document template that is modified with your peer review. This review document should be placed into the base folder of the repo you are reviewing in the master branch. The file name should be the same as in the template: `CodeReview-Exercise2.md`. You must also include your name and email address in the `Peer-reviewer Information` section below.

If you are in a rare situation where two peer-reviewers are on a single repository, append your UC Davis user name before the extension of your review file. An example: `CodeReview-Exercise2-username.md`. Both reviewers should submit their reviews in the master branch.  

# Solution Assessment #

## Peer-reviewer Information

* *Name:* Christopher Phan
* *Email:* cpphan@ucdavis.edu

### Description ###

For assessing the solution, you will be choosing ONE choice from: unsatisfactory, satisfactory, good, great, or perfect.

The break down of each of these labels for the solution assessment.

#### Perfect #### 
    Can't find any flaws with the prompt. Perfectly satisfied all stage objectives.

#### Great ####
    Minor flaws in one or two objectives. 

#### Good #####
    Major flaw and some minor flaws.

#### Satisfactory ####
    Couple of major flaws. Heading towards solution, however did not fully realize solution.

#### Unsatisfactory ####
    Partial work, not converging to a solution. Pervasive Major flaws. Objective largely unmet.


___

## Solution Assessment ##

### Stage 1 ###

- [x] Perfect
- [ ] Great
- [ ] Good
- [ ] Satisfactory
- [ ] Unsatisfactory

___
#### Justification ##### 
Position locked camera works perfectly for normal movement and when boosting.

___
### Stage 2 ###

- [ ] Perfect
- [x] Great
- [ ] Good
- [ ] Satisfactory
- [ ] Unsatisfactory

___
#### Justification ##### 
Auto-scroll camera works for normal movement and when boosting. The player can't escape the box. Small issue when moving the vessel to the bottom left of the auto-scroll box: the vessel gets teleported a small distance to the right. Auto-scrolling along the z-axis is not supported.

___
### Stage 3 ###

- [ ] Perfect
- [ ] Great
- [ ] Good
- [x] Satisfactory
- [ ] Unsatisfactory

___
#### Justification ##### 
The PositionAndLerp camera implements a look-ahead camera instead of a camera that allows the vessel to get ahead of itself. When the vessel boosts, the camera restricts the vessel from going faster.

___
### Stage 4 ###

- [ ] Perfect
- [ ] Great
- [x] Good
- [ ] Satisfactory
- [ ] Unsatisfactory

___
#### Justification ##### 
Camera works as a look-ahead camera. The catchup delay duration isn't respected. The controls for the vessel are inverted. Normal movement feels the same as when boosting.

___
### Stage 5 ###

- [ ] Perfect
- [ ] Great
- [ ] Good
- [ ] Satisfactory
- [x] Unsatisfactory

___
#### Justification ##### 
Export variables are created. Drawing the camera and implementing its behavior are in progress. Core behavior of the 4-way speedup push zone is incomplete.

___
# Code Style #


### Description ###
Check the scripts to see if the student code adheres to the dotnet style guide.

If sections do not adhere to the style guide, please peramlink the line of code from Github and justify why the line of code has not followed the style guide.

It should look something like this:

* [description of infraction](https://github.com/dr-jam/ECS189L) - this is the justification.

Please refer to the first code review template on how to do a permalink.


#### Style Guide Infractions ####
This [line](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/auto_scroll.gd#L34) exceeds 100 characters. Style guide reference: [Line length](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#line-length).

Small nitpick on this [line](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/auto_scroll.gd#L34). There should be a space after the - sign. Style guide reference: [Whitespace](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#whitespace).

[Comments](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/position_lock.gd#L25) should have a space after the # character. Style guide reference: [Comment spacing](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#comment-spacing).

Small nitpick on this [line](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/lerp_target.gd#L12). There should be one more empty line above this method. Style guide reference: [Blank lines](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#blank-lines).


#### Style Guide Exemplars ####
Great use of 2 blank lines around functions. [This file](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/position_lock.gd#L1) is a good representation of what almost every file follows. Style guide reference: [Blank lines](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#blank-lines).

Great use of [static typing](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/position_lock.gd#L5) and putting a .0 to denote that a variable is a float throughout all the camera script files. Style guide refernence: [Static typing](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#static-typing) and [Numbers](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#numbers).

Perfect ordering of variables and methods within classes. This [file](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/auto_scroll.gd#L1) is representative of all the camera script files. Style guide reference: [Code order](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#code-order).

Perfect naming files using snake case and classes using Pascal case throughout the project. [Reference file](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/position_and_lerp.gd#L1). Style guide reference: [File names](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#file-names).


___
#### Put style guide infractures ####

___

# Best Practices #

### Description ###

If the student has followed best practices (Unity coding conventions from the StyleGuides document) then feel free to point at these code segments as examplars. 

If the student has breached the best practices and has done something that should be noted, please add the infraction.


This should be similar to the Code Style justification.

#### Best Practices Infractions ####
When updating the camera's position, `delta` should be used as a multiplier so that the movement is independent of framerate. This can be applied to all the camera script files except for the position locked camera. [Example of infraction](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/auto_scroll.gd#L30).

Instead of defining a `box_width` and `box_height`, `top_teft` and `bottom_right` should be used to define the dimensions of the [auto-scroll box](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/auto_scroll.gd#L7). Then, `top_teft` and `bottom_right` should be assigned a default value within the script file. 

Nitpick: Godot [recommends](https://docs.godotengine.org/en/stable/tutorials/scripting/idle_and_physics_processing.html) using `_physics_process` instead of `_process` for handling movement. The camera's can use `_physics_process` for movement and `_process` for drawing.

As mentioned in the review for Stage 4, all the `-=` signs should be replaced with `+=` signs. And all the `+=` signs should be replaced with `-=` signs in the [`if` blocks](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/lerp_target.gd#L32). This will fix the issue of having inverted controls for the vessel.

This is a [great idea](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/lerp_target.gd#L25) to use `clamp` to keep the target within the leash, but I would caution against manipulating the vessel's position because this makes the vessel dependent on the camera's position. This may be causing the issue with the boost since when the vessel is boosting, the camera moves at a speed slower than the vessel. `clamp` will cause the vessel to be pulled back by the camera. Instead, `clamp` could be used on the camera's position so that the camera stays within leash distance of the vessel. This is a subtle difference, but doing it this way makes it so that the camera follows the player rather than the vessel being restricted by the camera.


#### Best Practices Exemplars ####
Very thoughtful to put all the camera files are under the `camera_controllers` directory, making it easy to find each camera script.

Great [use of lerp](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/lerp_target.gd#L42) in Stages 3 and 4. The camera speed in Stage 3 is well tuned and feels very smooth.

I really like how each camera is drawn with a [different color](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/position_lock.gd#L57). This makes it very easy to tell which camera is currently active.

Keeping the vessel in the [center of the screen](https://github.com/ensemble-ai/exercise-2-camera-control-penelp/blob/883dc3be89ca9a4fc6088897f5f8476c28b38af8/Obscura/scripts/camera_controllers/position_lock.gd#L16) when switching cameras is a very nice touch.
