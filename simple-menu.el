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

(defun* make-menu-item (path &key
                             title
                             action
                             (mode global-map)
                             tooltip
                             (after t))
  (if tooltip
    (define-key-after mode path (cons title (cons tooltip action)) after)
    (define-key-after mode path (cons title action)) after))

(defun* make-submenu (path &key
                           title
                           (mode global-map)
                           purpose
                           tooltip
                           (after t))
  (let ((purpose (if purpose
                   purpose
                   (symbol-name (gensym)))))
    (if tooltip
      (define-key-after mode path (cons title (cons tooltip
                                                    (make-sparse-keymap purpose)))
        after)
      (define-key-after mode path (cons title (make-sparse-keymap purpose))
        after))))

(defun* remove-menu (path &key (mode global-map))
  (define-key-after mode path nil))


;;; Draft: How it should work

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
