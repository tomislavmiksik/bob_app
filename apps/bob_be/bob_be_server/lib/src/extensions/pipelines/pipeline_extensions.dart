part of bob_app_extensions;

extension StepTypeExtension on StepType {

  /// Get color for UI representation
  String get color {
    switch (this) {
      case StepType.checkout:
        return '#2196F3'; // blue
      case StepType.install:
        return '#FF9800'; // orange
      case StepType.build:
        return '#4CAF50'; // green
      case StepType.test:
        return '#9C27B0'; // purple
      case StepType.deploy:
        return '#F44336'; // red
      case StepType.script:
        return '#607D8B'; // blue gray
      case StepType.publish:
        return '#795548'; // brown
    }
  }

  /// Get icon for UI
  String get icon {
    switch (this) {
      case StepType.checkout:
        return 'download';
      case StepType.install:
        return 'download_for_offline';
      case StepType.build:
        return 'build';
      case StepType.test:
        return 'science';
      case StepType.deploy:
        return 'rocket_launch';
      case StepType.script:
        return 'terminal';
      case StepType.publish:
        return 'publish';
    }
  }
}