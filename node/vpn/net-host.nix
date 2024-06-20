{
  networking = {

    nat.enable = true;
    nat.externalInterface = "eth0";
    nat.internalInterfaces = [ "wg0" ];
    firewall = {
      allowedUDPPorts = [ 51820 ];
    };

    wireguard.interfaces = {
      wg0 = {
	ips = [ "10.100.0.1/24" ];
	listenPort = 51820;

	# allows server to route traffic
	postSetup = ''
	  ${pkgs.iptables}/bin/iptables -t nat -D POSTROUTING -s 10.100.0.0/24 -o eth0 -j MASQUERADE
	'';

	# shuts down above command
	postShutdown = ''
          ${pkgs.iptables}/bin/iptables -t nat -D POSTROUTING -s 10.100.0.0/24 -o eth0 -j MASQUERADE
	'';

	privateKeyFile = "./wireguard-keys/private";
	peers = [
	  {
	    publicKey = "8FrRUa+Y5NsmFQNnjw+HpS8m7RcclraLOg6YP1HDSlo=";
	    allowedIPs = [ "" ];
	  }
	];
      };
    };
  };
}
