## Wombat Developer Manual
This document is an overview of the Wombat's internal function. 
It contains information on how every hardware subsystem of the Wombat works as well as the software structure.
This is the best place to start if you want to develop on the Wombat

## Wombat Chip Explainations
This is a document that describes in detail every resistor, capacitor, connector, and chip on the board and it's function as it relates to the Wombat.
It is intended as a technical document for diagnosing repairs, but a careful reading through it would give you a solid understanding of the hardware of the controller.

## STM32 Pin Explainations
The Wombat operates with a secondary microprocessor called an STM32.
This document outlines what all 100 pins of the microprocessor does and how it is used in this application.
This is essentially a glorified analog to digital converter, but it does have some other functions.
The basic operation of the STM32 is to pull all the sensor data from the IO and store it in registers. 
Then when libwallaby needs to read a measurement, in the background it is actually just reading that register on the STM32.

## Making a Button
This is a tutorial on how to add a button to the UI.
This is for absolute beginners and teaches you how to use the Qt4 library.

## Schematics
This folder contains the schematics for the controller.
It has been edited to be easier for a beginner to read and understand.

## Datasheets
This is a folder that contains the datasheet of every chip on the Wombat.
