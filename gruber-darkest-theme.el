;;; gruber-darkest-theme.el --- Gruber Darker color theme for Emacs 24.

;; Copyright (C) 2024 Julian Limburg 
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Julian Limburg
;; URL: http://github.com/nailuj05/gruber-darkest-theme

;; Author: Alexey Kutepov <reximkut@gmail.com>
;; URL: http://github.com/rexim/gruber-darkest-theme
;; Version: 0.7

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; Gruber Darker color theme for Emacs by Jason Blevins. A darker
;; variant of the Gruber Dark theme for BBEdit by John Gruber. Adapted
;; for deftheme and extended by Alexey Kutepov a.k.a. rexim.
;; Adapted and extended by Julian Limburg


(deftheme gruber-darkest
  "Gruber Darkest color theme for Emacs")

;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((gruber-darkest-fg        "#e4e4ef")
      (gruber-darkest-fg+1      "#f4f4ff")
      (gruber-darkest-fg+2      "#f5f5f5")
      (gruber-darkest-white     "#ffffff")
      (gruber-darkest-black     "#000000")
      (gruber-darkest-bg-1      "#050912")
      (gruber-darkest-bg        "#131318")
      (gruber-darkest-bg+1      "#202026")
      (gruber-darkest-bg+2      "#303040")
      (gruber-darkest-bg+3      "#404040")
      (gruber-darkest-bg+4      "#505050")
      (gruber-darkest-bg+5      "#606060")
      (gruber-darkest-red-1     "#c73c3f")
      (gruber-darkest-red       "#f43841")
      (gruber-darkest-red+1     "#ff4f58")
      (gruber-darkest-string    "#44ccff")
      (gruber-darkest-main      "#d8952c")
      (gruber-darkest-brown     "#757575")
      (gruber-darkest-quartz    "#95a99f")
      (gruber-darkest-niagara-2 "#303540")
      (gruber-darkest-niagara-1 "#565f73")
      (gruber-darkest-niagara   "#c8851c")
      (gruber-darkest-wisteria  "#a8650c")
      )
  (custom-theme-set-variables
   'gruber-darkest
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'gruber-darkest

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,gruber-darkest-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,gruber-darkest-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,gruber-darkest-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground gruber-darkest-main
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,gruber-darkest-string))))
   `(agda2-highlight-number-face ((t (:foreground ,gruber-darkest-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,gruber-darkest-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,gruber-darkest-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,gruber-darkest-string))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground gruber-darkest-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-darkest-niagara))))
   `(font-latex-string-face ((t (:foreground ,gruber-darkest-string))))
   `(font-latex-warning-face ((t (:foreground ,gruber-darkest-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background gruber-darkest-bg-1
                       :foreground gruber-darkest-bg+2))))
   `(cursor ((t (:background ,gruber-darkest-main))))
   `(default ((t ,(list :foreground gruber-darkest-fg
                        :background gruber-darkest-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground gruber-darkest-bg+2))))
   `(vertical-border ((t ,(list :foreground gruber-darkest-bg+2))))
   `(link ((t (:foreground ,gruber-darkest-niagara :underline t))))
   `(link-visited ((t (:foreground ,gruber-darkest-wisteria :underline t))))
   `(match ((t (:background ,gruber-darkest-bg+4))))
   `(shadow ((t (:foreground ,gruber-darkest-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,gruber-darkest-niagara))))
   `(region ((t (:background ,gruber-darkest-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background gruber-darkest-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground gruber-darkest-black
                                    :background gruber-darkest-red))))
   `(tooltip ((t ,(list :background gruber-darkest-bg+4
                        :foreground gruber-darkest-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,gruber-darkest-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground gruber-darkest-string
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground gruber-darkest-brown
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,gruber-darkest-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-darkest-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-darkest-string
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,gruber-darkest-string))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground gruber-darkest-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground gruber-darkest-string
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-darkest-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground gruber-darkest-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,gruber-darkest-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,gruber-darkest-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,gruber-darkest-main))))
   `(egg-branch-mono ((t (:foreground ,gruber-darkest-main))))
   `(egg-diff-add ((t (:foreground ,gruber-darkest-string))))
   `(egg-diff-del ((t (:foreground ,gruber-darkest-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-darkest-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,gruber-darkest-main))))
   `(egg-help-header-2 ((t (:foreground ,gruber-darkest-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,gruber-darkest-fg)))))
   `(egg-reflog-mono ((t (:foreground ,gruber-darkest-niagara-1))))
   `(egg-section-title ((t (:foreground ,gruber-darkest-main))))
   `(egg-text-base ((t (:foreground ,gruber-darkest-fg))))
   `(egg-term ((t (:foreground ,gruber-darkest-main))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,gruber-darkest-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,gruber-darkest-string))))
   `(erc-input-face ((t (:foreground ,gruber-darkest-red+1))))
   `(erc-my-nick-face ((t (:foreground ,gruber-darkest-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,gruber-darkest-quartz))))
   `(eshell-ls-directory ((t (:foreground ,gruber-darkest-niagara))))
   `(eshell-ls-executable ((t (:foreground ,gruber-darkest-string))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-darkest-main))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,gruber-darkest-main))))
   `(font-lock-comment-face ((t (:foreground ,gruber-darkest-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-darkest-brown))))
   `(font-lock-constant-face ((t (:foreground ,gruber-darkest-quartz))))
   `(font-lock-doc-face ((t (:foreground ,gruber-darkest-string))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-darkest-string))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-darkest-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-darkest-main :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-darkest-quartz))))
   `(font-lock-reference-face ((t (:foreground ,gruber-darkest-quartz))))
   `(font-lock-string-face ((t (:foreground ,gruber-darkest-string))))
   `(font-lock-type-face ((t (:foreground ,gruber-darkest-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-darkest-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,gruber-darkest-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,gruber-darkest-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-main)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-darkest-main :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-string)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,gruber-darkest-string :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-red) :inherit unspecified))
      (t (:foreground ,gruber-darkest-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darkest-main) :inherit unspecified))
      (t (:foreground ,gruber-darkest-main :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-darkest-bg+2
                                      :foreground gruber-darkest-main
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground gruber-darkest-niagara
                                  :background gruber-darkest-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,gruber-darkest-string))))
   `(helm-ff-file ((t (:foreground ,gruber-darkest-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground gruber-darkest-bg
                                        :background gruber-darkest-red))))
   `(helm-ff-symlink ((t (:foreground ,gruber-darkest-main :bold t))))
   `(helm-selection-line ((t (:background ,gruber-darkest-bg+1))))
   `(helm-selection ((t (:background ,gruber-darkest-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground gruber-darkest-main
                                   :background gruber-darkest-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,gruber-darkest-main :bold nil))))
   `(ido-only-match ((t (:foreground ,gruber-darkest-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,gruber-darkest-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,gruber-darkest-niagara))))
   `(info-visited ((t (:foreground ,gruber-darkest-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground gruber-darkest-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,gruber-darkest-main))))
   `(jabber-chat-prompt-system ((t (:foreground ,gruber-darkest-string))))
   `(jabber-rare-time-face ((t (:foreground ,gruber-darkest-string))))
   `(jabber-roster-user-online ((t (:foreground ,gruber-darkest-string))))
   `(jabber-activity-face ((t (:foreground ,gruber-darkest-red))))
   `(jabber-activity-personal-face ((t (:foreground ,gruber-darkest-main :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,gruber-darkest-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background gruber-darkest-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,gruber-darkest-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,gruber-darkest-main))))

   ;; Linum
   `(linum ((t `(list :foreground gruber-darkest-quartz
                      :background gruber-darkest-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,gruber-darkest-niagara))))
   `(magit-diff-hunk-header ((t (:background ,gruber-darkest-bg+2))))
   `(magit-diff-file-header ((t (:background ,gruber-darkest-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,gruber-darkest-red+1))))
   `(magit-log-author ((t (:foreground ,gruber-darkest-brown))))
   `(magit-log-head-label-remote ((t ,(list :foreground gruber-darkest-string
                                            :background gruber-darkest-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground gruber-darkest-niagara
                                           :background gruber-darkest-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground gruber-darkest-main
                                          :background gruber-darkest-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground gruber-darkest-fg
                                          :background gruber-darkest-bg+1))))
   `(magit-item-highlight ((t (:background ,gruber-darkest-bg+1))))
   `(magit-tag ((t ,(list :foreground gruber-darkest-main
                          :background gruber-darkest-bg))))
   `(magit-blame-heading ((t ,(list :background gruber-darkest-bg+1
                                    :foreground gruber-darkest-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,gruber-darkest-string))))

   ;; Mode Line
   `(mode-line ((t ,(list :background gruber-darkest-bg+1
                          :foreground gruber-darkest-white))))
   `(mode-line-buffer-id ((t ,(list :background gruber-darkest-bg+1
                                    :foreground gruber-darkest-white))))
   `(mode-line-inactive ((t ,(list :background gruber-darkest-bg+1
                                   :foreground gruber-darkest-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,gruber-darkest-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,gruber-darkest-niagara))))
   `(org-column ((t (:background ,gruber-darkest-bg-1))))
   `(org-column-title ((t (:background ,gruber-darkest-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,gruber-darkest-string))))
   `(org-todo ((t (:foreground ,gruber-darkest-red-1))))
   `(org-upcoming-deadline ((t (:foreground ,gruber-darkest-main))))

   ;; Search
   `(isearch ((t ,(list :foreground gruber-darkest-black
                        :background gruber-darkest-fg+2))))
   `(isearch-fail ((t ,(list :foreground gruber-darkest-black
                             :background gruber-darkest-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground gruber-darkest-fg+1
                                       :background gruber-darkest-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,gruber-darkest-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,gruber-darkest-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,gruber-darkest-red-1))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,gruber-darkest-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-darkest-main))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground gruber-darkest-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,gruber-darkest-fg))))
   `(speedbar-highlight-face ((t (:background ,gruber-darkest-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,gruber-darkest-red))))
   `(speedbar-tag-face ((t (:foreground ,gruber-darkest-main))))

   ;; Which Function
   `(which-func ((t (:foreground ,gruber-darkest-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background gruber-darkest-bg
                                 :foreground gruber-darkest-bg+4))))
   `(whitespace-tab ((t ,(list :background gruber-darkest-bg
                               :foreground gruber-darkest-bg+4))))
   `(whitespace-hspace ((t ,(list :background gruber-darkest-bg
                                  :foreground gruber-darkest-bg+4))))
   `(whitespace-line ((t ,(list :background gruber-darkest-bg+4
                                :foreground gruber-darkest-red+1))))
   `(whitespace-newline ((t ,(list :background gruber-darkest-bg
                                   :foreground gruber-darkest-bg+4))))
   `(whitespace-trailing ((t ,(list :background gruber-darkest-red
                                    :foreground gruber-darkest-red))))
   `(whitespace-empty ((t ,(list :background gruber-darkest-main
                                 :foreground gruber-darkest-main))))
   `(whitespace-indentation ((t ,(list :background gruber-darkest-bg
                                       :foreground gruber-darkest-bg+4))))
   `(whitespace-space-after-tab ((t ,(list :background gruber-darkest-bg
                                           :foreground gruber-darkest-bg+4))))
   `(whitespace-space-before-tab ((t ,(list :background gruber-darkest-brown
                                            :foreground gruber-darkest-brown))))

   ;; tab-bar
   `(tab-bar ((t (:background ,gruber-darkest-bg+1 :foreground ,gruber-darkest-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,gruber-darkest-main :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,gruber-darkest-bg+3 :background ,gruber-darkest-bg+4))))
   `(term-color-red ((t (:foreground ,gruber-darkest-red-1 :background ,gruber-darkest-red-1))))
   `(term-color-comment ((t (:foreground ,gruber-darkest-string :background ,gruber-darkest-string))))
   `(term-color-blue ((t (:foreground ,gruber-darkest-niagara :background ,gruber-darkest-niagara))))
   `(term-color-main ((t (:foreground ,gruber-darkest-main :background ,gruber-darkest-main))))
   `(term-color-magenta ((t (:foreground ,gruber-darkest-wisteria :background ,gruber-darkest-wisteria))))
   `(term-color-cyan ((t (:foreground ,gruber-darkest-quartz :background ,gruber-darkest-quartz))))
   `(term-color-white ((t (:foreground ,gruber-darkest-fg :background ,gruber-darkest-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,gruber-darkest-fg :background ,gruber-darkest-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,gruber-darkest-brown :background ,gruber-darkest-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,gruber-darkest-brown :background ,gruber-darkest-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,gruber-darkest-fg :background ,gruber-darkest-bg-1))))
   `(company-tooltip-mouse ((t (:background ,gruber-darkest-bg-1))))
   `(company-tooltip-common ((t (:foreground ,gruber-darkest-string))))
   `(company-tooltip-common-selection ((t (:foreground ,gruber-darkest-string))))
   `(company-scrollbar-fg ((t (:background ,gruber-darkest-bg-1))))
   `(company-scrollbar-bg ((t (:background ,gruber-darkest-bg+2))))
   `(company-preview ((t (:background ,gruber-darkest-bg+3))))
   `(company-preview-common ((t (:foreground ,gruber-darkest-bg+3 :background ,gruber-darkest-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,gruber-darkest-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,gruber-darkest-main))))
   `(orderless-match-face-1 ((t (:foreground ,gruber-darkest-string))))
   `(orderless-match-face-2 ((t (:foreground ,gruber-darkest-brown))))
   `(orderless-match-face-3 ((t (:foreground ,gruber-darkest-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'gruber-darkest)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; gruber-darkest-theme.el ends here.
