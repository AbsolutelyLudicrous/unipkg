#!/bin/bash
#https://stackoverflow.com/a/25180186 in thread https://stackoverflow.com/questions/22009364/is-there-a-try-catch-command-in-bash

function try(){
	[[ $- = *e* ]]; SAVED_OPT_E=$?
	set +e}
function throw(){
	exit $1}
function catch(){
	export ex_code=$?
	(( $SAVED_OPT_E )) && set +e
	return $ex_code}
function throwErrors(){
	set -e}
function ignoreErrors(){
	set +e}
