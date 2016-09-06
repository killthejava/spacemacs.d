;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      auto-completion-private-snippets-directory "~/.spacemacs.d/snippets")

     ;; better-defaults
     emacs-lisp
     git
     markdown
     org
     html
     javascript
     react
     php
     python
     dockerfile
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(ag
                                      scss-mode
                                      nginx-mode)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  ;; No "redondear" indentación al ingresar < o > en evil-mode
  (setq-default evil-shift-round nil)

  ;; Incrementar tamaño de fuente por defecto
  (setq-default dotspacemacs-default-font '("Source Code Pro"
                                            :size 15
                                            :weight normal
                                            :width normal
                                            :powerline-scale 1.0))

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;;
  ;; CUSTOMIZACION
  ;;

  ;; Indentación en web-mode (y modos javascript)
  (setq-default custom-web-mode-indent 2)

  ;; Estilo de sintaxis en C
  (setq-default custom-c-mode-style "k&r")

  ;; Directorio org
  (setq-default custom-org-mode-dir "~/gitlab/org")

  ;; Directorio agenda (org)
  (setq-default custom-org-mode-agenda-dir (concat custom-org-mode-dir "/agenda"))

  ;; Archivo para org-capture
  (setq-default custom-org-mode-capture-file "notas.org")

  ;; Tecla para abrir agenda
  (setq-default custom-org-mode-agenda-key (kbd "<f12>"))

  ;; Directorio de generadores
  (setq-default custom-dotgen-dir "~/.spacemacs.d/dotgen")

  ;;
  ;; GENERAL
  ;;

  ;; Tab = 4 espacios
  (setq-default tab-width 4)

  ;; Mostrar número de líneas
  (global-linum-mode)

  ;; Setear Spacemacs como editor de mensajes de commit
  (global-git-commit-mode t)

  ;; Asociar dotfiles a modo javascript
  (add-to-list 'auto-mode-alist '("\.eslintrc" . js-mode))
  (add-to-list 'auto-mode-alist '("\.jsbeautifyrc" . js-mode))
  (add-to-list 'auto-mode-alist '("\.bowerrc" . js-mode))
  (add-to-list 'auto-mode-alist '("\.babelrc" . js-mode))
  (add-to-list 'auto-mode-alist '("\.jshintrc" . js-mode))

  ;; Asociar archivos .jsx a react-mode
  ;; (add-to-list 'auto-mode-alist '("\\.jsx\\'" . react-mode))

  ;; Mostrar ruta a archivo en marco de ventana
  ;; http://emacsredux.com/blog/2013/04/07/display-visited-files-path-in-the-frame-title/
  (setq frame-title-format
        '((:eval (if (buffer-file-name)
                     (abbreviate-file-name (buffer-file-name))
                   "%b"))))

  ;;
  ;; WEB
  ;;

  ;; Setear indentación en modos web
  (setq-default
   ;; js2-mode
   js2-basic-offset custom-web-mode-indent
   ;; jssc-indent-offset-mode
   jssc-indent-offset-basic-offset custom-web-mode-indent
   ;; json-mode
   js-indent-level custom-web-mode-indent
   ;; web-mode
   css-indent-offset custom-web-mode-indent
   web-mode-markup-indent-offset custom-web-mode-indent
   web-mode-css-indent-offset custom-web-mode-indent
   web-mode-code-indent-offset custom-web-mode-indent
   web-mode-attr-indent-offset custom-web-mode-indent
   ;; Indentación de elementos en línea (script, style)
   web-mode-script-padding custom-web-mode-indent
   web-mode-style-padding custom-web-mode-indent
   web-mode-block-padding custom-web-mode-indent)

  ;; Resalta la columna ocupada por el elemento bajo el cursor
  (setq-default web-mode-enable-current-column-highlight t)

  ;; No alinear argumentos/invocaciones/concatenaciones en scripts en línea
  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-ternary" . nil))
    )

  ;;
  ;; PYTHON
  ;;

  ;; Usar pytest en lugar de nose
  (setq-default dotspacemacs-configuration-layers
                '((python :variables python-test-runner 'pytest)))

  ;;
  ;; C
  ;;

  ;; Setear estilo de sintaxis
  (setq-default c-default-style custom-c-mode-style)

  ;;
  ;; ORG
  ;;

  ;; Necesitamos aplicar la configuración a través de un hook
  (with-eval-after-load 'org
    ;; Directorio org
    (setq org-directory custom-org-mode-dir)

    ;; Archivos para org-agenda
    (setq org-agenda-files (list custom-org-mode-agenda-dir))

    ;; Archivo para org-capture
    (setq org-default-notes-file custom-org-mode-capture-file)

    ;; Setear destinos por defecto para org-refile
    (setq org-refile-targets
          '((nil :maxlevel . 3)
            (org-agenda-files :maxlevel . 3)))

    ;; Exportar a Unicode
    (setq org-export-coding-system 'utf-8)

    )
  ;;
  ;; MARKDOWN
  ;;

  ;; Al generar una previa, transformar el documento a HTML5 (arregla encoding en navegadores)
  (eval-after-load "markdown-mode"
    '(defalias 'markdown-add-xhtml-header-and-footer 'as/markdown-add-xhtml-header-and-footer))

  (defun as/markdown-add-xhtml-header-and-footer (title)
    "Wrap XHTML header and footer with given TITLE around current buffer."
    (goto-char (point-min))
    (insert "<!DOCTYPE html5>\n"
            "<html>\n"
            "<head>\n<title>")
    (insert title)
    (insert "</title>\n")
    (insert "<meta charset=\"utf-8\" />\n")
    (when (> (length markdown-css-paths) 0)
      (insert (mapconcat 'markdown-stylesheet-link-string markdown-css-paths "\n")))
    (insert "\n</head>\n\n"
            "<body>\n\n")
    (goto-char (point-max))
    (insert "\n"
            "</body>\n"
            "</html>\n"))

  ;;
  ;; UTILIDADES
  ;;

  ;; Escapa el HTML seleccionado en un buffer
  (defun html-escape-region (start end)
    (interactive "r")
    (save-excursion
      (save-restriction
        (narrow-to-region start end)
        (goto-char (point-min))
        (replace-string "&" "&amp;")
        (goto-char (point-min))
        (replace-string "<" "&lt;")
        (goto-char (point-min))
        (replace-string ">" "&gt;")
        )))

  ;; Copia una línea entera, útil para copiar cosas desde el minibuffer
  ;; Fuente: https://www.emacswiki.org/emacs/CopyingWholeLines
  (defun copy-whole-line (arg)
    "Copy lines (as many as prefix argument) in the kill ring"
    (interactive "p")
    (kill-ring-save (line-beginning-position)
                    (line-beginning-position (+ 1 arg))))

  ;; Copia un enlace en modo org al portapapeles
  (defun copy-org-link (&optional complete-file link-location)
    (interactive "P")
    (cond
     ((org-in-regexp org-bracket-link-regexp 1)
      (kill-new (org-link-unescape (org-match-string-no-properties 1)))
      (message "Link copied"))
     ((message "No link at point"))))

  ;; Genera comentarios de una línea (//)
  ;; Por defecto, en web-mode los comentarios utilizan /* y */
  (defun javascript-comment-dwim (arg)
    (interactive "*P")
    (require 'newcomment)
    (let ((comment-start "//")
          (comment-end "")
          (comment-region-function 'comment-region-default)
          (uncomment-region-function 'uncomment-region-default)
          (comment-start-skip "// *"))
      (comment-dwim arg)
      ))

  (defun get-string-from-file (filePath)
    "Return filePath's file content."
    (with-temp-buffer
      (insert-file-contents filePath)
      (buffer-string)))

  ;;
  ;; DOTGEN
  ;;

  (defun dotgen-create-file (filename)
    "Generates a new dotfile for the speficied filename.
If the file already exists it only opens it. You need be within a project fo this to work."
    (interactive)
    (cond
     ((projectile-project-p)
      (let ((dest-path (concat (projectile-project-root) filename))
            (src-path (concat custom-dotgen-dir "/" filename))
            )
        (if (projectile-verify-file filename)
            (progn
              (find-file-other-window dest-path)
              (message "File %s already exists" dest-path)
              )
          (write-region (get-string-from-file src-path) nil dest-path)
          (find-file-other-window dest-path)
          (message "File %s created" dest-path)
          )
        ))
     ((message "You don't seem to be within a project"))
     ))

  (defun dotgen-eslintrc ()
    (interactive)
    (dotgen-create-file ".eslintrc"))

  (defun dotgen-eslintignore ()
    (interactive)
    (dotgen-create-file ".eslintignore"))

  (defun dotgen-jsbeautifyrc ()
    (interactive)
    (dotgen-create-file ".jsbeautifyrc"))

  (defun dotgen-bowerrc ()
    (interactive)
    (dotgen-create-file ".bowerrc"))

  (defun dotgen-babelrc ()
    (interactive)
    (dotgen-create-file ".babelrc"))

  (defun dotgen-jshintrc ()
    (interactive)
    (dotgen-create-file ".jshintrc"))

  (defun dotgen-jshintignore ()
    (interactive)
    (dotgen-create-file ".jshintignore"))

  ;;
  ;; SPACEBADGE
  ;;

  (defun spacebadge-org-mode ()
    "Inserts a Spacemacs badge in org-mode"
    (interactive)
    (insert "[[https://github.com/syl20bnr/spacemacs][file:https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg]]
"))

  (defun spacebadge-markdown-mode ()
    "Inserts a Spacemacs badge in markdown-mode"
    (interactive)
    (insert "[![Built with Spacemacs](https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg)](http://github.com/syl20bnr/spacemacs)
"))

  (defun spacebadge-web-mode ()
    "Inserts a Spacemacs badge in web-mode"
    (interactive)
    (insert "<a href=\"https://github.com/syl20bnr/spacemacs\"><img src=\"https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg\" /></a>"
            ))

  ;;
  ;; KEY BINDINGS
  ;;

  ;; Asociar C-c C-K a copy-whole-line
  (global-set-key "\C-c\C-K" 'copy-whole-line)

  ;; Atajos para incrementar/decrementar tamaño de fuente
  (define-key global-map (kbd "C-+") 'text-scale-increase)
  (define-key global-map (kbd "C--") 'text-scale-decrease)

  ;; Asociar SPC o s a just-one-space
  (spacemacs/set-leader-keys "os" 'just-one-space)

  ;; org: Asociar SPC o c a org-capture
  (spacemacs/set-leader-keys "oc" 'org-capture)

  ;; org: Abrir archivo de notas con F12
  (global-set-key custom-org-mode-agenda-key
                  (lambda () (interactive) (find-file (concat custom-org-mode-dir "/" custom-org-mode-capture-file))))

  ;; org: Asociar SPC o o a copy-org-link
  (spacemacs/set-leader-keys "oo" 'copy-org-link)

  ;; org: Asociar SPC o C a org-cut-subtree
  (spacemacs/set-leader-keys "oC" 'org-cut-subtree)

  ;; markdown: Generar tabla de contenidos con SPC o t
  (spacemacs/set-leader-keys "ot" 'markdown-toc-generate-toc)

  ;; ag: Invocar ag-project al hacer SPC o p
  (spacemacs/set-leader-keys "op" 'ag-project)

  ;; ag: Eliminar buffers con búsquedas realizadas con ag
  (spacemacs/set-leader-keys "ok" 'ag-kill-buffers)

  ;; Escapar html con SPC o h
  (spacemacs/set-leader-keys "oh" 'html-escape-region)

  ;; Asignar a C-; lo mismo que M-;
  (global-set-key (kbd "C-;") 'comment-dwim)

  ;; Asignar C-; para comentarios de una línea
  ;; Usar M-; para comentar HTML
  (add-hook
   'web-mode-hook
   (lambda ()
     (define-key web-mode-map (kbd "C-;") 'javascript-comment-dwim)))

  ;; Habilitar comentarios de una línea también en Sass
  (add-hook
   'scss-mode-hook
   (lambda ()
     (define-key scss-mode-map (kbd "C-;") 'javascript-comment-dwim)))

  ;; Generar funciones/atajos para dotfiles javascript
  (spacemacs/declare-prefix "od" "dotgen")
  (spacemacs/set-leader-keys "ode" 'dotgen-eslintrc)
  (spacemacs/set-leader-keys "odi" 'dotgen-eslintignore)
  (spacemacs/set-leader-keys "odj" 'dotgen-jsbeautifyrc)
  (spacemacs/set-leader-keys "odb" 'dotgen-babelrc)
  (spacemacs/set-leader-keys "odw" 'dotgen-bowerrc)
  (spacemacs/set-leader-keys "odh" 'dotgen-jshintrc)
  (spacemacs/set-leader-keys "odI" 'dotgen-jshintignore)

  ;; Generar atajos para Spacemacs badge
  (spacemacs/declare-prefix "ob" "spacebadge")
  (spacemacs/set-leader-keys "obo" 'spacebadge-org-mode)
  (spacemacs/set-leader-keys "obm" 'spacebadge-markdown-mode)
  (spacemacs/set-leader-keys "obw" 'spacebadge-web-mode)

    )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
