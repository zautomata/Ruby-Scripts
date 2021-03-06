#!/usr/bin/env ruby

# Encrypts files easily using
# openssl commands. Essentially
# an easy wrapper for openssl

# Ex. $ encrypt names.txt encrypted.txt

def encrypt
  input_file = ARGV[0]
  output_file = ARGV[1]
  unless system("openssl enc -aes-256-cbc -salt -a -in #{input_file} -out #{output_file}")
    puts "Files not found!"
  end
  puts "Sucessfully encrypted"
end

encrypt
