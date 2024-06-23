#!/bin/sh
if [ "$(id -u)" != '0' ]; then
    echo "$0: Must be run as root." 1>&2
    exit 1
fi

cd "${0%/*}" || exit

mkdir -p /usr/share/aurorae/themes && for f in Aurorae/*; do
    cp -r "$f" /usr/share/aurorae/themes && chmod 755 "/usr/share/aurorae/themes/$(basename "$f")"
done

mkdir -p /usr/share/color-schemes && for f in Color-schemes/*; do
    install -m 644 "$f" /usr/share/color-schemes
done

mkdir -p /usr/share/icons && for f in Cursors/*; do
    cp -r "$f" /usr/share/icons && chmod 755 "/usr/share/icons/$(basename "$f")"
done

mkdir -p /usr/share/themes && for f in GTK/*; do
    cp -r "$f" /usr/share/themes && chmod 755 "/usr/share/themes/$(basename "$f")"
done

mkdir -p /usr/share/icons && for f in Icons/*; do
    cp -r "$f" /usr/share/icons && chmod 755 "/usr/share/icons/$(basename "$f")"
done

mkdir -p /usr/share/Kvantum && for f in Kvantum/*; do
    cp -r "$f" /usr/share/Kvantum && chmod 755 "/usr/share/Kvantum/$(basename "$f")"
done
