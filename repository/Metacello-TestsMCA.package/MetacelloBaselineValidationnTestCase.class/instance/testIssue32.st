tests - valid
testIssue32
  | repo critical |
  repo := MetacelloScriptingResource current externalRepository.
  Gofer new
    repository: repo;
    package: 'BaselineOfIssue32';
    load.
  self validateBaseline: (Smalltalk at: #'BaselineOfIssue32')