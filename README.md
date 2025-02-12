# friendly-space-goggles
A fully functional VM in your browser!<br/>
## How to Run?<br/>
Install Qemu, noVNC and other shit:
`sudo apt update && sudo apt install tigervnc-standalone-server qemu-kvm firefox openbox neofetch kitty`.<br/>
Next, We'll copy noVNC to our server:
`git clone https://github.com/novnc/noVNC.git`.
and enter the directory that was just created:
`cd noVNC`.<br/>
Now let's start our server. We're going to be using port 5080.
`sudo vncserver -SecurityType none -xstartup "openbox" -rfbport 5080`.<br/>
Once its done starting, you'll run this command to access it:
`./utils/novnc_proxy --vnc 127.0.0.1:5080 --listen localhost:8000`.<br/>
>Yes I know 127.0.0.1 is the same thing as localhost, however, you need to specify it or it won't work.<br/>

Once it shows a message saying "Open on port 8000", click "open browser". this will take you to a page that looks like this:

Click "vnc.html" and you're in!!

## [!NOTE] if you use this too much, you'll run out of hours (120/Month) so keep that in mind. also, if codespaces is blocked, you'll have to use gitpod, so keep that in mind as well.
