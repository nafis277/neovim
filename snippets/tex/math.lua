local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
    s("frac", fmta(
        [[
\frac{<>}{<>}
]],{i(1), i(2)}),{condition = in_mathzone, show_condition = in_mathzone}),

    s("dv", fmta(
        [[
\dv{<>}{<>}
]],{i(1), i(2)}), {condition = in_mathzone, show_condition = in_mathzone}),

    s("int", fmta(
        [[
\int_{<>}^{<>}
]],{i(1), i(2)}),{condition = in_mathzone, show_condition = in_mathzone}),

    s("sum", fmta(
        [[
\sum_{<>}^{<>}
]],{i(1), i(2)}), {condition = in_mathzone, show_condition = in_mathzone}),

    
    s({ trig = "[\\^%a%d]*/", regTrig = true }, {
		f(function(_, snip)
			return "\\frac{" .. string.sub(snip.trigger, 0, -2) .. "}"
		end, {}),
        t("{"),
        i(1),
        t("}"),

    }, {condition = in_mathzone, show_condition = in_mathzone}),

    s({trig = "seq[%a_%d]*", regTrig = true},{
        f(function(_, snip)
            local x = string.sub(snip.trigger, 4, -1)
			return  x .. "_1, " .. x .. "_2, \\dots, " .. x .. "_{"
		end, {}),
        i(1, "n"),
        t("}"),

    }, {condition = in_mathzone, show_condition = in_mathzone}),

}
