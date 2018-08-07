---
title: "Setup for the workshop"
teaching: 10
exercises: 10
questions: 
objectives:
- "To have the Ubuntu VM running in VirtualBox, or"
- "To know which tools to used and where to find the data for local installation"
keypoints:
- VM can be used after the workshop
- Installing required packages on own machine may require root privileges.
apps:
-[VirtualBox](https://www.virtualbox.org/wiki/Downloads)
-[The Ubuntu image](https://www.dropbox.com/s/pi8t7gh43itbi64/GT-workshop.vdi?dl=0)
---

For the workshop we use Ubuntu Linux as the main Operating System. We have created a VirtualBox image, including all the necessary tools and data. You are of course welcome to use your own Linux-based system.

## Installing the VirtualBox image

VirtualBox is a virtualization tool from VMWare and is [freely available](https://www.virtualbox.org/wiki/Downloads). The Windows systems in use for this workshop at Wageningen UR already have it installed.

Please download the [The Ubuntu image](https://www.dropbox.com/s/pi8t7gh43itbi64/GT-workshop.vdi?dl=0) and store it on a local hard drive. A network location usually does not work, so it is better to store it locally.

The next steps will install and run the Ubuntu image:

1. Start VirtualBox
2. Select **New** from the top-left (the blue 'star')
3. Give the virtual machine a name, for example **Genomics**. Type is **Linux** and Version **Ubuntu (64-bit)**, or **Linux (64-bit)**. Click 'next'.
4. Select Memory size: keep the setting in the green, but above 1GB. For this workshop we recommend to use half of the available memory (about 4GB). Click 'next'
5. Load the image by selecting 'Use an existing virtual hard disk file' and locate the **.vdi** file. Click 'create'.
6. Clicking **Start** (green arrow) should now start Ubuntu and you will automatically login.

The image is a regular Ubuntu install, so if you install this on your laptop or desktop you can continue to use it. 

## Installing the data and tools on your own Ubuntu

The list of tools used for workshop:

1. Java 8
2. Assembly-stats
3. Minimap2
4. Canu
5. Platanus
6. Mummer 4
7. Samtools & BCF tools
8. Tablet

The workshop code folder contains a shell-script [installing_workshop_vm.sh]({{site.workshop_site}}code/installing_workshop_vm.sh) which installs all required packages.

The data can be downloaded from [Dropbox](https://www.dropbox.com/s/03uj6ppq0tm687v/prepared.tar.gz?dl=0). 

## Rounding up

The data folders also contains, next to the raw data, all intermediate and end results. So if for some reason a step in the exercise fails to produce any results you can still continue.

{% include links.md %}
