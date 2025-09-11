# Creates an automation that imitates the Philips HUE dynamic scenes

Simply click it and add to your HomeAssistant

[![Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled.](https://my.home-assistant.io/badges/blueprint_import.svg)](https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2FHarsiTomiii%2FHomeAssistantCodes%2Fblob%2Fmain%2Fblueprints%2Fhue-style_dynamic_light_scenes%2Fhue-style_dynamic_light_scenes.yaml)

The blueprint creates one automation - _one dynamic scene_.

**Prerequisite:** Have an input boolean entity to use. 

## Features and settings
### Trigger and lights
You select an input switch to turn on the automation with, then add the lights you want to control.<br>
If you add a light group, then the group will be handled as 1 light, so the individual lamps in there will act and change colors as one.<br>

<img width="930" height="312" alt="image" src="https://github.com/user-attachments/assets/dafaf74c-6cc7-4d25-8190-0dadb43c81c7" />

### Colors to loop through
You can add 7 different colors to the loop.<br>
Leave empty the ones you don't need.<br>
Colors need to be in XY format. This is the only way to avoid white transition.<br>
Use a color converter, like this: https://viereck.ch/hue-xy-rgb/<br>
Then write your color like the snip shows<br>
````
- X value
- Y value
````
<img width="958" height="321" alt="image" src="https://github.com/user-attachments/assets/ceba0792-3824-4bbe-a77d-7f660b6a9d3e" />


### Conditional entity
You can set a conditional entity.<br>
For example, you have a state machine; then add the state machine entity and the state in which you want this automation to run.<br>
If the input trigger is pulled, and the state machine is in the desired state, the automation runs. Otherwise, nothing happens.<br>

<img width="957" height="152" alt="image" src="https://github.com/user-attachments/assets/797e77d7-f026-404a-8eb4-d98dcbdc631b" />

### Transition time
Transition time in seconds between switching from one color to another<br>

<img width="966" height="87" alt="image" src="https://github.com/user-attachments/assets/40fd22ad-4361-4e4a-896f-579d076f1dca" />

### Exit scene
An exit scene. When the input boolean is no longer on, the automation exits to this scene.<br>
If left empty, then it jus simply stops and the lights stay the way they were at the time of the switch off.<br>

<img width="954" height="96" alt="image" src="https://github.com/user-attachments/assets/9588c3eb-7733-4496-948c-cabfb5f1e2ee" />

