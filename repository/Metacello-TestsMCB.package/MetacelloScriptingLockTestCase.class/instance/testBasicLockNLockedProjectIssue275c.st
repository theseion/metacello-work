tests
testBasicLockNLockedProjectIssue275c
  Metacello new
    configuration: 'ExternalX';
    version: '0.9.1';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    lock.
  Metacello new
    configuration: 'LockConfigurations';
    version: '1.0.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    onLock: [ :ex | ex break ];
    load.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.0'
    expectedConfigurationRepository:
      'dictionary://Metacello_Config_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil