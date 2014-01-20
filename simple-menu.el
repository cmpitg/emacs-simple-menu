;;; simple-menu.el --- Simple way to build menu

;; Copyright (C) 2014  cmpitg

;; Author: cmpitg <cmpitg@melec>
;; Keywords: extensions

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; simple-menu is a library to simplify how users could build menu.

;;; Code:


;;; Draft: How it should work

;; (defun set-menu-actions)

;; (make-submenu   [menu-bar tags]
;;                 :title "Tags"
;;                 :tooltip "Tag management")

;; (build-menu '([menu-bar tags] "Tags"
;;               ([create-tags]     "Build tags")
;;               ([view-tags]       "View tags"   "View tag in other-window")
;;               ([find-tag]        "Find tag"    "Find a tag")))

;; (build-menu-action '([menu-bar tags]
;;                      ([create-tags] '$create-tags)
;;                      ([view-tags]   nil)
;;                      ([find-tag]    'find-tag)))

;; (remove-menu [menu-bar tags])

;; (build-menu '([menu-bar tags] "Tags"
;;               ([create-tags]     "Build tags")
;;               ([view-tags]       "View tags"   "View tag in other-window")
;;               ([find-tag]        "Find tag"    "Find a tag")

;;               ([deeper-tag-menu] "Deeper"
;;                ([something] "Its title" "Its tooltip"))))

(provide 'simple-menu)
;;; simple-menu.el ends here
