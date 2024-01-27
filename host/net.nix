{ ... }:

{
  networking = {

    hostName = "k-cluster";
    defaultGateway = "192.168.1.1";
    nameservers = [ "1.1.1.1" "8.8.8.8" ];

    ### network
    networkmanager.enable = true;

    ### nat 
    nat.enable = true;
    nat.externalInterface = "eth0";
    nat.internalInterfaces = [ "wg0" ];

    ### firewall
    firewall= {
      enable = true;
      # - ports:
      #   25      SMTP (email)
      #   53      DNS
      #   9042    CQL
      #   51820   WireGuard
      allowedTCPPorts = [ 25 53 7000 9042];
      allowedUDPPorts = [ 25 53 51820 ];
    };

    ### dns
    # todo!

    ### vpn
    # # server
    # wireguard.interfaces = {
  #     wg0 = {
  #       ips = [ "10.100.0.1/24" ];
  #       listenPort = 51820;

  #       # This allows the wireguard server to route your traffic to the internet and hence be like a VPN
  #       # For this to work you have to set the dnsserver IP of your router (or dnsserver of choice) in your clients
  #       postSetup = ''
  #         ${pkgs.iptables}/bin/iptables -t nat -A POSTROUTING -s 10.100.0.0/24 -o eth0 -j MASQUERADE
  #       '';
  #       postShutdown = ''
  #         ${pkgs.iptables}/bin/iptables -t nat -D POSTROUTING -s 10.100.0.0/24 -o eth0 -j MASQUERADE
  #       '';

  #       # connections
  #       privateKeyFile = "./path/to/be/determined";
  #       peers = [
  #         { # Device 1
  #           publicKey = "{client public key}";
  #           allowedIPs = [ "10.100.0.2/32" ]; # this can be several
  #         }
  #       ];
  #     };
  #   };
  # };

  # # client
  # wireguard.interfaces = {
  #   wg0 = {
  #     ips = [ "10.100.0.2/24" ];
  #     listenPort = 51820;

  #     # connections
  #     privateKeyFile = "";
  #     peers = [
  #       # For a client configuration, one peer entry for the server will suffice.
  #       {
  #         # Public key of the server (not a file path).
  #         publicKey = "{server public key}";

  #         # Forward all the traffic via VPN.
  #         allowedIPs = [ "0.0.0.0/0" ];
  #         # Or forward only particular subnets
  #         #allowedIPs = [ "10.100.0.1" "91.108.12.0/22" ];

  #         # Set this to the server IP and port.
  #         endpoint = "{server ip}:51820"; # ToDo: route to endpoint not automatically configured https://wiki.archlinux.org/index.php/WireGuard#Loop_routing https://discourse.nixos.org/t/solved-minimal-firewall-setup-for-wireguard-client/7577

  #         # Send keepalives every 25 seconds. Important to keep NAT tables alive.
  #         persistentKeepalive = 25;
  #       }
  #     ];
  #   };
  };
}
