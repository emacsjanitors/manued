;;
;;
;; Copyright (C) 2000 Hitoshi Yamauchi
;; @see font-lock-keywords
;;
;; ����� foo �� bar �� font lock �򤫤��뤳�Ȥ��Ǥ���
;;
(progn
  (setq my-font-lock-keywords '(("foo\\|bar" 0 font-lock-comment-face t)))
  (make-local-variable 'font-lock-keywords)
  (setq font-lock-keywords
	(append font-lock-keywords
		my-font-lock-keywords)))

(progn
  (setq font-lock-keywords
        (append font-lock-keywords
                (list '("\\(;\\|hahaha\\)" (0 red)))))
  (font-lock-unfontify-buffer)
  (font-lock-fontify-buffer))


;;
;; ������ɤ��ΤǤ�?
;;
(defun matcher (dummy)
  (message "here is macher")
  nil)
(progn
  (setq font-lock-keywords nil)
  (setq font-lock-keywords
        (append font-lock-keywords
                (list
		 (list "\\[.*\\]"
		       (list 'matcher 1 font-lock-comment-face)))))
  (font-lock-unfontify-buffer)
  (font-lock-fontify-buffer))


[helloshshsh]

����������ɼ�ʬ�Ǥ�ä�����®����

�ؿ���Ƥ֤ΤϤɤ����ʡ�

���뤤��font-lock��fillin property�����ˤ���Τ��ɤ��褦�ʵ������롥



