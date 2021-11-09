import os
import webbrowser

c = get_config()

# Kernel config
c.IPKernelApp.pylab = 'inline'  # if you want plotting support always in your notebook

# Notebook config
c.ServerApp.notebook_dir = 'nbs'
c.ServerApp.allow_origin = '*' # put your public IP Address here
c.ServerApp.ip = '*'
c.ServerApp.allow_root = True
c.ServerApp.allow_remote_access = True
c.ServerApp.open_browser = False

# ipython -c "from notebook.auth import passwd; passwd()"
c.ServerApp.password = u''
c.ServerApp.token = ''
c.ServerApp.port = int(os.environ.get("PORT", 80))
c.ServerApp.allow_root = True
c.ServerApp.allow_password_change = True
c.ConfigurableHTTPProxy.command = ['configurable-http-proxy', '--redirect-port', '80']
