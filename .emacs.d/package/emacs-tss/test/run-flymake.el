(require 'tss)
(require 'el-expectations)
(require 'tenv)

(expectations
  (desc "run-flymake cmdstr")
  (expect t
    (tss--log-enable-logging)
    (tss--log-set-level 'trace)
    (tss--log-clear-log)
    (stub tss--active-p => t)
    (stub tss--exist-process => t)
    (stub tss--sync-server => t)
    (stub tss--get-process => nil)
    (stub process-send-string => nil)
    (tss-run-flymake)
    (with-current-buffer (get-buffer " *log4e-tss*")
      (goto-char (point-max))
      (when (search-backward "cmdstr" nil t)
        (string= (buffer-substring-no-properties (point) (point-at-eol))
                 (concat "cmdstr[showErrors] waitsec[2]")))))
  (desc "run-flymake do flymake")
  (expect '("Found error file[/tmp/fuga.ts] line[50] col[59] ... fugaga" "Found error file[/tmp/hoge.ts] line[16] col[57] ... hogege")
    (stub tss--active-p => t)
    (stub tss--exist-process => t)
    (stub tss--sync-server => t)
    (stub tss--get-process => nil)
    (stub tss--get-server-response => '[((text . "hogege") (end (col . 67) (line . 16)) (start (col . 57) (line . 16)) (file . "/tmp/hoge.ts")) ((text . "fugaga") (end (col . 69) (line . 50)) (start (col . 59) (line . 50)) (file . "/tmp/fuga.ts"))])
    (let* ((tfile (tenv-get-tmp-file "tss" "flymake.ts" nil t)))
      (with-current-buffer (find-file-noselect tfile)
        (erase-buffer)
        (insert "var s1;\n")
        (tss-setup-current-buffer)
        (save-buffer)
        (tss-run-flymake))
      (with-current-buffer (get-buffer " *log4e-tss*")
        (goto-char (point-max))
        (loop while (search-backward "Found error" nil t)
              collect (buffer-substring-no-properties (point) (point-at-eol))))))
  (desc "run-flymake do flymake for new format")
  (expect '("Found error file[/tmp/fuga.ts] line[50] col[59] ... fugaga" "Found error file[/tmp/hoge.ts] line[16] col[57] ... hogege")
    (tss--log-clear-log)
    (stub tss--active-p => t)
    (stub tss--exist-process => t)
    (stub tss--sync-server => t)
    (stub tss--get-process => nil)
    (stub tss--get-server-response => '[((text . "hogege") (end (character . 67) (line . 16)) (start (character . 57) (line . 16)) (file . "/tmp/hoge.ts")) ((text . "fugaga") (end (character . 69) (line . 50)) (start (character . 59) (line . 50)) (file . "/tmp/fuga.ts"))])
    (let* ((tfile (tenv-get-tmp-file "tss" "flymake.ts" nil t)))
      (with-current-buffer (find-file-noselect tfile)
        (erase-buffer)
        (insert "var s1;\n")
        (tss-setup-current-buffer)
        (save-buffer)
        (tss-run-flymake))
      (with-current-buffer (get-buffer " *log4e-tss*")
        (goto-char (point-max))
        (loop while (search-backward "Found error" nil t)
              collect (buffer-substring-no-properties (point) (point-at-eol))))))
  )
