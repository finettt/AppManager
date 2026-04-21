{ lib
, stdenv
, fetchFromGitHub
, meson
, ninja
, pkg-config
, vala
, cmake
, desktop-file-utils
, wrapGAppsHook4
, gobject-introspection
, gtk4
, libadwaita
, glib
, json-glib
, libgee
, libsoup_3
, zstd
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "app-manager";
  version = "3.5.2";

  src = fetchFromGitHub {
    owner = "kem-a";
    repo = "AppManager";
    rev = "410888a592bc0fc91eaa3c15b47eb5c0cbfd6321";
    hash = "sha256-tC4kQLjlU/TzejFDAPn3WuaVV6LoFiGh4sSaEbibxFA=";
  };

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    vala
    cmake
    desktop-file-utils
    gobject-introspection
    wrapGAppsHook4
  ];

  buildInputs = [
    gtk4
    libadwaita
    glib
    json-glib
    libgee
    libsoup_3
    zstd
  ];

  mesonFlags = [
    "-Dbundle_dwarfs=false"
    "-Dbundle_zsync=false"
    "-Dbundle_unsquashfs=false"
  ];

  meta = {
    description = "MacOS-style AppImage installer and manager for Linux";
    homepage = "https://github.com/kem-a/AppManager";
    license = lib.licenses.gpl3Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
})
