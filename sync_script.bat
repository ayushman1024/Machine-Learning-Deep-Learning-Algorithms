CD /D %~dp0
@echo ## Started execution: %date% %time% >> tasklog.txt

SET prebranch = git branch
DEL .git\index.lock >> tasklog.txt
git checkout master >> tasklog.txt
git fetch origin >> tasklog.txt
git merge origin/master >> tasklog.txt

git add . >> tasklog.txt
git commit -m "Automatic commit" >> tasklog.txt
git push >> tasklog.txt

git checkout %prebranch >> tasklog.txt

@echo ## Completed at %date% %time% >> tasklog.txt
@echo ___________________________________ >> tasklog.txt
exit