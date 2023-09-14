type sx = {minWidth: int}
@module("@mui/material/Table") @react.component
external make: (~children: React.element, ~className: string=?, ~sx: sx=?) => React.element =
  "default"
