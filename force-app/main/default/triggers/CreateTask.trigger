trigger CreateTask on Shipping_Order__c (after insert) {

    Task newOrderTask = new Task();
    // if insert

    for (Shipping_Order__c custOrders : Trigger.new){
   //     newOrderTask.OwnerId = custOrders.Shipping_project__r.OwnerId;
        newOrderTask.OwnerId = custOrders.CreatedById;
        newOrderTask.WhatId = custOrders.Order_issuer__c;
        newOrderTask.Subject = 'Other';
        newOrderTask.Status = 'In Progress';
        newOrderTask.Priority = 'Normal';
        newOrderTask.Description = 'New order for customer ' + custOrders.Order_issuer__r.Name + ' has been created for Shipment no# ' + custOrders.Shipping_project__r.Name;
    }

    insert newOrderTask;


}