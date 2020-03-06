package PresentationLayer;

import DBAccess.UserMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class Oversigt extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
        ArrayList<User> users = UserMapper.getUsers();
        int counter = UserMapper.getUserCounter();

        session.setAttribute("users", users);
        session.setAttribute("counter", counter);

        return "oversigt";
    }
}
