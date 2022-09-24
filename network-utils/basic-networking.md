# Basic Networking

---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
### Table of Contents

- [What is a network?](#what-is-a-network)
- [Classful Networking](#classful-networking)
- [Subnetworks](#subnetworks)
- [Classless Inter-Domain Routing (CIDR)](#classless-inter-domain-routing-cidr)
- [SUMMARY](#summary)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

---

## What is a network?

 You heard of networks and understand that they exist and that they are comprised of your, or your company's devices.
You may have also noticed that they typically all have the same IP addressing scheme, at least the first numbers. Most
smaller networks (less than 254 hosts; there's a reason for this) only change the last octet of their IP. For instance,
in you home network, you may have 192.168.1.1 as your router's IP. You computer might be 192.168.1.2 and you phone
might be 192.168.1.99. If you are at home now, go ahead and find your IP addresses on your devices, or login to your
router to obtain them from there. Unfortunately, I won't be able to assist you with this as I don't know what devices
you have, but look around online to see if you can figure out how to find them.

 As you can see by the above example, each IP address has 3 octets that match: 192.168.1.1 and one that doesn't: 1,2 and 99
respectively in this example. The first 3 octets are known as the "network" portion of the address and the last
octet is known as the "host" portion.

| 192        | 192           | 1       | 1    |
| ----------:|:-------------:| -------:|-----:|
| Network    | Network       | Network | Host |

 Remember that the octet can only be a number from 0 - 255, so that leaves 256 possibilities for that last number. I
mentioned earlier that there are only 254 possibilities for a host, so what happened to the other 2 addresses? The
addresses 192.168.1.0 and 192.168.1.255 are reserved for the network. The first address of any network, in this case
192.168.1.0, is reserved for the "network address". This address is used to identify your network for other routers or
devices to use. If you need to setup a VPN to your company, that company's network will need to know how to get to yours,
so it will use 192.168.1.0 as the address to route to. The last address of the network, 192.168.1.255, is the "broadcast"
address. This address is used to send "broadcast" to every host on the network. For instance, if a computer on a network
doesn't know IP address of a computer named "Bob" it might send a message to 192.168.1.255 in order to "broadcast" the
message to every other device on the network asking "what IP address does 'Bob' have"? If the router on the network knows
"Bob", it will reply with Bob's address. These concepts are outside the scope of this document, but the primary takeaway
you need to know is that the first and the last IP addresses of a network are reserved and cannot be given to hosts. So
you will almost always subract 2 from the available hosts on your network.

## Classful Networking
 We are finally starting to get closer to full subnetting! Now that we understand the network and host of a network, let's
discuss how we can have a particular network. In our previous example, we used the network 192.168.1.0 wihich has
1 network and a possibility of 254 hosts. How do we determine this for other networks? In the past, there was a concept
of "network classes". These classes made it very easy to tell how many hosts and networks could be from one address.
The primary Netwrok classes are as follows:

| Class   | From          | TO               | Hosts
| -------:|:-------------:| ----------------:|-----------:|
| A       | 0.0.0.0       | 127.255.255.255  | 16 Million |
| B       | 128.0.0.0     | 191.255.255.255  | 65000      |
| C       | 192.0.0.0     | 233.255.255.255  | 254        |

But what about the addresses from 224.0.0.0 and above? These are reserved for special cases and are beyound the scope
of this guyde.

 The purpose of thses "classes" was to make easier to determine what address to use based on how many hosts and
networks your require. This was very easy way of doing things, but as Networking became more complicated, so did the
requirements for creating networks. This led to "Classless Inter-Domain Routing (CIDR)". With CIDR, the range the IP
address falls into doesn't matter anymore. Any IP address can be any "class".

## Subnetworks
 So how do we determine how many networks and hosts are available now? And why do we care? Let's say you have departments
in your organisation. These three departments need to be separated from each other in a way that allows you to controll
who has access to each department's respective resources. The easiest way is to put them on different networks that can't
talk to each other by design(unless you allow it). These networks are called "subnetworks" or "subnets" for short.

 A subnet allows us to divide networks into smaller networks to more efficiently allocate IP addresses to logical business
units. Ok, that explanation might have been a little long, so let's use an example:

 Most guides would use Finance, Management, and Marketing, but I think we can do something more entertaining that that.
Let's use Avengers, Superfriends and the League.

 Let's say the three departments all use a 192.168.1.0 network. This makes things easy, but they can only have 254 hosts!
So what happents if Avengers adds 150 employees and Superfriends adds 150? That isn't going to work! So that's one reason
why this network won't work. Assuming all three organisations don't add too many hosts, the next issue is the ability
to access each other's resources. If they are all on the same network, it is easy for Clark from League to be able to
access a computer that Tony from Avengers offie wants to keep secure! You may may also want to ensure, the Superfriends
aren't able to access YouTube while still allowing the League to look up all the cat videos they want. These are all
reasons to "subnet" you network!

  Now let's say the Avengers gets addresses 192.168.1.1 - 192.168.1.254, the League gets 192.168.2.1 - 192.168.2.254 and
 Superfriends gets 192.168.3.1 - 192.168.3.254. That gives all three of them 254 addresses to use and puts them on different
 networks(Remember, the network in this case is the first 3 octets.) This allows for security, scalability and
 administration.

## Classless Inter-Domain Routing (CIDR)

 So how do we know how large this network is? Why can't this network just start at 192.168.0.0 - 192.168.255.255 like a
class B network? This is where "Classless Inter-Domain Routing" or "CIDR noitation" comes into play!

If you have been in IT for any amount of time, you have probably seen the "/" slash following an IP address with a nubmer
after it. Such as:192.168.1.1/24. This /24 shows us that 24 bits are dedicated to the network. Remember bits and Bytes?
We are back to those again! So if 24 bits (3 Bytes) are dedicated to the network, we get 8 bits (or 1 Byte) dedicated
for hosts. If we have 8 bits to use for hosts, that means in the last octet, all of the bits are set to 1. So, if we have
8 bits set to 1, that is 255.

In an IP address, you have a portion dedicated to the network and a portion of the address dedicated to the hosts. In a /24 network, that means the first 3 octets are for the network. In this example, those three octets are 192.168.1. If you write that out in binary, that is 24 bits (3 * 8). If the subnet mask is 24, that means the first 3 octets can’t change, but the last octet (the 8 that are left) can!
192.168.1.0 is the following in binary:

 11000000.10101000.00000001.00000000

 A /24 subnet mask in binary looks like this:

 11111111.11111111.11111111.00000000

 In decimal, this is: 255.255.255.0. This should look familiar if you have ever set up a static IP address.

 This allows us to use an address range of 192.168.1.0 – 192.168.1.255, which is the network we are used to. To find the number of hosts available, we just take the number of 0s and raise 2 to that power and subtract 2. The equation is as follows:
2^(number-of-0s) – 2 = Number of possible hosts. In this case: 2^8 – 2 = 254.
See how the first 24 bits are set to 1 and the last 8 are set to 0? This means that the first 3 octets cannot be used for hosts. The “subnet mask” tells the host “you can only change the last number if you want to be on my network.” If you were to set your address to 192.168.2.0, you would not be able to communicate on the network since you have changed the 3rd octet. If you wanted to be able to use the 3rd octet, you would have to use a /16 mask, or 255.255.0.0, which can be expressed as:
 11111111.11111111.00000000.00000000 in binary. This allows a range of IP addresses from
 192.168.0.0 – 192.168.255.255 or 1100000.10101000.00000000.00000000 – 11000000.10101000.11111111.11111111 in binary.
This allows you to change the 3rd and 4th octets, which means the number of hosts we can have is 2^16 -2 = 65,534 hosts!
Another common example is a /8, this means only the first octet is reserved for the network and the last 3 octets are for hosts, which gives us a lot of hosts!
 11111111.00000000.00000000.00000000 is the mask, which means we can have
 192.0.0.0 – 192.255.255.255 or 11000000.00000000.00000000.00000000 – 11000000.11111111.11111111.11111111
in use for our hosts. So 2^24 -2 = 16,777,214. That’s a lot of hosts!

## SUMMARY

 Wow, that’s a lot of information! The best way to really understand basic subnetting is to practice, practice, practice! Let’s go over a few of the concepts:  192.0.0.0/8 means that the last 3 octets can be used for IP addresses (hosts). The first octet cannot change, or you will be on a different network. This can also be expressed as 192.0.0.0 with a subnet mask of 255.0.0.0 192.168.0.0/16 means that the last 2 octets can be used for hosts. The first 2 octets cannot be changed as they are used for the network. This can also be written as 192.168.0.0 subnet mask 255.255.0.0
192.168.1.0/24 means that the last octet can be used for hosts. The first 3 octets cannot be changed as they are used for the network. This can  also be written as 192.168.1.0 subnet mask 255.255.255.0. 192.168.1.1/32 means that NO octets can be used for hosts! This address is the ONLY address allowed. This is used for specifying an individual IP address for a policy. This can be written as 192.168.1.1 subnet mask 255.255.255.255. You will never use this to create networks, only to specify hosts for use in networking policies such as firewall whitelists.
