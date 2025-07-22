# Native API

First activate the pynq environment:

~~~
source /usr/local/share/pynq-venv/bin/activate
~~~

Then source the Xilinx Runtime (XRT)

~~~
source /etc/profile.d/xrt_setup.sh
~~~

Load the desired bitstream

~~~
sudo -E python -c "from pynq import Overlay; o = Overlay('./bitstreams/[bitstream]); o.download()"
~~~

Run the native API as root

~~~
sudo ./re2_driver_xrt
~~~

# N.B.

Change the ```#define CICERO_BASE_ADDR``` to the one given by the vivado tool