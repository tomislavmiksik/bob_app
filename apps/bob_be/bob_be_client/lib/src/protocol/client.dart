/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:bob_be_client/src/protocol/classes/greeting.dart' as _i3;
import 'package:bob_be_client/src/protocol/classes/cicd/cicd_workflow_event_detail.dart'
    as _i4;
import 'package:bob_be_client/src/protocol/classes/cicd/cicd_workflow_event_request.dart'
    as _i5;
import 'package:bob_be_client/src/protocol/classes/cicd/cicd_workflow_event_summary.dart'
    as _i6;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i7;
import 'protocol.dart' as _i8;

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _i1.EndpointRef {
  EndpointGreeting(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _i2.Future<_i3.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i3.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointCicd extends _i1.EndpointRef {
  EndpointCicd(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'cicd';

  _i2.Future<_i4.CICDWorkflowEventDetail> logStep(
          _i5.CICDWorkflowEventRequest request) =>
      caller.callServerEndpoint<_i4.CICDWorkflowEventDetail>(
        'cicd',
        'logStep',
        {'request': request},
      );

  _i2.Future<List<_i6.CICDWorkflowEventSummary>> getWorkflowSummaries() =>
      caller.callServerEndpoint<List<_i6.CICDWorkflowEventSummary>>(
        'cicd',
        'getWorkflowSummaries',
        {},
      );
}

class Modules {
  Modules(Client client) {
    auth = _i7.Caller(client);
  }

  late final _i7.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i8.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    greeting = EndpointGreeting(this);
    cicd = EndpointCicd(this);
    modules = Modules(this);
  }

  late final EndpointGreeting greeting;

  late final EndpointCicd cicd;

  late final Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'greeting': greeting,
        'cicd': cicd,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
