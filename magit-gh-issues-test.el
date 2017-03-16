(require 'ert)
(require 'magit-gh-issues)

;; Tests
(ert-deftest test-magit-gh-issues-parse-url-git-at ()
  (should (equal '("creichert" . "magit-gh-issues")
                 (magit-gh-issues-parse-url "git@github.com:creichert/magit-gh-issues.git"))))

(ert-deftest test-magit-gh-issues-parse-url-https ()
  (should (equal '("creichert" . "magit-gh-issues")
                 (magit-gh-issues-parse-url "https://github.com/creichert/magit-gh-issues.git"))))

(ert-deftest test-magit-gh-issues-parse-url-https ()
  (should (equal '("creichert" . "magit-gh-issues")
                 (magit-gh-issues-parse-url "https://github.com/creichert/magit-gh-issues/"))))

(ert-deftest test-magit-gh-issues-parse-url-http ()
  (should (equal '("creichert" . "magit-gh-issues")
                 (magit-gh-issues-parse-url "http://github.com/creichert/magit-gh-issues.git"))))

(ert-deftest test-magit-gh-issues-parse-url-git ()
  (should (equal '("creichert" . "magit-gh-issues")
                 (magit-gh-issues-parse-url "git://github.com/creichert/magit-gh-issues.git"))))

(ert-deftest test-magic-gh-pulls-parse-url-invalid ()
  (should (eq nil (magit-gh-issues-parse-url "http://google.com"))))

(ert-deftest test-magic-gh-pulls-parse-url-garbage ()
  (should (eq nil (magit-gh-issues-parse-url "sfalwkerwe09"))))
