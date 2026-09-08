local environments = {
  ["worked-example"] = "wetexample",
  ["definition-box"] = "wetdefinition",
  ["theorem-box"] = "wettheorem",
  ["learning-outcomes"] = "wetoutcomes",
  ["try-it"] = "wettry",
  ["applied-problem"] = "wetapplied"
}

function Div(el)
  if el.classes:includes("print-answer") then
    return {}
  end

  for class_name, environment in pairs(environments) do
    if el.classes:includes(class_name) then
      return {
        pandoc.RawBlock("latex", "\\begin{" .. environment .. "}"),
        el,
        pandoc.RawBlock("latex", "\\end{" .. environment .. "}")
      }
    end
  end
  return el
end


function Header(el)
  if el.level == 1 and pandoc.utils.stringify(el.content) == "(APPENDIX) Appendices" then
    return pandoc.RawBlock("latex", "\\appendix")
  end
  return el
end
