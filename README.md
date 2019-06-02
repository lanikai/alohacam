# 🌈Alohacam
AlohaCam Beta FAQs

# What is Alohacam?
Alohacam is a video streaming solution for embedded devices, powered by our WebRTC native library – AlohaRTC. 

# Who built this?
The awesome team over at Lanikai Labs. You can check us out [here](https://lanikailabs.com)!

# How do I sign up for the Beta?
Just click [here](https://lanikailabs.com/alohacam), enter your email address, and we'll send you the executable. It's as easy as that! 

# How long will the Beta be available?
We do not have a set timeline for the length of the Beta, but we're thinking 8-10 weeks. Stay tuned for more information on that. 

# What happens after the Beta ends?
After the Alohacam Beta wraps, we will still offer peer-to-peer (non-TURN) one-way video streaming for free. Our plan is to use the findings from the Alohacam Beta to polish the overall platform and launch with a full set of features. We look forward to showing you everything that the AlohaRTC platform can do! 

# What development boards are currently supported?
The Alohacam Beta software currently supports Raspberry Pi development boards. We'll let you know as we release support for more development boards (looking at you, Jetson Nano!) – so stay tuned. 

# Who can view Alohacam? 
**Short answer**: Security is our top priority. Alohacam uses WebRTC, and the entire interaction is encrypted. This means that (unlike some IoT solutions) only you can view your Alohacam!

**Longer answer**: We use client side SSL/TLS encryption. The Alohacam install script will auto-generate a certificate for your device. This certificate never leaves your device – we don't store it or have access to it – and you can even use your own. When a connection to your device is initiated, your browser will create a dynamic certificate (through DHE key exchange) that is valid only for that session. Both certificates use X.509 standards. We designed these security measures to ensure that only you will be able to view your Alohacam!

# Is this MJPEG or H.264?
Alohacam is powered by a WebRTC native library. The video you're seeing is from the hardware-accelerated H.264 byte-stream.

# What are the bandwidth requirements?
By using WebRTC to power Alohacam, we have brought the required bandwidth down to about 1MB/s. 

# How many people can view Alohacam simultaneously?
The Alohacam Beta supports a single viewer at a time, but we're looking into multi-viewer support!  

# How do I get started?
You'll need a Raspberry Pi development kit, a Raspberry Pi camera module, a real email address, and a sense of adventure! You can sign up for the Beta [here](https://lanikailabs.com/alohacam) and view the step-by-step guide [here](/GUIDE.md).

# This is so awesome! Can you send me the code?
We're glad you like Alohacam! We're not planning a public release of our code base, but you can check out our documentation (and run a local network analysis!) to see how we've built it. 

# I have a feature request!
Excellent – we can't wait to hear it! Send us a note at aloha@lanikailabs.com! 

# Help! I can't get this to work!
Here's a step-by-step [guide](/GUIDE.md) to walk you through the setup process. If you're still running into issues, shoot us an email at aloha@lanikailabs.com!

# I accidentally deleted my device and can't re-add it! 
Whoops! No worries – just run `rm cert.pem` on your device to clear the original certificate. Now you should be able to re-add it! Reach out to us at aloha@lanikailabs.com if you're still having issues. 

# What else do I need to know? 
We know no one reads these, but just in case... 
<br> [Privacy Policy](https://lanikailabs.com/privacy?src=github)
<br> [Terms of Service](https://lanikailabs.com/terms-of-service?src=github)
