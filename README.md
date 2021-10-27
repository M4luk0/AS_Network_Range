# AS_Network_Range
Simple tool that use the API of ipv4info to get info about an AS and extract all the network range of that AS

# Installation and use:
```console
# clone the repo
$ git clone https://github.com/M4luk0/AS_Network_Range.git

# change the working directory
$ cd AS_Network_Range

# Change the KEY parameter in the line 12 with your ipv4info api key
curl -s "http://ipv4info.com/api_v1/?key=(#Change_This ->)KEY&type=ASINFO&value=$1&page=0" --output "$2_Full_Info"

# Usage
$ bash AS_Info.sh "AS_number (34977)" "Name_of_the_output_file"
```
