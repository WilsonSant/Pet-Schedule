type sx = {
  width: int,
  height: int,
}

@module("@mui/material/Avatar") @react.component
external make: (~children: React.element=?, ~alt: string, ~src: string, ~sx: sx) => React.element =
  "default"
