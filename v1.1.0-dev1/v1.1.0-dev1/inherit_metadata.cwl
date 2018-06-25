class: CommandLineTool
cwlVersion: v1.1.0-dev1
baseCommand:
  - echo
  - this
  - file
  - has
  - metadata
inputs:
  - id: input
    type: File?
outputs:
  - id: out
    type: File
    outputBinding:
      glob: out
requirements:
  - class: DockerRequirement
    dockerPull: 'ubuntu:16.04'
  - class: InlineJavascriptRequirement
stdout: out
