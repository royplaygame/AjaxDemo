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

import com.alibaba.fastjson.JSON;

@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
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

	protected void getUserName(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String[] names = { "�ž�ΰ", "��ս��", "����˳", "������", "������", "��԰��", "Ԫ����", "����", "̷С��", "��˶", "��˧ǿ", "������", "����Ƽ",
				"�Ŷ���", "Ҧ�̳�", "������", "ʷѩ��", "��Т�S", "������", "������", "�׽���", "Ϳ�Ŀ�", "����", "��һ��", "���Ӻ�", "������", "������", "���Ʒ�",
				"����", "�ſ���", "�ų�" };

		int rand = (int) Math.floor(Math.random() * 31);
		response.getWriter().print(names[rand]);
	}

	protected void tips(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String word=request.getParameter("ch");
		List<String> list = new ArrayList<>();
		List<String> rtList = new ArrayList<>();
		list.add("abc");
		list.add("abord");
		list.add("book");
		list.add("bord");
		list.add("clerk");
		list.add("cook");
		for(String s:list) {
			if(s.indexOf(word)!=-1) {
				rtList.add(s);
			}
		}
		response.getWriter().println(rtList);
	}

	protected void register(HttpServletRequest request, HttpServletResponse response) {

	}

	protected void toList(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Plan_list p1 = new Plan_list("1", "1000", "1000", "�ѻ���");
		Plan_list p2 = new Plan_list("2", "1000", "800", "���ֻ���");
		Plan_list p3 = new Plan_list("3", "1000", "0", "δ����");
		Plan_list p4 = new Plan_list("4", "1000", "0", "δ����");
		List<Plan_list> list = new ArrayList<>();
		list.add(p1);
		list.add(p2);
		list.add(p3);
		list.add(p4);

		System.out.println(JSON.toJSONString(list));
		response.getWriter().print(JSON.toJSONString(list));
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
