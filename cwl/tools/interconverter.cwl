cwlVersion: v1.0
class: CommandLineTool
baseCommand: interconverter.sh
hints:
  - class: DockerRequirement
    dockerPull: "quay.io/epigenomicscrew/screw"
arguments: ["-d", $(runtime.outdir)]

inputs:
  toConvert:
    type: File
    inputBinding:
      prefix: -i
  typeCheck:
    type: string
    inputBinding:
      prefix: -c
outputs:
  converted:
    type: File
    outputBinding:
      glob: "*.meth"
