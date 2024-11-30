# Project_2_431

A guide to installing the Lean Programming Language in WSL

0   As a prerequisite to installing Lean, you must have Git installed. Anyone who is everyone in the programming world should have Git installed.

1   In a WSL Command Prompt, enter the following command to install elan, the Lean package manager

        curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh

2   During the installation, you will be asked to:

        1) Proceed with installation (default)
        2) Customize installation
        3) Cancel installation

    Press 1 and hit enter to continue with installation, or press 3 and enter if you're having second thoughts

3   Once installation is complete, you will be asked to run the following command to configure your current shell. If you have trouble with this, try executing it as a sudo command.

        $HOME/.elan/env

    



A guide to installing Lean directly from VS Code (the easier method)

1   Open VS Code and install the Lean 4 extension

2   Create or open any file

3   At the top of the workspace, click the Lean 4 icon (it appears as an upside down capital A)

4   From the dropdown menu, go to Documentation, then click on Docs: Show Setup Guide

5   The document includes links to various useful resources for learning Lean, instructions on installing Git (neccessary for installing Lean), guides to opening and creating Lean projects, and a troubleshooting guide to help you with any problems you may encounter

6   The Setup Guide also includes a one button instal that automatically installs elan (the Lean package manager) and the latest stable release of Lean. Go to the "Install Lean Version Manager" tab and find the "Click to install" button. Click the button and you're done.
