PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> echo "# ST-W3-LAB4" >> README.md    
>> git init
>> git add README.md
>> git commit -m "first commit"
>> git branch -M main
>> git remote add origin https://github.com/Wipupat-Chomthaworn/ST-W3-LAB4.git
>> git push -u origin main
Initialized empty Git repository in C:/Users/LAB203-01/Desktop/ST W4 LAB4/.git/
[master (root-commit) 5a1974e] first commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 256 bytes | 256.00 KiB/s, done.
To https://github.com/Wipupat-Chomthaworn/ST-W3-LAB4.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git add .
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> echo "Initial content in file1" > file1.txt
>> git commit -m "Initial commit of file1"
[main b21a79c] Initial commit of file1
 4 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 file1.txt
 create mode 100644 git reset.png
 create mode 100644 git revert.png
>> git add file2.txt
>> git commit -m "Add file2"
[main 75fb13d] Add file2
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 file2.txt
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> echo "Update to file1" >> file1.txt
>> git add file1.txt
>> git commit -m "Update file1"
[main d126337] Update file1
 1 file changed, 0 insertions(+), 0 deletions(-)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> echo "Update to file2" >> file2.txt
>> git commit -m "Update file2"
[main 710476a] Update file2
 1 file changed, 0 insertions(+), 0 deletions(-)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> echo "Final update to file1" >> file1.txt
>> git add file1.txt
>> git commit -m "Final update file1"\
fatal: \: '\' is outside repository at 'C:/Users/LAB203-01/Desktop/ST W4 LAB4'
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> echo "Final update to file1" >> file1.txt
>> git add file1.txt
>> git commit -m "Final update file1"
[main 19f349b] Final update file1
 1 file changed, 0 insertions(+), 0 deletions(-)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git log --oneline
19f349b (HEAD -> main) Final update file1
710476a Update file2
d126337 Update file1
75fb13d Add file2
b21a79c Initial commit of file1
5a1974e (origin/main) first commit
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git revert d126337
warning: Cannot merge binary files: file1.txt (HEAD vs. parent of d126337 (Update file1))
CONFLICT (content): Merge conflict in file1.txt
error: could not revert d126337... Update file1
hint: After resolving the conflicts, mark them with
hint: "git add/rm <pathspec>", then run
hint: "git revert --continue".
hint: You can instead skip this commit with "git revert --skip".
hint: To abort and get back to the state before "git revert",
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> # Follow prompts to complete the revert
>> git log --oneline  # Verify the revert
19f349b (HEAD -> main) Final update file1
710476a Update file2
d126337 Update file1
75fb13d Add file2
b21a79c Initial commit of file1
warning: Cannot merge binary files: file1.txt (HEAD vs. parent of d126337 (Update file1))
Auto-merging file1.txt
error: could not revert d126337... Update file1
hint: After resolving the conflicts, mark them with
hint: "git add/rm <pathspec>", then run
hint: "git revert --continue".
hint: You can instead skip this commit with "git revert --skip".
hint: To abort and get back to the state before "git revert",
hint: run "git revert --abort".
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git add .
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git revert --continue
[main 05c17f6] Revert "Update file1"
 1 file changed, 0 insertions(+), 0 deletions(-)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git log --oneline
05c17f6 (HEAD -> main) Revert "Update file1"
19f349b Final update file1
710476a Update file2
d126337 Update file1
75fb13d Add file2
b21a79c Initial commit of file1
5a1974e (origin/main) first commit
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git log --oneline  # Verify the revert
05c17f6 (HEAD -> main) Revert "Update file1"
19f349b Final update file1
710476a Update file2
d126337 Update file1
75fb13d Add file2
b21a79c Initial commit of file1
5a1974e (origin/main) first commit
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git add .
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git commit -m ":tada: before final" 
[main 73ebf37] :tada: before final
 1 file changed, 0 insertions(+), 0 deletions(-)
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> git log --oneline
73ebf37 (HEAD -> main) :tada: before final
05c17f6 Revert "Update file1"
19f349b Final update file1
710476a Update file2
d126337 Update file1
75fb13d Add file2
b21a79c Initial commit of file1
5a1974e (origin/main) first commit
PS C:\Users\LAB203-01\Desktop\ST W4 LAB4> 