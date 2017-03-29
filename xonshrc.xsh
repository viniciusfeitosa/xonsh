# alias to quit AwesomeWM from the terminal
def _quit_awesome(args, stdin=None):
    lines = $(ps ux | grep "gnome-session --session=awesome").splitlines()
    pids = [l.split()[1] for l in lines]
    for pid in pids:
        kill @(pid)

aliases['qa'] = _quit_awesome

# some customization options
$MULTILINE_PROMPT = '`·.,¸,.·*¯`·.,¸,.·*¯'
$XONSH_SHOW_TRACEBACK = True
$XONSH_STORE_STDOUT = True
$DYNAMIC_CWD_WIDTH = '10%'
