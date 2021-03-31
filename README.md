CavalieriPointMask
==================

**Cavalieri Point Mask** is an *ImageJ* Plugin which converts images of biological tissues into masks of evenly spaced binary points for the sake of applying a Cavalieri-based point-counting approach to area approximation.

CavalieriPointMask was created by Dylan Terstege, a Neuroscience PhD candidate in the Epp Lab at the University of Calgary.

## Table of Contents

| section  | description | 
| ------------- | ------------- | 
| [1. Installation Instructions](#installation)   | How to install  |
| [2. Image Processing Tutorial](#processing)   | How to process a sample image set  |
| [3. Contact Us](#contact)  | Where to reach us with questions  |

<a name="installation"/>

## 1. Installation

Cavalieri Point Mask was designed with ease-of-use at the forefront of our minds.  The installation process reflects this with a simple 3-step approach:

 **1.1 Install *ImageJ***. Ensure that ImageJ is installed.  If it was not previously installed, it can be downloaded [here](https://imagej.nih.gov/ij/download.html).
 
 **1.2 Download CavalieriPointMask.**  Download the CavalieriPointMask.ijm file to an accessible location

**1.3 Install Plugin in *ImageJ***.  Check the [settings](#settings) of the plugin. If these are okay, procede to Open *ImageJ* and select "Plugins > Install...".  Navigate to the newly downloaded CavalieriPointMask.ijm file and allow this to save to the ImageJ Plugins folder. 


<a name="processing"/>

## 2. Image Processing Tutorial

**2.1 Images**. Cavalieri Point Mask has been optimized for 8- and 16-bit .tif files. It works best with a ubiquitous and uniform label. It has been successfully applied to DAPI-stained, propidium idodide-stained, and autofluorescence images.

**2.2 File Organization**. Raw images should all be in a single folder nested within a parent folder. That parent folder should also contain an output folder where you would like your newly generated images to populate to.

<a name="settings"/>

**2.3 Settings**. 

<a name="contact"/>

## 3. Contact Us

**Contributors:**
- **Dylan Terstege*** (code/conceptualization/documentation/plates) - ![twitter-icon_16x16](https://user-images.githubusercontent.com/44174532/113163958-e3d3e400-91fd-11eb-8d79-17906d8d3f25.png)[@dterstege](https://twitter.com/dterstege) - ![Mail](https://user-images.githubusercontent.com/44174532/113164412-50e77980-91fe-11eb-9282-dd83852578ce.png) dylan.terstege@ucalgary.ca

Principal Investigator:
- Jonathan Epp (conceptualization) - https://epplab.com

<sub><sup>***corresponding author**</sup></sub>
