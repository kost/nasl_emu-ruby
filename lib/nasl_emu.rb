#!/usr/bin/env ruby

require 'base64'
require 'socket'

NASL_EMU_ENCODING='ISO-8859-1'
NASL_EMU_IPV6=false

def display(*arg)
	arg.each do |a|
		tmpstr = a.to_s
		print tmpstr
	end
end

def string(*arg)
	str = ''
	arg.each do |a|
		tmpstr = a.to_s
		str << tmpstr
	end
	return str
end

def raw_string(*arg)
	str = ''
	arg.each do |i|
		tmpstr = i.to_s
		str << tmpstr.scan(/../).map(&:hex).pack('C*').force_encoding(NASL_EMU_ENCODING)
	end
	return str
end

def hex2raw(str)
	return str.scan(/../).map(&:hex).pack('C*').force_encoding(NASL_EMU_ENCODING)
end

def crap(num, str='X')
	times=num/str.length+1
	return (str*times)[0..num-1]
end

def strlen(str)
	return str.length
end

def tolower(str)
	return str.downcase
end

def base64(str)
	return Base64.encode64(str)
end

def this_host
	ip='127.0.0.1'
	addr_infos = Socket.ip_address_list
	addr_infos.each do |adr|
		if adr.ip_address != '127.0.0.1' then
			if NASL_EMU_IPV6 then
				ip = adr.ip_address
			else
				if not adr.ip_address.include?(':') then
					ip = adr.ip_address
				end
			end
		end
	end
	return ip
end


