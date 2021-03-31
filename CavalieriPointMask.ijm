// CavalieriPointMask
//
// V01.01
//
// Generate image files for regional area approximations
// Copyright (C) 2021 Dylan Terstege
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details
//
// Your should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.
//
// Created 12-09-2019 Dylan Terstege
// Epp Lab, University of Calgary
// Contact: dylan.terstege@ucalgary.ca

setOption("JFileChooser",true);
path=getDirectory("Choose Parent Directory for your Images");
list=getFileList(path);
count=list.length;

Dialog.create("Cavalieri Point Mask");
Dialog.addMessage("Parent folder:");
Dialog.addMessage(path);
Dialog.addChoice("Raw Subfolder",list);
Dialog.addChoice("Mask Output Subfolder",list);
Dialog.show();

file1 = path+Dialog.getChoice;
list1 = getFileList(file1);
n1 = lengthOf(list1);
//
file2 = path+Dialog.getChoice;
list2 = getFileList(file2);
n2 = lengthOf(list2);
//
condition1 = n1;
condition2 = n2;


macro "batch_merge_channels"{
    setBatchMode(true);

    //Generate Masks
    for(i = n2; i < condition1; i++) {
      open(file1 + list1[i]);
      title2=File.nameWithoutExtension;
      run("Gaussian Blur...","sigma=200");
      setAutoThreshold("Triangle dark");
      run("Convert to Mask");
      run("Fill Holes");
      run("Invert LUT");
      run("Grid...", "grid=Lines area=1156 color=Black");
      run("Flatten");
      run("Find Maxima...", "noise=10 output=[Single Points]");
      run("Dilate");
      run("Dilate");
      run("Dilate");
      run("Invert LUT");
      saveAs("tiff", file2+title2+"_mask"+".tif");
      close("*");
    }    
}
setOption("JFileChooser", false);
