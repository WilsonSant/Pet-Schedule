type align =
  | @as("align") Align
  | @as("inherit") Inherit
  | @as("justify") Justify
  | @as("left") Left
  | @as("right") Right

@module("@mui/material/TableCell") @react.component
external make: (
  ~children: React.element=?,
  ~className: string=?,
  ~align: align=?,
) => React.element = "default"
