function fish_prompt --description 'Write out the prompt'

	# Just calculate these once, to save a few cycles when displaying the prompt
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
	end

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	if not set -q __fish_prompt_virtualenv_color
		set -g __fish_prompt_virtualenv_color (set_color -b blue white)
	end

	if set -q VIRTUAL_ENV
		if not set -q __fish_prompt_virtualenv
			set -g __fish_prompt_virtualenv "$__fish_prompt_virtualenv_color""("(basename "$VIRTUAL_ENV")")"$__fish_prompt_normal" "
		end
	end

	if not set -q __fish_prompt_git_color
		set -g __fish_prompt_git_color (set_color brown)
	end

	if not set -q __fish_prompt_git_branch
		set __fish_prompt_git_branch "$__fish_prompt_git_color"" ↪ "(git branch ^/dev/null | grep \* | sed 's/* //')"$__fish_prompt_normal"
	end

	switch $USER

		case root

        if not set -q __fish_prompt_cwd
            if set -q fish_color_cwd_root
                set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
            else
                set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            end
        end

        set -g __fish_prompt_char \n'# '

        case '*'

        if not set -q __fish_prompt_cwd
            set -g __fish_prompt_cwd (set_color $fish_color_cwd)
        end

        set -g __fish_prompt_char \n"> "

	end

	if not set -q __fish_prompt_userhost
		set -g __fish_prompt_userhost $USER"@"$__fish_prompt_hostname" "
	end

	echo -n -s "$__fish_prompt_virtualenv" "$__fish_prompt_userhost" "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" $__fish_prompt_git_branch "$__fish_prompt_char"

end


