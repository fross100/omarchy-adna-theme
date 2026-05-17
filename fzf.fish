set -l color00 '#1A1620'
set -l color01 '#005F5F'
set -l color02 '#00E5FF'
set -l color03 '#CC0066'
set -l color04 '#FF1493'
set -l color05 '#FF69B4'
set -l color06 '#00E5FF'
set -l color07 '#FF69B4'
set -l color08 '#008B8B'
set -l color09 '#00E5FF'
set -l color0A '#00E5FF'
set -l color0B '#00E5FF'
set -l color0C '#00E5FF'
set -l color0D '#00BCD4'
set -l color0E '#00E5FF'
set -l color0F '#FFC0CB'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
