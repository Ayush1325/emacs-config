(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))

(require 'package)
(setq package-enable-at-startup nil)
(setq org-roam-v2-ack t)
(setq package-native-compile t)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq custom-file "~/.config/emacs/.emacs-custom.el")
(load custom-file)

(let ((cmake-path "~/.config/emacs/custom_modes/cmake-mode.el"))
  (load cmake-path)
  (require 'cmake-mode))

(org-babel-load-file (expand-file-name "~/.config/emacs/config.org"))
