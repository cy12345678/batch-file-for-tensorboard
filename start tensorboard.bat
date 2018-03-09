::https://github.com/cy12345678/batch-file-for-tensorboard/
::check out my blog if you are interested, https://chunyangblog.wordpress.com

@echo off
:: get hostname of your computer and save it to variable host.
FOR /F "usebackq" %%i IN (`hostname`) DO SET host=%%i

:: use port 16006 as the tensorboard port.
set port=16006

:: the link to the local tensorboard webpage is as follows
set address="http://%host%:%port%"

:: display the address in the command prompt
echo %address%

:: ask user to key in the saved model directory, example "C:\tmp\mnist_model"
set /p UserInputPath=Key in model saved directory:

:: use default browser to open tensorboard webpage
explorer %address%

::start tensorboard
tensorboard --logdir=%UserInputPath% --port=%port%

:: to stop tensorboard, press Ctrl + C in command prompt, type "y" then hit enter.
pause