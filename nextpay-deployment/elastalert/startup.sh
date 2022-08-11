#!/bin/bash

elastalert-create-index --config config.yml

elastalert --verbose --config config.yml