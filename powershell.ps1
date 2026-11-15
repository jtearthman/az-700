Login-AzAccount
# Install the Az module once if it is not already installed:
# Install-Module -Name Az -Repository PSGallery -Scope CurrentUser

Import-Module Az.Accounts

# Sign in to Azure interactively:
Connect-AzAccount

# Optional: select a subscription after signing in:
# Get-AzSubscription
# Set-AzContext -SubscriptionId "<subscription-id>"
Get-AzSubscription
