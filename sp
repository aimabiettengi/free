import string
import random
from time import sleep
import os,time
try:
 import threading,subprocess,base64,cv2,random
 import numpy as np
except:
  os.system("pip install --force-reinstall --no-cache opencv-python==4.5.5.64")
  os.system("pip install numpy")
import threading,subprocess,base64,cv2,random
import numpy as np
from datetime import datetime
import json
import requests
import pyautogui
import zipfile
import discord_webhook
import json
import wget
from pathlib import Path
from zipfile import ZipFile
import pygetwindow


def findrun():
    return pygetwindow.getWindowsWithTitle('run')

def killrun():
    while True:
        sleep(1800)
        subprocess.call(["taskkill","/F","/IM","free-by-dangu.exe"])

def checkrun():
    while True:
        sleep(60)
        if findrun():
            print('tool is running....')
        elif not findrun():
            print('tool is not running....')
            # open tool
            os.system('run.bat')
            
thread1 = threading.Thread(target=killrun)
thread1.start()

thread2 = threading.Thread(target=checkrun)
thread2.start()
