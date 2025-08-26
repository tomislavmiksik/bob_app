part of bob_app_endpoints;

class CicdEndpoint extends Endpoint {
  Future<CICDWorkflowEventDetail> logStep(
      Session session, CICDWorkflowEventRequest request) async {
    // Validate the request
    final validationErrors = request.validate();
    if (validationErrors.isNotEmpty) {
      throw Exception('Validation failed: ${validationErrors.join(', ')}');
    }

    // Convert request to entity and save
    final entity = request.toEntity();
    final savedEntity = await CICDWorkflowEvent.db.insertRow(session, entity);

    // Return detailed response
    return savedEntity.toDetail();
  }

  Future<List<CICDWorkflowEventSummary>> getWorkflowSummaries(
    Session session,
  ) async {
    final events = await CICDWorkflowEvent.db.find(session);
    return events.toSummaries();
  }
}
