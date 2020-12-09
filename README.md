# Seal Detection using CNNs

This repo uses RetinaNet for seal detection in drone imagery, and includes a set of tools for using geospatial data with CNNs. All operations are written to be executed in Google Colab: for each script, if you are viewing in GitHub or locally in Jupyter Notebook, click the "launch in Google Colab" button at the top to launch the script in Google Colab instead. If you clone or fork this project be sure to update those pointer buttons in the markdown to link to your new version.

Each script pulls in files from a Google Drive folder <b> that you must specify </b> and spits out files that will download in your browser as a zip archive that you must extract. When you move on to the next script <b> you must put these files into a Google Drive folder and point the next script to that folder </b>. It doesn't have to be the same drive folder every time, but makes sense to do it that way, because many files get used multiple times in the workflow.

Pay attention to the markdown at the start of each script, which specifies what's needed to run the script. The markdown at the end of each script explains what's ahead, and how the outputs fit together in the next steps.

<b>Estimated time for each step:</b>

<b>Step 1:</b> < 5 minutes + time to download mosaic tiles (varies by mosaic size) \
<b>Step 2:</b> Multiple hours (varies depending on size of mosiac, number of annotations, ease of detecting annotations, familiarity with VIA) \
<b>Step 3:</b> < 1 minute \
<b>Step 4:</b> < 10 minutes in demo-mode (ranges much longer, depending on how long you train the model) \
<b>Step 5:</b> < 1 minute \

To start this workflow, create a google drive folder (it does not need to be your personal google account, you may want to create a new account to store these data). Create a folder on that drive and upload the orthomosaic you're working with (the default folder/mosaic is https://drive.google.com/drive/folders/1wuAONrdYYNylyb_ZV2hpd-SrYjk-UXty). Make sure the drive is shared publicly (so "anyone with the link can view") and be sure to point to your working folder's link in each script.
