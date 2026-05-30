from bs4 import BeautifulSoup


def title_from_html(html: str) -> str:
    soup = BeautifulSoup(html, "html.parser")
    title = soup.find("title")
    return title.text if title else ""

