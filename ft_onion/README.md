# Key Features of the Tor Network:

## Anonymity
    - by encrypting throught selected node (layers)

## Hidden Services: (accesible throught Tor and Ip is hidden)
    - Tor also supports "hidden services," which allow users to host websites and services without revealing their IP addresses. These services can only be accessed through the Tor network.

## Onion Routing
    - This layered approach ensures that no single node knows both the origin and destination of the data, thus enhancing privacy.

## Access to Censored Content:
    - Tor can be used to access websites that are blocked by local internet service providers (ISPs) or governments. This makes it a valuable tool for people living in regions with heavy internet censorship.

# How Tor Works

## Client Software
    - use Tor browser

## Routing Traffic
    - When a user requests a web page, the Tor Browser sends the request through a series of at least three Tor relays. Each relay knows only the location of the previous and next relays, but not the entire route.

## Encryption Layers
    - Each relay decrypts a layer of encryption to reveal the next relay's address. The final relay, called the exit node, sends the request to the destination server.
        * First Layer: The data is first encrypted with the key of the exit node.
        * Second Layer: Then, this already encrypted data is encrypted again with the key of the middle relay.
        * Third Layer: Finally, the doubly encrypted data is encrypted once more with the key of the entry node.

## Response Path
    - The process is reversed for the response from the server to the user, ensuring that the original request and the response are both anonymized.
