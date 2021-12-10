# VSCode extension for nautilus-python
# Author: Adrien Martinez

import os
import json
import subprocess
from urllib.parse import unquote
from gi import require_version

require_version('Nautilus', '3.0')

from gi.repository import Nautilus, GObject

class NautilusVSCode(Nautilus.MenuProvider, GObject.GObject):
    def __init__(self):
        self.config = {
            'vscode_path': "/usr/bin/code",
            'accepted_mime_types': ["text/*"]
        }

        with open(os.path.join(os.path.dirname(__file__), "config.json")) as json_file:
            try:
                self.config.update(json.load(json_file))
            except:
                pass
        
        if not os.path.isfile(self.config['vscode_path']):
            raise FileNotFoundError(f"{self.config['vscode_path']} not found")

    def get_file_items(self, window, files):
        return self._create_menu_items(files, "File")

    def get_background_items(self, window, file):
        return self._create_menu_items([file], "Background")

    def _is_accepted(self, test_mime_type):
        for ref_mime_type in self.config['accepted_mime_types']:
            for ref_element, test_element in zip(ref_mime_type.split('/'), test_mime_type.split('/')):
                if ref_element == '*':
                    continue
                if ref_element != test_element:
                    break
            else:
                return True
        return False

    def _create_menu_items(self, files, group):
        for file in files:
            if not file.is_directory() and not self._is_accepted(file.get_mime_type()):
                return

        item = Nautilus.MenuItem(
            name="NautilusVSCode::OpenIn" + group,
            label="Ouvrir dans VSCode"
        )
        item.connect('activate', self._open_in_vscode, files)

        return item,

    def _open_in_vscode(self, menu, files):
        filenames = [unquote(file.get_uri()[7:]) for file in files]
        args = [self.config['vscode_path']] + filenames
        subprocess.run(args) #, shell=True) # , executable='/bin/bash')
