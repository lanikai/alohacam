# A beginner's guide to Alohacam:

If you haven't already, request a Beta invite [here](https://lanikailabs.com/alohacam). Once you receive your invite email, click the unique link provided to register and log into your account. 

![1](images/1.png)

You're now ready to add your first device! First, make sure your Raspberry Pi is powered on and connected to the Internet. <br> 
<br>
The main Alohacam webpage should now be displaying the "Add your first device" modal. Choose a name for your Alohacam (like "Moana") and click Add.

![2](images/2.png)
 
The modal will now display a command with a unique token. Copy this entire command, and run it on your Raspberry Pi in `$HOME`. Note that the token is only valid for 60 minutes -- if the command is not run within this run, a new token will need to be generated (click 'Cancel' and then the 'Activate' button).

![3](images/3.png)

Your Raspberry Pi will now download and configure the Alohacam executable. This may take a few minutes, so be patient :)
    <br> – If you are prompted to reboot your Raspberry Pi during this process, choose Yes. 
    <br> – Once your Raspberry Pi reboots and reconnects to the Internet, run the command `./alohacam` to start Alohacam. 
    
After you have successfully run the executable on your Raspberry Pi, click Done. You will now be brought back to the dashboard, where you can see your Alohacam. 

![6](images/6.png)

You can now view your device's live video stream! You'll also find the controls to pause and play the video, enter full screen mode, or delete the device.
<br> 
<br> 
Keep in mind that if you unplug or power down your Raspberry Pi, you'll need to re-run the `./alohacam` command upon boot to restart Alohacam. 

If you run into any issues or still have questions, reach out to us at aloha@lanikailabs.com! 
