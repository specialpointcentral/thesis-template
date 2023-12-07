# Thesis Template

Focus on writing, not getting stuck on how to compile and share.
> You can find some of the introductions in this [Slide](https://blog.spcsky.com/graduate-share/share.html#/%E6%8E%A8%E9%94%80%E7%8E%AF%E8%8A%82) (Chinese only).

## Background

If you have struggled with any of these situations:

- Latex is difficult to compile. The environment is difficult to install and configure!
- Want to share my latest version of the paper, but where is it?
- Version control.

## Step-by-step

- Turn on your `GitHub Action`.
- Enable `Actions` read/write permissions in the repo.
  - `Setting` > `Actions` > `General`
  - Find `Workflow permissions`
  - `Select read and write permissions`
- Setting up the display page (the pdf of thesis).
  - `Setting` > `Pages`
  - Find `Build and deployment`
  - `Source`: `Deploy from a branch`
  - `Branch`: `gh_actions_builds`
  - Note: This branch to be available after completing by `GitHub Action`.
- Each commit triggers a compilation that generates the latest files (the pdf of thesis).

## Emmm...

Let's write here first, I'll add more later..
