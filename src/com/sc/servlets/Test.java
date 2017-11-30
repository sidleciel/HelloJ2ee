package com.sc.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sc.daos.RegistDao;

public class Test extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// super.doGet(req, resp);
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("GB2312");

		String user = req.getParameter("user");
		String password = req.getParameter("password");

		RegistDao registDao = new RegistDao();
		boolean ret = registDao.insertData(user, password);

		PrintWriter pWriter = resp.getWriter();
		String msg = "";
		if (ret) {
			msg = "注册成功啦！";
		} else {
			msg = "注册失败啦！";
		}
		pWriter.append(msg);
		pWriter.flush();
		System.out.println(msg);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// super.doPost(req, resp);
		doGet(req, resp);
	}
}
