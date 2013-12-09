package net.juniper.jmp.core.ctx;

import java.util.Map;

public interface IRequest {
	public String getURI();
	public String getSessionId();
	public String[] getParameters(String key);
	public String getParameter(String key);
	public Map<String, String[]> getParameterMap();
}
