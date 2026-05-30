# ForgeBeyond Pipeline Demo

This repository is a real GitHub Actions demo for ForgeBeyond.

The PR intentionally breaks dependency installation in a way that looks like a
normal CI pipeline failure. ForgeBeyond is run against the failed GitHub Actions
run, posts a triage comment back to the PR, and the branch is then fixed.

