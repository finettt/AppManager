# Translating AppManager

## How to Contribute Translations

1. **Edit an existing translation**: Find the relevant `.po` file for your language and submit a PR with your improvements.
2. **Add a new language**: Use `app-manager.pot` as a template, save it as `po/xx.po` (where `xx` is your language code), translate the strings, and create a PR.

## Translation Status

| Language | Code | Status |
| -------- | ---- | ------ |
| Arabic | ar | 94.7% (252/266) |
| German | de | 94.7% (252/266) |
| Greek | el | 94.7% (252/266) |
| Spanish | es | 94.7% (252/266) |
| Estonian | et | 94.7% (252/266) |
| Finnish | fi | 94.7% (252/266) |
| French | fr | 94.7% (252/266) |
| Italian | it | 94.7% (252/266) |
| Japanese | ja | 94.7% (252/266) |
| Kazakh | kk | 94.7% (252/266) |
| Korean | ko | 94.7% (252/266) |
| Lithuanian | lt | 94.7% (252/266) |
| Latvian | lv | 94.7% (252/266) |
| Norwegian Bokmål | nb | 94.7% (252/266) |
| Dutch | nl | 94.7% (252/266) |
| Polish | pl | 94.7% (252/266) |
| Portuguese (Brazil) | pt_BR | 94.7% (252/266) |
| Swedish | sv | 94.7% (252/266) |
| Ukrainian | uk | 94.7% (252/266) |
| Vietnamese | vi | 94.7% (252/266) |
| Chinese (Simplified) | zh_CN | 94.7% (252/266) |

## Note

> Some translations are machine-generated and may contain mistakes. Native speakers are welcome to review and improve them!

## Testing Translations Locally

After building with meson, translations are compiled automatically. To test:

```bash
meson setup build --prefix=$HOME/.local
meson compile -C build
meson install -C build
```

Then run the app with a specific locale:

```bash
LANGUAGE=de app-manager
```

## Further Reading

- [GNU gettext Manual](https://www.gnu.org/software/gettext/manual/gettext.html)
- [Vala i18n documentation](https://wiki.gnome.org/Projects/Vala/TranslationSample)
