require "lita"
require "socket"

module Lita
  module Handlers
    class GetIp < Handler
      route(/(g|G)et ip/, :reply, command: true, help: {
        "get ip" => "Gives you back a machine ip address."
      })

      def self.default_config(handler_config)
      end

      def reply(response)
        response.reply "Private IP:#{first_private_ipv4.inspect_sockaddr}" if first_private_ipv4
        response.reply "Public IP:#{first_public_ipv4.inspect_sockaddr}" if first_public_ipv4
      end

      def first_private_ipv4
        Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
      end

      def first_public_ipv4
        Socket.ip_address_list.detect{|intf| intf.ipv4? and !intf.ipv4_loopback? and !intf.ipv4_multicast? and !intf.ipv4_private?}
      end
    end

    Lita.register_handler(GetIp)
  end
end
