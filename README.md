# batch-file-for-tensorboard
easy way to start tensorboard in Windows platform

![tensorboard example](https://github.com/cy12345678/batch-file-for-tensorboard/blob/master/tensorboard%20page.PNG)

The default way to launch tensorboard is to type the following command to command prompt:

__tensorboard --logdir=path/to/log-directory --port=port_number__

But I'm too lazy to type the whole line, open a web browser, then key in the link to tensorboard. I made a batch file to launch tensorboard and tensorboard webpage, user just need to specify the model saved directory.

# How to use
1. download "start tensorboard.bat" file.
2. double click to the downloaded file to open command prompt.
3. key in your model saved directory, hit enter afterwards. The tensorboard should start automatically, and the webpage should be opend as well.
4. To stop tensorboard, press Ctrl + C in command prompt, type "y" then hit enter and leave.

![command prompt](https://github.com/cy12345678/batch-file-for-tensorboard/blob/master/example%201.PNG)
![example2](https://github.com/cy12345678/batch-file-for-tensorboard/blob/master/example2.PNG)
