/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/bob_app_endpoints.dart' as _i2;
import 'package:bob_be_server/src/generated/classes/cicd/cicd_workflow_event_request.dart'
    as _i3;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'greeting': _i2.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
      'cicd': _i2.CicdEndpoint()
        ..initialize(
          server,
          'cicd',
          null,
        ),
    };
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['greeting'] as _i2.GreetingEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['cicd'] = _i1.EndpointConnector(
      name: 'cicd',
      endpoint: endpoints['cicd']!,
      methodConnectors: {
        'logStep': _i1.MethodConnector(
          name: 'logStep',
          params: {
            'request': _i1.ParameterDescription(
              name: 'request',
              type: _i1.getType<_i3.CICDWorkflowEventRequest>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cicd'] as _i2.CicdEndpoint).logStep(
            session,
            params['request'],
          ),
        ),
        'getWorkflowSummaries': _i1.MethodConnector(
          name: 'getWorkflowSummaries',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cicd'] as _i2.CicdEndpoint)
                  .getWorkflowSummaries(session),
        ),
      },
    );
    modules['serverpod_auth'] = _i4.Endpoints()..initializeEndpoints(server);
  }
}
