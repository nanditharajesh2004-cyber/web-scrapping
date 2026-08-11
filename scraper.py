import requests
from bs4 import BeautifulSoup

url = "https://quotes.toscrape.com/"

response = requests.get(url)
response.raise_for_status()

soup = BeautifulSoup(response.text, "html.parser")

quotes = soup.find_all("div", class_="quote")

for item in quotes:
    quote = item.find("span", class_="text").text
    author = item.find("small", class_="author").text

    if author == "Albert Einstein":
        tags = item.find_all("a", class_="tag")

        print("Quote:", quote)
        print("Author:", author)
        print("Tags:")

        for tag in tags:
            print(tag.text)
