CavalieriPointMask
==================

**Cavalieri Point Mask** is an *ImageJ* Plugin which converts images of biological tissues into masks of evenly spaced binary points for the sake of applying a Cavalieri-based point-counting approach to area approximation.

![DAPImask](https://user-images.githubusercontent.com/44174532/113200335-6a4fec00-9225-11eb-948d-16ef944eff77.png)
<sub><sup>*Points not to scale - enlarged to highlight pattern*</sup></sub>

CavalieriPointMask was created by Dylan Terstege, a Neuroscience PhD candidate in the Epp Lab at the University of Calgary.

## Table of Contents

| section  | description | 
| ------------- | ------------- | 
| [1. Installation Instructions](#installation)   | How to install  |
| [2. Image Processing Tutorial](#processing)   | How to process a sample image set  |
| [3. Troubleshooting](#ts)  | Common issues and how to fix them |
| [4. Contact Us](#contact)  | Where to reach us with questions  |

<a name="installation"/>

## 1. Installation

Cavalieri Point Mask was designed with ease-of-use at the forefront of our minds.  The installation process reflects this with a simple 4-step approach:

**1.1 Install *ImageJ***. Ensure that ImageJ is installed.  If it was not previously installed, it can be downloaded [here](https://imagej.nih.gov/ij/download.html).
 
**1.2 Download CavalieriPointMask.ijm**  Download the CavalieriPointMask.ijm file to an accessible location
 
 <a name="editplug"/>
 
**1.3 Check Plugin Settings**.  Check the [settings](#settings) of the plugin. If these are okay, procede to installing the program in step 1.4. If you would like to change anything, simply drag and drop the .ijm file into *ImageJ* and edit within the text window.

**1.4 Install Plugin in *ImageJ***.  Open *ImageJ* and select "Plugins > Install...".  Navigate to the newly downloaded CavalieriPointMask.ijm file and allow this to save to the ImageJ Plugins folder. 


<a name="processing"/>

## 2. Image Processing Tutorial

**2.1 Images**. Cavalieri Point Mask has been optimized for 8- and 16-bit .tif files. It works best with a ubiquitous and uniform label. It has been successfully applied to DAPI-stained, propidium idodide-stained, and autofluorescence images.

If your images are not already in this format, *ImageJ* can rapidly convert image formats by selecting "Process > Batch > Convert...".

**2.2 File Organization**. Raw images should all be in a single folder nested within a parent folder. That parent folder should also contain an output folder where you would like your newly generated images to populate to.

<a name="settings"/>

**2.3 Settings**. 

The plugin uses the following settings as default. These may need to be optimized for particular applications.

- *Thresholding Algorithm*: "Triangle"
- *Size of Sigma in Gaussian Blur*: "200"
- *Square Area in Pixels Accounted for by Each Point*: "1156" 

Searching any of these values in the txt file will show where adjustments may be made. The plugin will then need to re-installed on *ImageJ*

**2.4 Processing Images**

With optimized settings in place and the plugin installed, you can begin processing images. This is done by selecting the plugin from the plugin tab of *ImageJ* ("Plugin > CavalieriPointMask"). You will then be prompted to navigate the plugin to the parent folder which contains your input image folder and the empty output folder. The plugin will then ask to specify which folder is which, before batching through all of the input images. Once complete, a window will populate on the screen to let you know that processing is now complete.

<a name="ts"/>

## 3. Troubleshooting

This section will be updated with issues as they are brought to my attention.

- Issue #1: *"Instead of a mask of points in the shape of the biological sample, the plugin is outputting a mask in the negative space of the image outside the bounds of the sample"*
- Solution #1: Edit the .ijm file (for instructions on how to do this see [here](#editplug)). Find and remove the following line: 
 ```   
"run("Invert LUT"); //toggle depending on image"
```
The macro can then be re-installed.

<a name="contact"/>

## 4. Contact Us

**Contributors:**
- **Dylan Terstege*** (code/conceptualization/documentation/plates)

![twitter-icon_16x16](https://user-images.githubusercontent.com/44174532/113163958-e3d3e400-91fd-11eb-8d79-17906d8d3f25.png)[@dterstege](https://twitter.com/dterstege) - ![Mail](https://user-images.githubusercontent.com/44174532/113164412-50e77980-91fe-11eb-9282-dd83852578ce.png) dylan.terstege@ucalgary.ca

Principal Investigator:
- Jonathan Epp (conceptualization) - https://epplab.com

<sub><sup>***corresponding author**</sup></sub>
