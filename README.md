
# AzariaCD
All the images and data required for running the game. Clone this repository to your home directory on Linux or MacOS.

## Intro Trailer ...
https://www.youtube.com/watch?v=xSwn6Yxqz-Y

## Suggested Workflow

1. Start on latest main.
2. Work on your development or feature work
3. git add -p (for your changes) or git add <filename> for new additions
4. git checkout -b new-branch-name
5. git commit -m "whatever you feel should be said"
6. git pull -r origin main
7. git push origin new-branch-name
8. open a pr and wait for 2 approvals
9. merge into main
10. delete new-branch-name

After that just go back to main and repeat. If someone requests changes then stash whatever you're working on and checkout new-branch-name, make the requested changes, do a git pull -r origin main again, then git push -f origin new-branch-name, then checkout main and git stash pop. If you do get in a spot where you need the changes you made, in that case just continue working on that new-branch-name and don't delete it locally, only on github.