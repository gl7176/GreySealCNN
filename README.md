# Seal Detection using CNNs

This repo uses RetinaNet for seal detection in drone imagery, and includes a set of tools for using geospatial data with CNNs. All operations are written to be executed in Google Colab: for each script, if you are viewing in GitHub or locally in Jupyter Notebook, click the "launch in Google Colab" button at the top to launch the script in Google Colab instead. If you clone or fork this project be sure to update those pointer buttons in the markdown to link to your new version.

Each script pulls in files from a Google Drive folder <b> that you must specify </b> and spits out files that will download in your browser as a zip archive that you must extract. When you move on to the next script <b> you must put these files into a Google Drive folder and point the next script to that folder </b>. It doesn't have to be the same drive folder, but it can be.

Pay attention to the markdown at the start of each script, which specifies what's needed to run the script. The markdown at the end of each script explains what's ahead, and how the outputs fit together in the next steps.

To start this workflow, create a google drive folder (it does not need to be your personal google account, you may want to create a new account to store these data). Create a folder on that drive and upload the orthomosaic you're working with (the default folder/mosaic is https://drive.google.com/drive/folders/1wuAONrdYYNylyb_ZV2hpd-SrYjk-UXty). Make sure the drive is shared publicly (so "anyone with the link can view") and be sure to point to your working folder's link in each script.
