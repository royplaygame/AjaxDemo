package com.hy.ly.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.StringUtils;

import com.alibaba.fastjson.JSON;

@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		try {
			Method method = UserServlet.class.getDeclaredMethod(type, HttpServletRequest.class,
					HttpServletResponse.class);
			method.invoke(this, request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void userLogin(HttpServletRequest request, HttpServletResponse response) {

	}

	protected void register(HttpServletRequest request, HttpServletResponse response) {

	}

	protected void getCity(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String city = request.getParameter("city");
		List<String> china = new ArrayList<>();
		china.add("֣��");
		china.add("����");
		china.add("����");
		china.add("����");
		String chinaStr = String.join(",", china.toArray(new String[china.size()]));

		List<String> america = new ArrayList<>();
		america.add("��ɼ�");
		america.add("�ɽ�ɽ");
		america.add("������");
		america.add("��˹��");

		String americaStr = String.join(",", america.toArray(new String[america.size()]));

		List<String> japan = new ArrayList<>();
		japan.add("����");
		japan.add("����");
		japan.add("���� ");
		japan.add("��Ұ");

		String japanStr = String.join(",", japan.toArray(new String[japan.size()]));

		switch (Integer.parseInt(city)) {
		case 1:
			response.getWriter().print(chinaStr);
			break;
		case 2:
			response.getWriter().print(americaStr);
			break;
		case 3:
			response.getWriter().print(japanStr);
			break;
		default:
			response.getWriter().print(chinaStr);
		}

	}

	protected void loadAjax(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<String> list = new ArrayList<>();
		list.add("zhangsan@163.com");
		list.add("lisi@163.com");
		list.add("wangwu@163.com");
		list.add("zhaoliu@163.com");
		list.add("tianqi@163.com");
		list.add("wangfei@163.com");
		list.add("zhaoyun@163.com");
		list.add("guanyu@163.com");
		response.getWriter().print(JSON.toJSONString(list));
	}

	protected void checkPassWord(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("checkPassWord");
		response.getWriter().print("{flag:true,message:\"���������ʹ�ã�\"}");
	}

	protected void checkEmail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		List<String> list = new ArrayList<>();
		list.add("zhangsan@163.com");
		list.add("lisi@163.com");
		list.add("wangwu@163.com");
		list.add("zhaoliu@163.com");
		list.add("tianqi@163.com");
		list.add("wangfei@163.com");
		list.add("zhaoyun@163.com");
		list.add("guanyu@163.com");

		if (list.contains(email.trim())) {
			response.getWriter().print("{flag:false,message:\"�������Ѿ�ע�ᣡ\"}");
		} else {
			response.getWriter().print("{flag:true,message:\"���������ʹ�ã�\"}");
		}
	}

	protected void checkUserExist(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String word = request.getParameter("word");
		List<String> list = new ArrayList<>();
		list.add("admin");
		list.add("as");
		list.add("aboot");
		list.add("alibaba");

		List<String> america = new ArrayList<>();
		america.add("book");
		america.add("boot");
		america.add("bootstrap");
		america.add("bark");

		List<String> list3 = new ArrayList<>();
		list3.add("cook");
		list3.add("child");
		list3.add("cooking");
		list3.add("cool");

		Map<String, List<String>> map = new HashMap<>();
		map.put("a", list);
		map.put("b", america);
		map.put("c", list3);

		List<String> rtList = map.get(word);
		if (rtList == null) {
			response.getWriter().println("û���ҵ��������!");
		} else {
			response.getWriter().println(JSON.toJSONString(rtList));
		}
	}

}
