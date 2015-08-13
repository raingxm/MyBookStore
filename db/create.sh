#!/usr/bin/env bash
function createdb() {
  DATABASE=$1
  mysql -uroot -phelloworld -e "drop database ${DATABASE}"
  mysql -uroot -phelloworld -e "create database ${DATABASE}"
}

createdb "book_store"