#!/bin/bash

if id -u "{{ user_name }}" >/dev/null 2>&1; then
    echo 'user exists'
else
    echo 'user missing - > creating'
    useradd -p {{ user_passwd }} {{ user_name }}
fi
