c.JupyterHub.admin_access = True
c.LocalAuthenticator.create_system_users = True
c.Spawner.default_url = '/lab'
c.Authenticator.admin_users = {'admin'}

from oauthenticator.generic import GenericOAuthenticator
c.Application.log_level = 'DEBUG'
c.JupyterHub.authenticator_class = GenericOAuthenticator
c.GenericOAuthenticator.oauth_callback_url = 'http://jupyter.05a41e.grapps.cn/hub/oauth_callback'
c.GenericOAuthenticator.client_id = '418ea3a72df73efc4ed0'
c.GenericOAuthenticator.client_secret = 'd42f70d201b44bc08b86d7026135b671'
c.GenericOAuthenticator.authorize_url = 'http://120.53.133.103:10021/oauth/authorize'
c.GenericOAuthenticator.token_url = 'http://120.53.133.103:10021/oauth/token'
c.GenericOAuthenticator.userdata_url = 'http://120.53.133.103:10021/oauth/userinfo'
c.GenericOAuthenticator.userdata_params = {'state': 'state'}
# the next can be a callable as well, e.g.: lambda t: t.get('complex').get('structure').get('username')
c.GenericOAuthenticator.username_key = 'username'
c.GenericOAuthenticator.login_service = '煤科云'
c.GenericOAuthenticator.scope = ['all']
c.GenericOAuthenticator.auto_login = True

from subprocess import check_call
def pre_spawn_hook(spawner):
    username = spawner.user.name
    try:
        check_call(['useradd', '-ms', '/bin/bash', username])
    except Exception as e:
        print(f'{e}')
c.Spawner.pre_spawn_hook = pre_spawn_hook