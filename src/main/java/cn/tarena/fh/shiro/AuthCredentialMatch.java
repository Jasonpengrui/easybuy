package cn.tarena.fh.shiro;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

public class AuthCredentialMatch extends SimpleCredentialsMatcher{

	@Override
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		
		//把用户输入的密码进行加密
		//UsernamePasswordToken loginToken = (UsernamePasswordToken)token;
		
		//把用户输入的密码取出并从char[]转成String类型
		//String password = String.valueOf(loginToken.getPassword());
		//password = Md5Utils.getMd5(password, loginToken.getUsername());
		//修改令牌中的密码
		//loginToken.setPassword(password.toCharArray());
		
		return super.doCredentialsMatch(token, info);
	}    
	
}
