from bs4 import BeautifulSoup
import argparse # parse command-line options 
import requests


def download_img(url, depth, path, current_depth=0):
    
    if current_depth > depth:
        return

    try:
        response = requests.get(url)
        response.raise_for_status() # raise an HTTPError for bad responses

        soup = BeautifulSoup(response.text, 'html.parser') # extract code HTML of this page
        img_tags = soup.find_all('img') 

    except requests.exceptions.RequestException as e:
        print(f"Failed to retrieve URL {url}. Error: {e}")
        return 

if __name__ == '__main__' :
    parser = argparse.ArgumentParser(
                    prog='Spider',
                    description='The spider program allow you to extract all the images from a website, recursively, by providing a url as a parameter.',
                    epilog='42 Cybersecurity')

    # print(parser)

    parser.add_argument('URL', type=str, help='The URL of the website to download images from.')
    parser.add_argument('-r', action='store_true', help='ecursively downloads the images in a URL received as a parameter.')
    parser.add_argument('-l', type=int, default=5, help='Maximum depth level for recursive download.')
    parser.add_argument('-p', type=str, default='data', help='Path to save downloaded images.')

    args = parser.parse_args()

    print(args)

    download_img(args.URL, args.l, args.p)
        

