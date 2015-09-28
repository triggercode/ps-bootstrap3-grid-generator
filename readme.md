# Photoshop Bootstrap 3 Grid Generator

## What it does

Generates grid guides in Photoshop for the responsive Twitter Bootstrap 3 grid.

## Target Group

Web Designers

## Installation

Hit download and copy the \*.jsx files files from the *dist directory*

- Twitter Bootstrap 3 Grid Desktop.jsx
- Twitter Bootstrap 3 Grid Large Desktop.jsx
- Twitter Bootstrap 3 Grid Tablet.jsx
- Twitter Bootstrap 3 Grid iPhone Landscape.jsx
- Twitter Bootstrap 3 Grid iPhone Portrait.jsx
- Twitter Bootstrap 3 Grid Fluid.jsx

into your the following folder

\<your_photoshop_folder\>/presets/scripts

Then *restart Photoshop*.

Tested with Photoshop CC.

## Usage

Guide grids can be generated in any document. Just open it, then go to e.g.

Files > Scripts > Twitter Bootstrap 3 Grid Desktop

## Build

The script was coded with coffeescript which is compiled to javascript. To build the
project you need node.js and grunt. So

1. Clone the project
2. run $ npm install
3. run $ grunt test

## Version History

### 0.0.1
- ability to generate grids for large desktops, desktops and tablets

### 0.0.2
- added support for mobile (iPhone 3/4) grids

### 0.0.3
- added support for full width grids (thanks to arnaudriegert)
