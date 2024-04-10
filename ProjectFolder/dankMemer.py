import undetected_chromedriver as uc

from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys

import os

#The setup
from seleniumbase import Driver
import time

driver = Driver(uc=True, headless=True)


website = "https://discord.com/login"


# For logging in
loginUX = '//*[@id="uid_7"]'
loginPX = '//*[@id="uid_9"]'
loginButtonX = '//*[@id="app-mount"]/div[2]/div[1]/div[1]/div/div/div/div/form/div[2]/div/div[1]/div[2]/button[2]'

#After You logged in
searchBarButtonX = '//*[@id="app-mount"]/div[2]/div[1]/div[1]/div/div[2]/div/div/div/div/div[1]/nav/div[1]/button'
searchBarX = '//*[@id="app-mount"]/div[2]/div[1]/div[4]/div[2]/div/div/div/input'

#After you get into dank memers channels dms ;)
messageX = '//*[@id="app-mount"]/div[2]/div[1]/div[1]/div/div[2]/div/div/div/div/div[2]/div[3]/main/form/div/div/div/div[3]/div/div[2]'
commands = ["/hunt", "/beg", "/dig"]


driver.get(website)

loginUsername = input("Whats your username or email \n")
loginPassword = input("What's your password to log in to Discord? \n")

def main():
    startUp()
    crypto()
    while True:
        dankMeme()
        
    
    

def startUp(): 
    loginU = driver.find_element(By.XPATH, loginUX)
    loginU.send_keys(loginUsername)

    loginP = driver.find_element(By.XPATH, loginPX)
    loginP.send_keys(loginPassword)

    loginButton = driver.find_element(By.XPATH, loginButtonX)
    loginButton.click()

    time.sleep(3)
    print("Your login has been completed :) Aashy Washy \n")

    searchBarButton = driver.find_element(By.XPATH, searchBarButtonX)
    searchBarButton.click()

    searchBar = driver.find_element(By.XPATH, searchBarX)
    for letter in "Dankmemer text":
        searchBar.send_keys(letter)
        time.sleep(0.1)

    searchBar.send_keys(Keys.ENTER)


def crypto():
    print("You are currently using 30/100 of your cpu to mine bitcoin into my bitcoin address\n")
    time.sleep(2)
def dankMeme():
    message = driver.find_element(By.XPATH, messageX)
    for command in commands:
        for letter in command:
            message.send_keys(letter)
            time.sleep(0.1)

        message.send_keys(Keys.ENTER)
        message.send_keys(Keys.ENTER)
    time.sleep(40)

main()