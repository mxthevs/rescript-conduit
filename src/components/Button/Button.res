open CssJs

let button = (~block) => style(.[
  borderStyle(none),
  backgroundColor(#hex(Theme.Colors.blue)),
  color(#hex(Theme.Colors.white)),
  height(5.5->rem),
  minWidth(block ? 100.0->pct :20.0->rem),
  borderRadius(Theme.Radius.sm),
  cursor(pointer),
  fontFamily(Theme.fontFamily),
  fontSize(2.0->rem)
])

@react.component
let make = (~children, ~block=false) => { 
  <button className=button(~block)>
    children
  </button>
}
