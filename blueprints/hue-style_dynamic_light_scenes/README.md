# Creates an automation that imitates the Philips HUE dynamic scenes

Simply click it and add to your HomeAssistant

[![Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled.](https://my.home-assistant.io/badges/blueprint_import.svg)](https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2FHarsiTomiii%2FHomeAssistantCodes%2Fblob%2Fmain%2Fblueprints%2Fhue-style_dynamic_light_scenes%2Fhue-style_dynamic_light_scenes.yaml)


## Features and settings
### Trigger and lights
You select an input switch to turn on the automation with, then add the lights you want to control.
If you add a light group, then the group will be handled as 1 light, so the individual lamps in there will act and change colors as one.
<img width="930" height="312" alt="image" src="https://github.com/user-attachments/assets/dafaf74c-6cc7-4d25-8190-0dadb43c81c7" />

### Colors to loop through
You can add 7 different colors to the loop.
Leave empty the ones you don't need.
You need to use XY color codes as the example shows.
You can use this site for RGB conversion
  https://viereck.ch/hue-xy-rgb/
<img width="961" height="644" alt="image" src="https://github.com/user-attachments/assets/7cb4d610-7e0c-4259-88ed-208365b8868c" />

### Conditional entity
You can set a conditional entity.
For example, you have a state machine; then add the state machine entity and the state in which you want this automation to run.
If the input trigger is pulled, and the state machine is in the desired state, the automation runs. Otherwise, nothing happens.
<img width="957" height="152" alt="image" src="https://github.com/user-attachments/assets/797e77d7-f026-404a-8eb4-d98dcbdc631b" />

### Transition time
Transition time in seconds between switching from one color to another
<img width="966" height="87" alt="image" src="https://github.com/user-attachments/assets/40fd22ad-4361-4e4a-896f-579d076f1dca" />

### Brightness
The total brightness of the lights
<img width="980" height="97" alt="image" src="https://github.com/user-attachments/assets/dbd31d69-5492-4c0e-99dc-2fb5f964f0f5" />

### Exit scene
An exit scene. When the input boolean is no longer on, the automation exits to this scene.
If left empty, then it jus simply stops and the lights stay the way they were at the time of the switch off.
<img width="954" height="96" alt="image" src="https://github.com/user-attachments/assets/9588c3eb-7733-4496-948c-cabfb5f1e2ee" />

