#!/bin/bash

hugo && rsync -avP public/ docs/ --delete
