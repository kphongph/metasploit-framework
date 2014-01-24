require 'msf/core'

class Metasploit3 < Msf::Auxiliary
  include Msf::Exploit::Remote::Tcp
  include Msf::Auxiliary::Scanner
  include Msf::Auxiliary::Report

  def initialize
    super(
      'Name' => 'Firewalking',
      'Description' => 'Firewalking Tech.',
      'Author' => 'kphongph@gmail.com',
      'License' => MSF_LICENSE
    )

    register_options([
      OptString.new('PORTS', [true, "Ports to scan (e.g.,22)", "22"])
    ], self.class)
    
    deregister_options('FILTER', 'PCAPFILE')
  end
  
  def run_batch_size
    256
  end 

  def run_batch(hosts)
    print_status(" TCP OPEN xyx")
  end
end
