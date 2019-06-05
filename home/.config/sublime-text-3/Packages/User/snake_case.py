import sublime
import sublime_plugin


class SnakeCaseCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        view = self.view
        for s in view.sel():
            if s.empty():
                s = view.word(s)

            txt = self.transform(view.substr(s))
            view.replace(edit, s, txt)

    def transform(self, s):
        return "_".join(s.split()).lower()
