package com.sc.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HelloTag extends SimpleTagSupport {
	@Override
	public void doTag() throws JspException, IOException {
		JspWriter writer = getJspContext().getOut();
		writer.println("Hello Custom Tag!");
		super.doTag();
	}
}
