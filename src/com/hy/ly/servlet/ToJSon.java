package com.hy.ly.servlet;

import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;

public class ToJSon {

	public static void main(String[] args) {
		Plan_list p1=new Plan_list("1","1000","1000","已回笼");
		Plan_list p2=new Plan_list("2","1000","800","部分回笼");
		Plan_list p3=new Plan_list("3","1000","0","未回笼");
		Plan_list p4=new Plan_list("4","1000","0","未回笼");
		List<Plan_list> list =new ArrayList<>();
		list.add(p1);
		list.add(p2);
		list.add(p3);
		list.add(p4);
		
		System.out.println(JSON.toJSONString(list));
	}
}
