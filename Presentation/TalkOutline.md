Reminder
Talk time: 35m
Q&A time: 10m

Need to find a Module topic:
SMB Share is already taken...
DFS-N?
Something locale based (French/German)
--------

# Intro
- Intro Me
- Intro what we'll go through (TOC)

# Introduce the problem
- Scenario

1. Starting out with Puppet using modules from the Forge
2. There's something you want to do but no module for it, so you resort to Exec's!
3. Then you need a Fact or some custom function and everything get's a little hard!
4. You start to investigate creating these things and there's so many new things.. and you
FREAK OUT!

- Need a high level overview.....

Setup Dev Env. -> Create Module -> Run Module -> Debug Module -> Test Module -> Deploy Module -> Feedback

Basic Categories vv
* Setup
* Dev
* Test
* Deploy

# How to set up your local computer with common tools for developing Puppet modules

- Choco

- Ruby + Ruby devkit  OR jsut use Puppet's ruby? (Need devkit for pry)
- Text Editor (Atom, Notepad++, VS Code) + Puppet plugins

- Source Control (git, svn, TFS, Hg)  <--- Important (Be kind to your future self)

- Tips and Tricks - UTF8, CRLF vs LF
- Why not good 'ol notepad? (LF issue)

SDK ?

# Create your first module for Windows
- puppet module create  <--- Now what?

# Basic troubleshooting methods for Puppet code on Windows using Pry
Easy enough - Introduce an error and use pry with stack explorer to move around an find the issue

# Basic unit testing using rspec and puppet-rspec
Easy enough

Why unit test?
Links to good unit tests?

# How to publish a module on the Forge
- puppet module build
- Manual publish vs puppet-blacksmith


# Next steps for module development, including modulesync and cloud-based CI
- Appveyor and Travis
- ModuleSync for common things across your modules.

# Q&A
- Happy to continue Q&A over lunch

# After talk links
Choco
Ruby installer
Ruby Devkit Installer
Pry etc.

Unit Testing links (books etc.)

---

Writing your first Puppet module is pretty daunting. There are so many things to set up: tools, repositories, tests! In this presentation we’ll walk through setting up a local Windows development environment, and then write a Puppet module. We’ll also look at debugging, testing and publishing the module to the Puppet Forge.

In this session you’ll learn:
* How to set up your local computer with common tools for developing Puppet modules
* Create your first module for Windows
* Basic troubleshooting methods for Puppet code on Windows using Pry
* Basic unit testing using rspec and puppet-rspec
* How to publish a module on the Forge
* Next steps for module development, including modulesync and cloud-based CI


[7:54 PM] Glenn Sarti: I need something simple...
[7:54 PM] Glenn Sarti: and it needs to be a new module, not adding to existing
[7:55 PM] Glenn Sarti: I've already prodded @JohnOConnor for HKCU support :-)
[7:56 PM] Glenn Sarti: asp.net core ... MAY be a possibility
[7:56 PM] Glenn Sarti: Hrmmm has docker support too
[7:56 PM] Glenn Sarti: Plans within plans
[7:59 PM] Glenn Sarti: Hrmmm...so dot net core....is #1 on my list
[8:00 PM] Glenn Sarti: Will create a module to install .net core, create a template website and a custom fact of some kind,  For shits and giggles, MAY be able to run it in docker and/or ubuntu and/or WSL... maybe
[8:00 PM] Glenn Sarti: Thanks @rob