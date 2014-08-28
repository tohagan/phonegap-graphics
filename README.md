## DESCRIPTION

### Mobile App Icon Generator

Uses [Inkscape](http://www.inkscape.org/) to generate all initial icons of varying sizes required for each mobile platform as required by PhoneGap/Cordova 3.x applications.

*Warning*: This tool often won't do the job as a final version as each icon size really should be [adapted for that size by a graphics designer](http://www.pushing-pixels.org/2011/11/04/about-those-vector-icons.html) but it will get you started and is useful as a first cut.  Refer to recommendations from vendor developer sites for required icon sizes and margins.

### Generate screen sizes

I would also like to generate all the start screens but this needs some addition Inkscape scripting work. Like to contribute?  Here's a references to get you started ...

- [Inkscape Verbs](http://how-to.wikia.com/wiki/How_to_use_Inkscape_in_commandline_mode/List_of_verbs)
- [Inkscape command line programming](http://stackoverflow.com/questions/9652573/inkscape-command-line-programming)

I was thinking that we'd probably use layers or perhaps generate a background of the required dimensions and place the icon (for which we preserve aspect ratio) + optional app title text on the final image.  A simple way to do this might be to have all the backgrounds of required aspect ratios in the image as layers and then just generate images with the required layers included.  This would also help in designing the screens as you can then just turn on the required background layer and postion and resize the logo and title.  You only need enough background layers to cover the different aspect ratios (Height : Width ratio) required.  The final dimension sizes are generated.    

## TIPS

### How to create an SVG vector image from an existing bitmap Logos

1. Determine the existing image dimensions  [Windows 8 Example](http://superuser.com/questions/481462/show-image-dimensions-in-status-bar-in-windows-8-file-explorer)
2. Open [Inkscape](http://www.inkscape.org/) and set the document dimensions to match the widest image.
  - Menu > File > Document Properties ... > Custom size 
  - Set Unit to pixels 
  - Set matching height and width. 
3. Import the bitmap image as a Linked image (Menu > File > Import ....)
4. Select the bitmap image and convert it to vectors
  - Menu > Path > Trace Bitmap ... 
  - Select the Colors option under Multiscan
  - Press the Update button to preview the result. 
  - Try adjusting other options (e.g. Scans, Options tab) until you get the required result and then press OK.
5. Inkscape will have added a vectorized version of your bitmap image *on top of* the bitmap so you now want to move the new vector image and delete the old bitmap. 
6. Resize the document dimensions to ensure the image is now square and adjust the position of the vector image.
7. You may wish to adjust other aspects of the generated image.  
8. Save the image as an icon file.

Modify the paths in the scrip file and you're ready to generate your icons.  
