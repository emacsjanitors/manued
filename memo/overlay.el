;;
;; Copyright (C) 2000 Hitoshi Yamauchi
;;
;;	major mode �˱ƶ���Ϳ���ʤ���ˡ�Ȥ��� overlay ������褦������
;;      ����Ϥ��ʤ���ɤ������������ξ塤xemacs�ǤϻȤ��ʤ���
;;
(progn
  (make-face 'a-face)
  (set-face-foreground 'a-face "red")
  (goto-char (point-min))
  (search-forward "Here will be overlaied 2 seconds")
  ;; overlay���������
  (setq my-overlay (make-overlay (match-beginning 0) (match-end 0)))
  ;; overlay������face��put����
  (overlay-put my-overlay 'face 'a-face)
  (sit-for 2)
  ;; overlay��ä�
  (delete-overlay my-overlay))


