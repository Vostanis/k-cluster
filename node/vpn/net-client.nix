{
  networking = {

    firewall = {
      allowedUDPPorts = [ 51820 ];
    };

    wireguard.interfaces = {
      wg0 = {
	ips = [];
	listenPort = 51820;
	privateKeyFile = "";
	peers = [
	  publicKey = "{server public key}";
	  allowedIPs = [ "0.0.0.0/0" ]; # forward all traffic via VPN
	  endpoint = "{server IP}:51820";
	  persistentKeepalive = 25;
	];
      };
    };
  };
}
