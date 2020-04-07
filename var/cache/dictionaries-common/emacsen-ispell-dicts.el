;;; This file is part of the dictionaries-common package.
;;; It has been automatically generated.
;;; DO NOT EDIT!

;; Adding hunspell dicts

(add-to-list 'debian-hunspell-only-dictionary-alist
  '("russian"
     "[ĞĞ‘Ğ’Ğ“Ğ”Ğ•ĞĞ–Ğ—Ğ˜Ğ™ĞšĞ›ĞœĞĞĞŸĞ Ğ¡Ğ¢Ğ£Ğ¤Ğ¥Ğ¦Ğ§Ğ¨Ğ©Ğ¬Ğ«ĞªĞ­Ğ®Ğ¯Ğ°Ğ±Ğ²Ğ³Ğ´ĞµÑ‘Ğ¶Ğ·Ğ¸Ğ¹ĞºĞ»Ğ¼Ğ½Ğ¾Ğ¿Ñ€ÑÑ‚ÑƒÑ„Ñ…Ñ†Ñ‡ÑˆÑ‰ÑŒÑ‹ÑŠÑÑÑ]"
     "[^ĞĞ‘Ğ’Ğ“Ğ”Ğ•ĞĞ–Ğ—Ğ˜Ğ™ĞšĞ›ĞœĞĞĞŸĞ Ğ¡Ğ¢Ğ£Ğ¤Ğ¥Ğ¦Ğ§Ğ¨Ğ©Ğ¬Ğ«ĞªĞ­Ğ®Ğ¯Ğ°Ğ±Ğ²Ğ³Ğ´ĞµÑ‘Ğ¶Ğ·Ğ¸Ğ¹ĞºĞ»Ğ¼Ğ½Ğ¾Ğ¿Ñ€ÑÑ‚ÑƒÑ„Ñ…Ñ†Ñ‡ÑˆÑ‰ÑŒÑ‹ÑŠÑÑÑ]"
     "^$"
     nil
     ("-d" "ru_RU")
     nil
     utf-8))
(add-to-list 'debian-hunspell-only-dictionary-alist
  '("portugues"
     "[a-zA-Z]"
     "[^a-zA-Z]"
     "[']"
     nil
     ("-d" "pt_PT")
     nil
     iso-8859-1))
(add-to-list 'debian-hunspell-only-dictionary-alist
  '("polish"
     "[A-Za-z\241\243\246\254\257\261\263\266\274\277\306\312\321\323\346\352\361\363]"
     "[^A-Za-z\241\243\246\254\257\261\263\266\274\277\306\312\321\323\346\352\361\363]"
     "[']"
     nil
     ("-d" "pl_PL")
     nil
     nil))
(add-to-list 'debian-hunspell-only-dictionary-alist
  '("latvian"
     "[aâbcèdeçfgìhiîjkílïmnòoprsğtuûvzşAÂBCÈDEÇFGÌHIÎJKÍLÏMNÒOPRSĞTUÛVZŞ]"
     "[^aâbcèdeçfgìhiîjkílïmnòoprsğtuûvzşAÂBCÈDEÇFGÌHIÎJKÍLÏMNÒOPRSĞTUÛVZŞ]"
     "[-]"
     t
     ("-d" "lv_LV")
     nil
     iso-8859-13))
(add-to-list 'debian-hunspell-only-dictionary-alist
  '("korean"
     "[\200\201\202\203\204\205\206\207\210\211\212\213\214\215\216\217\220\221\222\223\224\225\226\227\230\231\232\233\234\235\236\237\240\241\242\243\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\352\353\354\355]"
     "[^\200\201\202\203\204\205\206\207\210\211\212\213\214\215\216\217\220\221\222\223\224\225\226\227\230\231\232\233\234\235\236\237\240\241\242\243\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\352\353\354\355]"
     "[']"
     nil
     ("-d" "ko_KR")
     nil
     utf-8))
(add-to-list 'debian-hunspell-only-dictionary-alist
  '("catala8"
     "[A-ZÀÁÃÈÉËÍÏÎÑÒÓÖÚÜÇa-zàáãèéëíïîñòóöúüç]"
     "[^A-ZÀÁÃÈÉËÍÏÎÑÒÓÖÚÜÇa-zàáãèéëíïîñòóöúüç]"
     "[---'.·]"
     t
     ("-B" "-d" "ca_ES")
     nil
     iso-8859-1))
(add-to-list 'debian-hunspell-only-dictionary-alist
  '("catala-valencia"
     "[A-ZÀÁÃÈÉËÍÏÎÑÒÓÖÚÜÇa-zàáãèéëíïîñòóöúüç]"
     "[^A-ZÀÁÃÈÉËÍÏÎÑÒÓÖÚÜÇa-zàáãèéëíïîñòóöúüç]"
     "[---'.·]"
     t
     ("-B" "-d" "ca_ES-valencia")
     nil
     iso-8859-1))
(add-to-list 'debian-hunspell-only-dictionary-alist
  '("castellano8"
     "[a-z\340\341\350\351\354\355\362\363\371\372\374\347\361A-Z\300\301\310\311\314\315\322\323\331\332\334\307\321]"
     "[^a-z\340\341\350\351\354\355\362\363\371\372\374\347\361A-Z\300\301\310\311\314\315\322\323\331\332\334\307\321]"
     "[']"
     nil
     ("-B" "-d" "es")
     nil
     iso-8859-1))
(add-to-list 'debian-hunspell-only-dictionary-alist
  '("brasileiro"
     "[a-zA-Z]"
     "[^a-zA-Z]"
     "[---']"
     nil
     ("-d" "pt_BR")
     nil
     iso-8859-1))



;; No emacsen-aspell-equivs entries were found


;; An alist that will try to map hunspell locales to emacsen names

(setq debian-hunspell-equivs-alist '(
     ("ca" "catala8")
     ("ca@valencia" "catala-valencia")
     ("ca_ES@valencia" "catala-valencia")
     ("es" "castellano8")
     ("es_ES" "castellano8")
     ("ko" "korean")
     ("ko_KR" "korean")
     ("lv" "latvian")
     ("lv_LV" "latvian")
     ("pl" "polish")
     ("pl_PL" "polish")
     ("pt" "brasileiro")
     ("pt_BR" "brasileiro")
     ("pt_PT" "portugues")
))

;; Get default value for debian-hunspell-dictionary. Will be used if
;; spellchecker is hunspell and ispell-local-dictionary is not set.
;; We need to get it here, after debian-hunspell-equivs-alist is loaded

(setq debian-hunspell-dictionary (debian-ispell-get-hunspell-default))

