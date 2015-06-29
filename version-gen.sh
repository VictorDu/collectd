#!/bin/sh

DEFAULT_VERSION="5.5.0.sfx"

VERSION="`git describe 2> /dev/null | grep collectd | sed -e 's/^collectd-//'`"

if test -z "$VERSION"; then
	VERSION="$DEFAULT_VERSION"
fi

	VERSION="$DEFAULT_VERSION"
VERSION="`echo \"$VERSION\" | sed -e 's/-/./g'`"

printf "%s" "$VERSION"
