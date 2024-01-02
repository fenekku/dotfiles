#
# Added invisible files display
#
function ll --description "List contents of directory using long format"
    ls -l --human-readable --almost-all $argv
end
