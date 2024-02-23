
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from webdriver_manager.chrome import ChromeDriverManager
import time


options = webdriver.ChromeOptions()
options.add_argument("--no-sandbox")
options.add_argument("--disable-dev-shm-usage")


webdriver_service = Service(ChromeDriverManager().install())

driver = webdriver.Chrome(service=webdriver_service, options=options)

url = "https://orteil.dashnet.org/cookieclicker/"
driver.get(url)
time.sleep(1)

consent_button = driver.find_element(By.XPATH, "/html/body/div[3]/div[2]/div[1]/div[2]/div[2]/button[1]")
consent_button.click()

english = driver.find_element(By.XPATH, "/html/body/div[2]/div[2]/div[12]/div/div[1]/div[1]/div[2]")
english.click()



def balt():
    spid = driver.find_element(By.XPATH, "//*[@id='product0']")
    spid.click()


source = driver.page_source
soup = BeautifulSoup(source, "html.parser")
daudz = int(soup.find(id="cookies").text.split()[0])
click_maksa = int(soup.find(id="productPrice0").text)
vec_maksa = int(soup.find(id="productPrice1").text)

def remove_comma(integer_string):
    return int(integer_string.replace(",", ""))

def daudzuma():
    source = driver.page_source
    soup = BeautifulSoup(source, "html.parser")
    daudz = int(remove_comma(soup.find(id="cookies").text.split()[0]))
    click_maksa = int(remove_comma(soup.find(id="productPrice0").text))
    vec_maksa = int(remove_comma(soup.find(id="productPrice1").text))
    farm_maksa = int(remove_comma(soup.find(id="productPrice2").text))
    rakt_maksa = int(remove_comma(soup.find(id="productPrice3").text))
    rupnica_maksa = int(remove_comma(soup.find(id="productPrice4").text))
    if rupnica_maksa
    return daudz, click_maksa, vec_maksa, farm_maksa, rakt_maksa, rupnica_maksa

cookie = driver.find_element(By.XPATH, "/html/body/div[2]/div[2]/div[15]/div[8]/button")




for x in range(116):
    cookie.click()
balt()
time.sleep(1)
bbb = driver.find_element(By.XPATH, "//*[@id='upgrade0']")
bbb.click()

for x in range(302):
    cookie.click()
time.sleep(1)
bbb = driver.find_element(By.XPATH, "//*[@id='upgrade0']")
bbb.click()


vec_skaits = driver.find_element(By.XPATH, "//*[@id='product1']")
vec_skaits.click()
for x in range(250):
     cookie.click()
time.sleep(1)
bbb = driver.find_element(By.XPATH, "//*[@id='upgrade0']")
bbb.click()

a =driver.find_element(By.XPATH, "/html/body/div[2]/div[2]/div[19]/div[3]/div[6]/div[1]/div[4]")
a.click()

while daudz > -1:
    
    for x in range(200):
         cookie.click()
    daudz, click_maksa, vec_maksa, farm_maksa, rakt_maksa, rupnica_maksa = daudzuma()
    
    time.sleep(1)
    bbb = driver.find_element(By.XPATH, "//*[@id='upgrade0']")
    bbb.click()
    
    if daudz > rupnica_maksa:
        rupnica = driver.find_element(By.XPATH, "//*[@id='product4']")
        rupnica.click()
    elif daudz > rakt_maksa:
        rakt = driver.find_element(By.XPATH, "//*[@id='product3']")
        rakt.click()

    elif daudz > farm_maksa:
        farm = driver.find_element(By.XPATH, "//*[@id='product2']")
        farm.click()
    
    elif daudz > vec_maksa:
        vec_skaits = driver.find_element(By.XPATH, "//*[@id='product1']")
        vec_skaits.click()
    
    elif daudz > click_maksa:
            balt()
