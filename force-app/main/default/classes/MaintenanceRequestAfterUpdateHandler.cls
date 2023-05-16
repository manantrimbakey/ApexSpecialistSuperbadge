public with sharing class MaintenanceRequestAfterUpdateHandler {
    public static void processClosedRequest(Map<Id, SObject> newCaseMap, Map<Id, SObject> oldCaseMap) {
        List<Case> closedCases = new List<Case>();
        for (Id eachNewCaseId : newCaseMap.keySet()) {
            Case oldCase = (Case) oldCaseMap.get(eachNewCaseId);
            Case newCase = (Case) newCaseMap.get(eachNewCaseId);
            if (
                oldCase.Status != newCase.Status &&
                newCase.Status == 'Closed' &&
                newCase.Type == 'Routine Maintenance'
            ) {
                closedCases.add(newCase);
            }
        }
    }
}
