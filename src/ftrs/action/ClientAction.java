package ftrs.action;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ftrs.dao.ClientDao;
import ftrs.entity.Client;
/**
 * Servlet implementation class ClientAction
 */
@WebServlet("/ClientAction")
public class ClientAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ClientDao clientDao = null; // 声明ManagerDAO的对象

	public ClientAction() {
		this.clientDao = new ClientDao();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println("获取的查询字符串：" + action);
		if (action == null || "".equals(action)) {
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else if ("login".equals(action)) {
			login(request, response);
		} else if ("regist".equals(action)) {
			regist(request, response);
		}
	}

	// 注册
	public void regist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Client client = new Client();
		client.setEmail(request.getParameter("email"));
		client.setId(request.getParameter("id"));
		client.setName(request.getParameter("name"));
		client.setPwd(request.getParameter("pwd"));
		client.setSex(request.getParameter("sex"));
		client.setBirDate(Date.valueOf(request.getParameter("birthDay")));

		// insert
		boolean success = clientDao.insert(client);
		if (success) {
			//转到登录
			login(request, response, client.getId(), client.getPwd());
		}
	}

	//登录
	public void login(HttpServletRequest request, HttpServletResponse response,
			String userName, String pwd) throws ServletException, IOException {
		Client client = new Client();
		client.setId(userName);
		client.setEmail(userName);
		client.setPwd(pwd);
		Client client2 = clientDao.check(client);
		if (client2 != null) {
			/********** 将用户名称保存到session中 ***********************************/
			HttpSession session = request.getSession();
			session.setAttribute("client", client2);
			session.setAttribute("userName", client2.getName());
			session.setAttribute("loged", "true");
			/***********************************************************************************/
			request.getRequestDispatcher("client.jsp").forward(request,
					response);// 转到系统主界面
		} else {
			request.setAttribute("error", "您输入的管理员名称或密码错误！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);// 转到错误提示页
		}
	}

	// 登录
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		login(request, response, request.getParameter("username"), request.getParameter("pwd"));
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
