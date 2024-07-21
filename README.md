# Brain Tumor Detection App

This MATLAB app allows users to upload MRI images of the brain and detect tumors using image processing techniques.

## Example

[Demo](demo.png)

## Features

- Upload an MRI image using a simple button interface.
- Detect and highlight tumor regions in the uploaded image.
- Display both the original image and the processed image with detected tumor boundaries.

## Installation

1. Clone the repository:
    ```bash
    https://github.com/snehsuresh/brain_tumor_matlab.git
    ```
2. Open MATLAB and navigate to the cloned repository directory.

## Usage

1. Open the app file `mri_tumor_detect.mlapp` in MATLAB App Designer.
2. Click the `Run` button in the App Designer to launch the app.
3. Click on `Upload Image` to select an MRI image from your computer.
4. Click on `Detect Tumor` to process the image and display the results.

## Dependencies

- MATLAB R2020a or later.
- Image Processing Toolbox.

## How It Works

1. The uploaded MRI image is converted to a binary image using a threshold.
2. Connected components in the binary image are labeled.
3. Properties of the labeled regions, such as solidity and area, are computed.
4. Regions with high solidity are identified, and the largest area among them is considered the tumor.
5. The detected tumor region is highlighted and displayed.



