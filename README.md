Salesforce DX Project Setup 
##  Objective
This project provides a hands-on guide to working with Salesforce Developer Experience (SFDX), including CLI installation, scratch org creation, metadata retrieval, and basic development using Apex and Lightning Web Components
## Prerequisites
- [Node.js](https://nodejs.org)
- [Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli)
- Git & GitHub account
- Visual Studio Code with Salesforce Extensions Pack
- A Dev Hub-enabled Salesforce Org
#Step-by-Step Setup Instructions
## Step 1: Install Salesforce CLI
 Download the installer:  
https://developer.salesforce.com/tools/sfdxcli
Verify installation:
sf --version
## Step 2: Authenticate Dev Hub Org
sf auth:web:login -d -a DevHub
 ## Step 3: Create Salesforce DX Project
sf force:project:create -n my-sfdx-project cd my-sfdx-project
## Step 4: Create a Scratch Org
sf force:org:create -s -f config/project-scratch-def.json -a ScratchOrg
Open the org:
sf force:org:open
## Step 5: Pull Metadata from Sandbox 
Authenticate sandbox org:
sf auth:web:login -a SandboxOrg
Pull metadata (source-tracked):
sf force:source:pull
Non-source-tracked (use manifest or component names):
sf force:source:retrieve -m ApexClass,LightningComponentBundle
## Step 6: Make Code Changes
Modify or add components in:
Apex Classes → force-app/main/default/classes/
Lightning Web Components → force-app/main/default/lwc/
## Step 7: Push Changes to Scratch Org
sf force:source:push
Run tests:
sf force:apex:test:run --resultformat human --outputdir test-results --wait 10
 ## Step 8: Deploy to Sandbox 
sfdx force:source:deploy -u SandboxOrg -p force-app
 Deliverables
Salesforce DX project structure
Scratch org with changes deployed
Apex Class or LWC modifications
All changes pushed to GitHub
This README.md file as documentation

