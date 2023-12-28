from urllib.request import urlopen 
from bs4 import BeautifulSoup
import re

for i in range(1, 11):
    knot_nr = "0_1"
    upper = 1
    if i == 1 or i == 2: 
        continue
    elif i == 3:
        knot_nr = "3_1"
    elif i == 4:
        knot_nr = "4_1"
    elif i == 5:
        upper = 2
    elif i == 6:
        upper = 3
    elif i == 7:
        upper = 7
    elif i == 8:
        upper = 21
    elif i == 9: 
        upper = 49
    elif i == 10:
        upper = 165

    for j in range(1, upper + 1):
        knot_nr = str(i) + "_" + str(j)

        url = "http://katlas.org/wiki/" + knot_nr
    
        page = urlopen(url)
    
        html_bytes = page.read()
        html = html_bytes.decode("utf-8")
    
        soup = BeautifulSoup(html, features="lxml")

        result = soup.find_all('td', string=re.compile('Alexander polynomial'))[0].next_sibling.next_sibling.find('img')['alt']
        print(knot_nr + "  :::::  " + result)
