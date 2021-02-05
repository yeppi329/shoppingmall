package controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.ActionForward;
import action.Action;
import action.DogCartAddAction;
import action.DogCartListAction;
import action.DogCartQtyDownAction;
import action.DogCartQtyUpAction;
import action.DogCartRemoveAction;
import action.DogCartSearchAction;
import action.DogListAction;
import action.DogRegistAction;
import action.DogRegistFormAction;
import action.DogViewAction;

/**
 * Servlet Filter implementation class DogFrontControllerFilter
 */
@WebFilter("*.dog")
public class DogFrontControllerFilter implements Filter {

    /**
     * Default constructor. 
     */
    public DogFrontControllerFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// pass the request along the filter chain
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		String requestURI = request.getRequestURI();
    	// /project/boardWriteForm.bo
    	String contextPath = request.getContextPath();
    	// /project
    	String command = 
        requestURI.substring(contextPath.length());
    	//  /boardWriteForm.bo
    	
    	Action action = null;
    	   //�� Action ��ü ���� ������ �����ϰ� �ִ� �������̽�.
    	//��û�� ó���� �� �ش� ��û�� ó���� Action ��ü���� �ϳ��� �����ؼ�
    	//�ش� ��ü�� Action �������̽��� ���۷��� ������ ������..

    	
    	ActionForward forward = null;
    	
    	if(command.equals("/dogList.dog")){
    		action = new DogListAction();
    		try{
    			forward = action.execute(request, response);
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	else if(command.equals("/dogView.dog")){
    		action = new DogViewAction();
    		try{
    			forward = action.execute(request, response);
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	
    	else if(command.equals("/dogCartAdd.dog")){
    		action = new DogCartAddAction();
    		try{
    			forward = action.execute(request, response);
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	
    	else if(command.equals("/dogCartList.dog")){
    		action = new DogCartListAction();
    		try{
    			forward = action.execute(request, response);
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    	}
		else if(command.equals("/dogCartSearch.dog")){
			action = new DogCartSearchAction();
			//������Ʈ�� + ��� + ����(?)
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
    	else if(command.equals("/dogCartRemove.dog")){
    		action = new DogCartRemoveAction();
    		try{
    			forward = action.execute(request, response);
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	else if(command.equals("/dogCartQtyUp.dog")){
    		action = new DogCartQtyUpAction();
    		try{
    			forward = action.execute(request, response);
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	else if(command.equals("/dogCartQtyDown.dog")){
    		action = new DogCartQtyDownAction();
    		try{
    			forward = action.execute(request, response);
    		}
    		catch(Exception e){
    			e.printStackTrace();
    		}
    	}
    	
    	else if(command.equals("/dogRegist.dog")){
			action = new DogRegistAction();
			//������Ʈ�� + ��� + ����(?)
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/dogRegistForm.dog")){
			action = new DogRegistFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
    	if(forward != null){
    		if(forward.isRedirect()){
    			response.sendRedirect(forward.getPath());
    		}
    		else{
    			RequestDispatcher dispatcher
    			= request.getRequestDispatcher(forward.getPath());
    			dispatcher.forward(request, response);
    		}
    	}
		//chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
