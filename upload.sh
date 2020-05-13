#!/bin/sh
# This is a comment!
echo uploading to s3...
gulp upload-content-types
echo uploading icons to s3
gulp upload-icons
#echo uploading viz