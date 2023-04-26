param(
[Parameter(Mandatory=$true)][string]$primary_servicebus_resource_group_name,            #Enter the name of resource group where the primary namespace is existing
[Parameter(Mandatory=$true)][string]$servicebus_aliasname,                                #Enter the alias name     
[Parameter(Mandatory=$true)][string]$primary_servicebus_namespace_name,                 #Enter the primary namespace
[Parameter(Mandatory=$true)]$subscriptionId_of_primary_namespace                        #Enter the subscriptionID of primary namespace
)

#Below command invokes failover from Primary to secondary namespace by pointing alias to secondary namespace.
Set-AzServiceBusGeoDRConfigurationFailOver -Name $servicebus_aliasname -NamespaceName $primary_servicebus_namespace_name -ResourceGroupName $primary_servicebus_resource_group_name -SubscriptionId $subscriptionId_of_primary_namespace
