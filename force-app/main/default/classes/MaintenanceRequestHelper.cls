public with sharing class MaintenanceRequestHelper {
    public static void updateWorkOrders() {
        if (Trigger.isBefore) {
            if (Trigger.isUpdate) {
            }
        } else if (Trigger.isAfter) {
            if (Trigger.isUpdate) {
                MaintenanceRequestAfterUpdateHandler.processClosedRequest(Trigger.newMap, Trigger.oldMap);
            }
        }
    }
}
