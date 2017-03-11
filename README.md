# ECM for org-mobile-push breaking existing org-agenda

To repro:

```bash
mv ~/.emacs.d ~/.emacs.d.old
git clone git@github.com:aaronjensen/org-mobile-push-breaks-org-agenda-ecm.git ~/.emacs.d.old
emacs
```

In emacs:

1. `M-x org-agenda a`
2. `M-x org-mobile-push`
3. `C-n` to TODO and hit `t` to mark as done
