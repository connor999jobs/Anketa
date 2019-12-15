package com.gmail.konnor999;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class StatisServlet extends HttpServlet {
    private Map<Integer, Map<String, Integer>> statistic = new HashMap<>();

    @Override
    public void init() throws ServletException {
        super.init();
        statistic.put(1, new HashMap<String, Integer>());
        statistic.put(2, new HashMap<String, Integer>());
        statistic.put(3, new HashMap<String, Integer>());
        statistic.put(4, new HashMap<String, Integer>());
        statistic.get(1).put("Java",0);
        statistic.get(1).put("C++",0);
        statistic.get(1).put("C#",0);
        statistic.get(1).put("Python",0);
        statistic.get(1).put("With any of these",0);
        statistic.get(2).put("HTML",0);
        statistic.get(2).put("HTML+CSS",0);
        statistic.get(2).put("HTML+CSS+JavaScript",0);
        statistic.get(2).put("With any of these FR",0);
        statistic.get(3).put("MySQL",0);
        statistic.get(3).put("PostGreSQL",0);
        statistic.get(3).put("NoSQL",0);
        statistic.get(4).put("I don't know SQL language",0);
        statistic.get(4).put("JUnit",0);
        statistic.get(4).put("Mockito",0);
        statistic.get(4).put("I don't work with this technology ",0);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        String name = req.getParameter("name");
        String surname = req.getParameter(" surname");
        int age = Integer.valueOf(req.getParameter("age"));
        String language = req.getParameter("language");
        String template = req.getParameter("template");
        String databases = req.getParameter("databases");
        String testing = req.getParameter("testing");

        Map<String, Integer> q1 = statistic.get(1);
        Integer count = q1.get(language);
        if (count != null) {
            q1.put(language, count + 1);
        }

        Map<String, Integer> q2 = statistic.get(2);
        Integer count2 = q2.get(template);
        if (count2 != null) {
            q2.put(template, count2 + 1);
        }

        Map<String, Integer> q3 = statistic.get(3);
        Integer count3 = q3.get(databases);
        if (count3 != null) {
            q3.put(databases, count3 + 1);
        }

        Map<String, Integer> q4 = statistic.get(4);
        Integer count4 = q4.get(databases);
        if (count4 != null) {
            q4.put(databases, count4 + 1);
        }

        req.setAttribute("name", name);
        req.setAttribute("surname", surname);
        req.setAttribute("age", age);
        req.setAttribute("statistic", statistic);

        RequestDispatcher rDisp =
                getServletContext().getRequestDispatcher("/stat.jsp");
        rDisp.forward(req, resp);
    }

}
