The argparse module’s support for command-line interfaces is built around an instance of argparse.ArgumentParser. It is a container for argument specifications and has options that apply to the parser as whole:

The ArgumentParser.add_argument() method attaches individual argument specifications to the parser. It supports positional arguments, options that accept values, and on/off flags:

# Visualisation option -r with -l = 2

download_images('https://example.com', './images', 2, 0)
  |
  |---> download_images('https://example.com/page1', './images', 2, 1)
  |       |
  |       |---> download_images('https://example.com/page1/subpage1', './images', 2, 2)
  |
  |---> download_images('https://example.com/page2', './images', 2, 1)
          |
          |---> download_images('https://example.com/page2/subpage1', './images', 2, 2)

tuple