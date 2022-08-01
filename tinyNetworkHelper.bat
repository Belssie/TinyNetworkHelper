@echo off
color A
title Simple Network Helper
echo A very tiny and simple network testing tool by Beloslava Mircheva
echo 01010011 01101001 01101101 01110000 01101100 01100101 00100000 01001110 01100101 01110100 01110111 01101111 01110010 01101011 00100000 01010100 01100101 01110011 01110100 01100101 01110010 00100000
echo ==============
:begin 
echo Select a task:
echo ==============
echo 1) Ping
echo 2) Tracert
echo 3) Pathping
echo 4) Ipconfig
echo 5) GETMAC
echo 6) NETSTAT
echo 7) Quit (had to make this due to X button never working...)
echo ==============
set /p op=Pick an option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="7" goto op7
echo Please pick an option:
goto begin

:op1
echo ==============
echo Pingpong selected!
echo Verifies IP-level connectivity to another TCP/IP computer by sending Internet Control Message Protocol (ICMP) echo Request messages. 
echo The receipt of corresponding echo Reply messages are displayed, along with round-trip times. ping is the primary TCP/IP command used to troubleshoot 
echo connectivity, reachability, and name resolution. Used without parameters, this command displays Help content.
echo ==============
echo Options:
echo -t 		Ping the specified host until stopped. To see statistics and continue - type Control-Break; To stop - type Control-C.
echo -a 		Resolve addresses to hostnames.
echo -n count  	Number of echo requests to send.
echo -l size 	Send buffer size.
echo -f Set 		Don't Fragment flag in packet (IPv4-only).
echo -i TTL 		Time To Live.
echo -v TOS 		Type Of Service (IPv4-only. This setting has been deprecated and has no effect on the type of service field in the IP Header).
echo -r count  	Record route for count hops (IPv4-only).
echo -s count  	Timestamp for count hops (IPv4-only).
echo -j host-list   	Loose source route along host-list (IPv4-only).
echo -k host-list   	Strict source route along host-list (IPv4-only).
echo -w timeout 	Timeout in milliseconds to wait for each reply.
echo -R 		Use routing header to test reverse route also (IPv6-only). Per RFC 5095 the use of this routing header has been deprecated. Some systems may drop echo requests if this header is used.
echo -S srcaddr 	Source address to use.
echo -c compartment 	Routing compartment identifier.
echo -p 		Ping a Hyper-V Network Virtualization provider address.
echo -4 		Force using IPv4.
echo -6 		Force using IPv6.
echo ==============
set /p IP= Enter IP/Domain:
set /p OPT= Enter Command options:
:top
ping %OPT% %IP% 
echo ==============
set /p DUMMY=Press ENTER to return in the main menu
goto begin

:op2
echo ==============
echo Tracert it is!
echo This diagnostic tool determines the path taken to a destination by sending Internet Control Message Protocol (ICMP) echo Request or ICMPv6 messages to the destination with incrementally 
echo increasing time to live (TTL) field values. Each router along the path is required to decrement the TTL in an IP packet by at least 1 before forwarding it. Effectively, 
echo the TTL is a maximum link counter. When the TTL on a packet reaches 0, the router is expected to return an ICMP time Exceeded message to the source computer.
echo ==============
echo Options:
echo -d 		Do not resolve addresses to hostnames.
echo -h maximum_hops	Maximum number of hops to search for target.
echo -j host-list	Loose source route along host-list (IPv4-only).
echo -w timeout 	Wait timeout milliseconds for each reply.
echo -R 		Trace round-trip path (IPv6-only).
echo -S srcaddr	Source address to use (IPv6-only).
echo -4 		Force using IPv4.
echo -6 		Force using IPv6.
echo ==============
set /p IP= Enter IP/Domain:
set /p OPT= Enter Command options:
:top
tracert %OPT% %IP%
set /p DUMMY=Press ENTER to return in the main menu
goto begin

:op3
echo ==============
echo Pathping incoming!
echo Provides information about network latency and network loss at intermediate hops between a source and destination. 
echo This command sends multiple echo Request messages to each router between a source and destination, over a period of time, 
echo and then computes results based on the packets returned from each router. Because this command displays the degree of 
echo packet loss at any given router or link, you can determine which routers or subnets might be having network problems. 
echo Used without parameters, this command displays help.
echo ==============
echo Options:
echo -g host-list 	Loose source route along host-list.
echo -h maximum_hops Maximum number of hops to search for target.
echo -i address   	Use the specified source address.
echo -n   		Do not resolve addresses to hostnames.
echo -p period	Wait period milliseconds between pings.
echo -q num_queries  Number of queries per hop.
echo -w timeout   	Wait timeout milliseconds for each reply.
echo -4   		Force using IPv4.
echo -6   		Force using IPv6.
echo ==============
set /p IP= Enter IP/Domain:
set /p OPT= Enter Command options:
:top
pathping %OPT% %IP%
set /p DUMMY=Press ENTER to return in the main menu
goto begin

:op4
echo ==============
echo Ipconfig... there's no place like 127.0.0.1
echo Displays all current TCP/IP network configuration values and refreshes Dynamic Host Configuration Protocol (DHCP) and 
echo Domain Name System (DNS) settings. Used without parameters, ipconfig displays Internet Protocol version 4 (IPv4) and IPv6 addresses,
echo  subnet mask, and default gateway for all adapters.
echo ==============
echo Options:
echo /? 	Display this help message
echo /all      	Display full configuration information.
echo /release  	Release the IPv4 address for the specified adapter.
echo /release6 	Release the IPv6 address for the specified adapter.
echo /renew    	Renew the IPv4 address for the specified adapter.
echo /renew6   	Renew the IPv6 address for the specified adapter.
echo /flushdns 	Purges the DNS Resolver cache.
echo /registerdns   	Refreshes all DHCP leases and re-registers DNS names
echo /displaydns    	Display the contents of the DNS Resolver Cache.
echo /showclassid   	Displays all the dhcp class IDs allowed for adapter.
echo /setclassid    	Modifies the dhcp class id.
echo /showclassid6  	Displays all the IPv6 DHCP class IDs allowed for adapter.
echo /setclassid6   	Modifies the IPv6 DHCP class id.
echo ==============
set /p OPT= Enter Command options:
:top
ipconfig %OPT%
set /p DUMMY=Press ENTER to return in the main menu
goto begin

:op5
echo ==============
echo GETMAC, BIGMAC and never use MAC
echo Returns the media access control (MAC) address and list of network protocols associated with each address for all network cards in each computer, 
echo either locally or across a network. This command is particularly useful either when you want to enter the MAC address into a network analyzer, 
echo or when you need to know what protocols are currently in use on each network adapter on a computer.
echo ==============
echo Options:
echo /S system		Specifies the remote system to connect to.
echo /U [domain\]user 	Specifies the user context under which the command should execute.
echo /P [password]		Specifies the password for the given user context. Prompts for input if omitted.
echo /FO format 		Specifies the format in which the output is to be displayed. Valid values: "TABLE", "LIST", "CSV".
echo /NH  			Specifies that the "Column Header" should not be displayed in the output. Valid only for TABLE and CSV formats.
echo /V   			Specifies that verbose output is displayed.
echo ==============
set /p OPT= Enter Command options:
:top
getmac %OPT%
set /p DUMMY=Press ENTER to return in the main menu
goto begin

:op6
echo ==============
echo NETSTAT ESTABLISHED
echo Displays active TCP connections, ports on which the computer is listening, Ethernet statistics, the IP routing table, 
echo IPv4 statistics (for the IP, ICMP, TCP, and UDP protocols), and IPv6 statistics (for the IPv6, ICMPv6, TCP over IPv6, and UDP over IPv6 protocols). 
echo Used without parameters, this command displays active TCP connections.
echo ==============
echo Options:
echo -a		Displays all connections and listening ports.
echo -b		Displays the executable involved in creating each connection or listening port. In some cases well-known executables host
echo multiple independent components, and in these cases the sequence of components involved in creating the connection
echo or listening port is displayed. In this case the executable name is in [] at the bottom, on top is the component it called,
echo and so forth until TCP/IP was reached. Note that this option can be time-consuming and will fail unless you have sufficient
echo permissions.
echo -e 		Displays Ethernet statistics. This may be combined with the -s option.
echo -f 		Displays Fully Qualified Domain Names (FQDN) for foreign addresses.
echo -n 		Displays addresses and port numbers in numerical form.
echo -o 		Displays the owning process ID associated with each connection.
echo -p 		protoShows connections for the protocol specified by proto; proto may be any of: TCP, UDP, TCPv6, or UDPv6.If used with the -s
echo option to display per-protocol statistics, proto may be any of: IP, IPv6, ICMP, ICMPv6, TCP, TCPv6, UDP, or UDPv6.
echo -q		Displays all connections, listening ports, and bound nonlistening TCP ports. Bound nonlistening ports may or may not
echo be associated with an active connection.
echo -r		Displays the routing table.
echo -s		Displays per-protocol statistics.By default, statistics are shown for IP, IPv6, ICMP, ICMPv6, TCP, TCPv6, UDP, and UDPv6;
echo the -p option may be used to specify a subset of the default.
echo -t		Displays the current connection offload state.
echo -x		Displays NetworkDirect connections, listeners, and shared endpoints.
echo -y		Displays the TCP connection template for all connections. Cannot be combined with the other options.
echo interval	Redisplays selected statistics, pausing interval seconds between each display.Press CTRL+C to stop redisplaying
echo statistics. If omitted, netstat will print the current configuration information once.
echo ==============
set /p OPT= Enter Command options:
:top
NETSTAT %OPT%
set /p DUMMY=Press ENTER to return in the main menu
goto begin

:op7
echo The operation failed successfully! Please 01101011 01101001 01101100 01101100 00100000 01101101 01100101 00100000 01101110 01101111 01110111 00100001
echo ....
timeout /t 2 /nobreak
exit /b