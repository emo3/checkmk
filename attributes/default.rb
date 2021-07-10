default['cmk'].tap do |cmk|
  cmk['media_url'] = 'http://websrv/media'
  cmk['cmk_release'] = '2.0.0p7'
  # cmk['cmk_release'] = '1.6.0p24'
  cmk['el_version'] = if node['platform_version'] < '8'
                        '7'
                      else
                        '8'
                      end
  # cmk['server_rpm'] = "check-mk-raw-#{cmk['cmk_release']}-el#{cmk['el_version']}-38.x86_64.rpm"
  # 1.6.0 version
  # cmk['server_rpm'] = "check-mk-enterprise-#{cmk['cmk_release']}.demo-el#{cmk['el_version']}-38.x86_64.rpm"
  # 2.0.0 version
  cmk['server_rpm'] = "check-mk-free-#{cmk['cmk_release']}-el#{cmk['el_version']}-38.x86_64.rpm"
  cmk['agent_rpm'] = "check-mk-agent-#{cmk['cmk_release']}-1.noarch.rpm"
  cmk['site_name'] = 'cmk'
  cmk['server_name'] = 'checkmks'
  cmk['admin_passwd'] = 'cmkadmin'
  cmk['server_ip'] = '10.1.1.20'
  cmk['agent_ip'] = '10.1.1.21'
  cmk['api_url'] = "http://#{cmk['server_name']}/#{cmk['site_name']}/check_mk/webapi.py"
  cmk['api_token'] = '402efbc8-d4ae-43f3-93e0-9966ee5b4366'
  cmk['api_user'] = 'automation'
  cmk['api_login'] = "_username=#{cmk['api_user']}&_secret=#{cmk['api_key']}"
  cmk['code'] = '0'
  cmk['local_url'] = 'n'
end
