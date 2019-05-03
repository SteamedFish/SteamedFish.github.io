;;; .dir-locals.el --- jekyll export settings -*- lexical-binding: t; -*-

((nil .
      ((eval . (progn
                 (unless (boundp 'org-publish-project-alist)
                   (setq org-publish-project-alist nil))

                 (add-to-list 'org-publish-project-alist
                              `("org-blog"
                                ;; Path to your org files.
                                :base-directory "~/work/SteamedFish.github.io/org/"
                                :base-extension "org"

                                ;; Path to your Jekyll project.
                                :publishing-directory "~/work/SteamedFish.github.io/"
                                :recursive t
                                :publishing-function org-html-publish-to-html
                                :language cn
                                :headline-levels 4
                                :html-extension "html"
                                :body-only t)) ;; Only export section between <body> </body>

                 (add-to-list 'org-publish-project-alist
                              `("org-blog-static"
                                :base-directory "~/work/SteamedFish.github.io/org/"
                                :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
                                :publishing-directory "~/work/SteamedFish.github.io/"
                                :recursive t
                                :publishing-function org-publish-attachment))

                 (add-to-list 'org-publish-project-alist
                              `("blog" :components ("org-blog" "org-blog-static"))))))))
