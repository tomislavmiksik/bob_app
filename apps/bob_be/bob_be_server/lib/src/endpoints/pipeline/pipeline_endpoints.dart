part of bob_app_endpoints;

class PipelineEndpoint extends Endpoint {
  Future<String> fetchAll(Session session) async {
    return 'test complete';
  }

  Future<UploadConfigResponse> uploadYamlConfiguration(
    Session session, {
    required UploadConfigRequest request,
    required String fileData,
  }) async {
    return PipelineService.uploadAndParseYamlConfig(
      session: session,
      request: request,
      fileContent: fileData,
    );
  }
}
