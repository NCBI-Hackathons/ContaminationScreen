cwlVersion: v1.0
class: CommandLineTool
baseCommand: [awk, "($3>=98.0 && $4>=50)||($3>=94.0 && $4>=100)||($3>=90.0 && $4>=200)"]
stdout: awk_output.txt
inputs:
  - id: input_file
    type: [File]
    inputBinding:
      position: 1
outputs:
  - id: output
    type: File
    outputBinding:
      glob: awk_output.txt
