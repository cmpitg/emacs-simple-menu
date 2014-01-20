# simple-menu - yet another simple way to build menu in Emacs #

## Usage ##

There are 2 types of menu:

* Submenu: is the menu that contains other menus
* Menu item

To add or modify a submenu, use `make-submenu`:

```lisp
;; Creating submenu
(make-submenu [menu-bar tags] :title "Tags")

;; Creating submenu just in lisp mode
(make-submenu [menu-bar tags]
              :title "Tags"
              :mode lisp-mode-map)
```

* `[menu-bar tags]` is the *path* of your menu (it's actually a keybinding
  called fake key, but we don't need to worry about it for the purpose of
  adding/modifying/removing menu)

* `:title` is the submenu title

* `:mode` is the keymap in which the submenu is visible

To add or modify a menu item, use `make-menu-item`:

```lisp
(make-menu-item [menu-bar tags list-tags]
                :title "List tags"
                :action 'helm-etags-select)

;; Or
(make-menu-item [menu-bar tags list-tags]
                :title "List tags"
                :action 'helm-etags-select
                :tooltip "List tags with Helm")
```

Beside *menu path* and `title`, we also have:

* `:action` - the *interactive function* that is called my the menu is
  selected

* optional `:tooltip` - as it says, the menu tooltip.

## Technical details ##

TODO: write a blog post with short and concise explanation.

## License ##

This library is published under the terms of the GNU General Public License
v3.0 (GPLv3).  See [`COPYING`](/COPYING) for detailed information.

Copyright 2014 ©  Duong Nguyen ([@cmpitg](https://github.com/cmpitg/))
