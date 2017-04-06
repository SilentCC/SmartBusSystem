package interceptor;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class ExecutivesLoginCheck {
	
public String intercept(ActionInvocation ai) throws Exception {
		
		Map session = ai.getInvocationContext().getSession();
		if(session.get("identity")==null||session.get("identity")!="Executives"){
			session.put("errorMsg", "您还未登录，请先登录");
			return "login";
		}
		else
			return ai.invoke();
		}


}
