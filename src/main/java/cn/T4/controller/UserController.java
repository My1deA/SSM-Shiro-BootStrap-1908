package cn.T4.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(path = "/user")
public class UserController {

    @RequestMapping("/login")
    public String login(@RequestParam("username")String username,
                        @RequestParam("password")String password,
                        Model model){
        Subject currentUser = SecurityUtils.getSubject();

        if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            token.setRememberMe(true);
            try {
                //认证
                currentUser.login(token);
            } catch (UnknownAccountException uae) {//未知用户异常
                System.out.println(uae.getMessage());
                model.addAttribute("msg","用户名不存在");
                return "login";
            } catch (IncorrectCredentialsException ice) {//不正确匹配器异常
                System.out.println(ice.getMessage());
                model.addAttribute("msg","用户名密码错误");
                return "login";
            } catch (LockedAccountException lae) {//账号锁定异常
                System.out.println(lae.getMessage());
                model.addAttribute("msg","该用户账号被锁定");
                return "login";
            } catch (AuthenticationException ae) {
                System.out.println(ae.getMessage());
                model.addAttribute("msg","用户名不存在");
                return "login";
            }
        }
       /* return "redirect:/pages/test.jsp";*/
        return "redirect:/main.jsp";
    }

    @RequestMapping("/logout")
    public String logout(){
        Subject currentUser=SecurityUtils.getSubject();
        currentUser.logout();
        return "login";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }
}
