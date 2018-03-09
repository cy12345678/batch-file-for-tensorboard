# batch-file-for-tensorboard
easy way to start tensorboard in Windows platform

![tensorboard example](https://github.com/cy12345678/batch-file-for-tensorboard/blob/master/tensorboard%20page.PNG)

The default way to launch [tensorboard](https://www.tensorflow.org/programmers_guide/summaries_and_tensorboard) is to type the following command to command prompt:

__tensorboard --logdir=path/to/log-directory --port=port_number__

But I'm too lazy to type the whole line, open a web browser, then key in the link to tensorboard. I made a batch file to launch tensorboard and tensorboard webpage, user just need to specify the model saved directory.

# How to use
1. download [start tensorboad.bat](https://github.com/cy12345678/batch-file-for-tensorboard/blob/master/start%20tensorboard.bat) file.
2. double click the downloaded file to open command prompt.
3. key in your model saved directory, hit enter afterwards. The tensorboard should start automatically, and the webpage should be opend as well.

<p align="center"> 
<img src="https://github.com/cy12345678/batch-file-for-tensorboard/blob/master/example%201.PNG" style="width: 50%; height: 50%">
</p>

<p align="center"> 
<img src="https://github.com/cy12345678/batch-file-for-tensorboard/blob/master/example2.PNG">
</p>

4. To stop tensorboard, press Ctrl + C in command prompt, type "y" then hit enter and leave.

# Explain the code in [start tensorboad.bat](https://github.com/cy12345678/batch-file-for-tensorboard/blob/master/start%20tensorboard.bat)
**@echo off**

:: get hostname of your computer and save it to variable host.

**FOR /F "usebackq" %%i IN (`hostname`) DO SET host=%%i**

:: use port 16006 as the tensorboard port.

**set port=16006**

:: the link to the local tensorboard webpage is as follows

**set address="http://%host%:%port%"**

:: display the address in the command prompt

**echo %address%**

:: ask user to key in the saved model directory, example "C:\tmp\mnist_model"

**set /p UserInputPath=Key in model saved directory:**

:: use default browser to open tensorboard webpage

**explorer %address%**

::start tensorboard

**tensorboard --logdir=%UserInputPath% --port=%port%**

:: to stop tensorboard, press Ctrl + C in command prompt, type "y" then hit enter.
