import traceback
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
import random
import time
import sys
from selenium.common.exceptions import NoSuchElementException
import string
import csv

__author__ = "John Brereton"
__version__ = "1.0"

def type(text, id):
	i = 0
	field = driver.find_element(By.ID, id)
	letters = list(text)
	while i < len(text):
		randnum = random.random()/5
		time.sleep(randnum)
		field.send_keys(letters[i])
		i = i + 1
def click(id):
	field = driver.find_element(By.CLASS_NAME, id)
	field.click()
def clickid(id):
	field = driver.find_element(By.ID, id)
	field.click()
def xpath(xpath):
	field = driver.find_element(By.XPATH, xpath)
	field.click()
def getpagetype():
	field = driver.find_element(By.ID, "session-state")
	pagetype = field.get_attribute("data-state")
	return pagetype
def exists(id):
	try:
		driver.find_element(By.CLASS_NAME, id)
	except NoSuchElementException:
		return False
	return True
def gen():
	i = 0
	stringcrew = ""
	while i < 3:
		letter = random.choice(string.letters)
		stringcrew = stringcrew + letter
		i = i + 0
	return stringcrew
def endSession():
	print("Ending session...")
	driver.close()
	driver.quit()
	
# Load user info from command arguments into config
config = {}
config["username"] = sys.argv[1]
config["password"] = sys.argv[2]

# Log the user in
print("Logging in the user: " + config["username"])
options = Options()
#options.headless = True
options.add_argument("--disable-javascript")
driver = webdriver.Chrome(ChromeDriverManager().install(), options=options)
driver.get("https://amazon.com/")
clickid("nav-link-accountList")
time.sleep(1)
type(config["username"], "ap_email")
clickid("continue")
time.sleep(1)
type(config["password"], "ap_password")
clickid("signInSubmit")
time.sleep(10)

# Go to orders page
driver.get("https://www.amazon.com/gp/css/order-history")
time.sleep(2)

# Grap 10 most recent orders
orders = []
orderBlocs = driver.find_elements(By.CLASS_NAME, "js-order-card")
print("Found " + str(len(orderBlocs)) + " orders")
with open('test.csv', 'w', newline='') as csvfile:
	writer = csv.writer(csvfile, delimiter=' ', quotechar='|', quoting=csv.QUOTE_MINIMAL) # TODO: Change quotechar to char not in data
	for orderBloc in orderBlocs:
		nameBloc = orderBloc.find_element(By.CLASS_NAME, "yohtmlc-item")
		name = nameBloc.find_element(By.CLASS_NAME, "a-link-normal").text
		URL = orderBloc.find_element(By.XPATH, "//a[starts-with(@href, '/gp/product/')]").get_attribute("href")
		totalBloc = orderBloc.find_element(By.CLASS_NAME, "yohtmlc-order-total")
		total = totalBloc.find_element(By.CLASS_NAME, "value").text
		date = orderBloc.find_element(By.CLASS_NAME, "value").text
		orderIdBloc = orderBloc.find_element(By.CLASS_NAME, "yohtmlc-order-id")
		orderId = orderIdBloc.find_element(By.CLASS_NAME, "value").text
		writer.writerow([name, URL, total, date, orderId])