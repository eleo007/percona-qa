#!/usr/bin/env bats

function is_zip(){
  echo "output = ${output}"
  output2="$(wget --spider ${output} 2>&1)"
  echo "output2 = ${output2}"
  [ "$(echo $output2 | grep -c 'text/html')" -eq 0 ]
}

@test "check ps 5.7" {
  run ./get_download_link.sh --product ps --version 5.7
}
@test "check ps 8.0" {
  run ./get_download_link.sh --product ps --version 8.0
  is_zip
}
@test "check ps for centos" {
  run ./get_download_link.sh --product ps --distribution centos
  is_zip
}
@test "check ps for ubuntu bionic" {
  run ./get_download_link.sh --product ps --distribution ubuntu-bionic
  is_zip
}
@test "check ps 5.7 source" {
  run ./get_download_link.sh --product ps --version 5.7 --source
  is_zip
}
@test "check ps 8.0 source" {
  run ./get_download_link.sh --product ps --version 8.0 --source
  is_zip
}
@test "check pxc 5.7" {
  run ./get_download_link.sh --product pxc --version 5.7
  is_zip
}
@test "check pxc 8.0" {
  run ./get_download_link.sh --product pxc --version 8.0
  is_zip
}
@test "check pxc 5.7 source" {
  run ./get_download_link.sh --product pxc --version 5.7 --source
  is_zip
}
@test "check pxc 8.0 source" {
  run ./get_download_link.sh --product pxc --version 8.0 --source
  is_zip
}


@test "check psmdb 3.4" {
  run ./get_download_link.sh --product psmdb --version 3.4
  is_zip
}
@test "check psmdb 3.6" {
  run ./get_download_link.sh --product psmdb --version 3.6
  is_zip
}
@test "check psmdb 4.0" {
  run ./get_download_link.sh --product psmdb --version 4.0
  is_zip
}
@test "check psmdb 4.2" {
  run ./get_download_link.sh --product psmdb --version 4.2
  is_zip
}

@test "check psmdb 3.4 source" {
  run ./get_download_link.sh --product psmdb --version 3.4 --source
  is_zip
}
@test "check psmdb 3.6 source" {
  run ./get_download_link.sh --product psmdb --version 3.6 --source
  is_zip
}
@test "check psmdb 4.0 source" {
  run ./get_download_link.sh --product psmdb --version 4.0 --source
  is_zip
}
@test "check psmdb 4.2 source" {
  run ./get_download_link.sh --product psmdb --version 4.2 --source
  is_zip
}

@test "check psmdb 3.4 for centos" {
  run ./get_download_link.sh --product psmdb --version 3.4 --distribution centos
  is_zip
}

@test "check pt" {
  run ./get_download_link.sh --product pt
  is_zip
}

@test "check pt source" {
  run ./get_download_link.sh --product pt --source
  is_zip
}

@test "check pxb 2.4" {
  run ./get_download_link.sh --product pxb --version 2.4
  is_zip
}
@test "check pxb 8.0" {
  run ./get_download_link.sh --product pxb --version 8.0
  is_zip
}

@test "check pxb 2.4 source" {
  run ./get_download_link.sh --product pxb --version 2.4 --source
  is_zip
}
@test "check pxb 8.0 source" {
  run ./get_download_link.sh --product pxb --version 8.0 --source
  is_zip
}

@test "check pxb 2.4 for centos" {
  run ./get_download_link.sh --product pxb --version 2.4 --distribution centos
  is_zip
}
@test "check pxb 8.0 for centos" {
  run ./get_download_link.sh --product pxb --version 8.0 --distribution centos
  is_zip
}

@test "check pmm-client" {
  run ./get_download_link.sh --product pmm-client
  is_zip
}

@test "check pmm-client source" {
  run ./get_download_link.sh --product pmm-client --source
  is_zip
}

@test "check mysql 5.7" {
  run ./get_download_link.sh --product mysql --version 5.7
  is_zip
}
@test "check mysql 8.0" {
  run ./get_download_link.sh --product mysql --version 8.0
  is_zip
}

@test "check mysql 5.7 source" {
  run ./get_download_link.sh --product mysql --version 5.7 --source
  is_zip
}
@test "check mysql 8.0 source" {
  run ./get_download_link.sh --product mysql --version 8.0 --source
  is_zip
}

@test "check mariadb 10.9" {
  run ./get_download_link.sh --product mariadb --version 10.9
  is_zip
}
@test "check mariadb 10.10" {
  run ./get_download_link.sh --product mariadb --version 10.10
  is_zip
}

@test "check mariadb 10.9 source" {
  run ./get_download_link.sh --product mariadb --version 10.9 --source
  is_zip
}
@test "check mariadb 10.10 source" {
  run ./get_download_link.sh --product mariadb --version 10.10 --source
  is_zip
}

@test "check mongodb 3.4" {
  run ./get_download_link.sh --product mongodb --version 3.4
  is_zip
}
@test "check mongodb 3.6" {
  run ./get_download_link.sh --product mongodb --version 3.6
  is_zip
}
@test "check mongodb 4.0" {
  run ./get_download_link.sh --product mongodb --version 4.0
  is_zip
}
@test "check mongodb 4.2" {
  run ./get_download_link.sh --product mongodb --version 4.2
  is_zip
}

@test "check proxysql" {
  run ./get_download_link.sh --product proxysql
  is_zip
}

@test "check proxysql source" {
  run ./get_download_link.sh --product proxysql --source
  is_zip
}

@test "check vault" {
  run ./get_download_link.sh --product vault
  is_zip
}

@test "check postgresql" {
  run ./get_download_link.sh --product postgresql
  is_zip
}
