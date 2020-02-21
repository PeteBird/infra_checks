# infra_checks

This repo contains some reaaaaal basic scripts I sometimes use to perform various rudimentary infrastructure validations.

## connectivity_check

This is intended to be a very simple bash script that takes input from a couple files `ip_list.txt` and `host_list.txt` (one item per line) and performs the following:

- a simple netcat scan of port 22 `ssh` of each IP address
- s simple nslookup of each hostname.

You can adjust the resolver variable and port as needed.

### Instructions

1. Set up your ip_list.txt with one target IP address per line, feel free to add a `#comment` at the end of each line if you need to identify what the target is.
2. Set up your host_list.txt file with one dns hostname per line e.g. `hostname.some.domain.com`.
3. make connect_test.sh executable e.g. `chomd +x connect_test.sh` and run it.
