package ca.delmar.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;
import java.lang.reflect.Method;

/**
 * Created by jinw on 21/01/14.
 */
@Controller
public class SubscriptionController {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @RequestMapping(value = "/")
    public String confirm(@RequestParam(value = "id", required = true) String id,
                          @RequestParam(value = "email", required = true) String email,
                          @RequestParam(value = "receive", required = true) String receive,
                          HttpServletRequest request) {
        if (email != null && !email.equals("")) {
            int rowsUpdated = updateSubscription(email, request.getRemoteAddr(), id, receive);
            System.out.println(rowsUpdated + " rows updated for " + email + " and aaid: " + id);
        }
        return "confirmed";
    }

    // ------- service methods --------
    public int updateSubscription(String email, String ip, String id, String receive) {
        return jdbcTemplate.update(SQL_UPDATE_SUBSCRIPTION_BY_EMAIL, new Object[]{receive, ip, id, email});
    }

    private static final String SQL_UPDATE_SUBSCRIPTION_BY_EMAIL =
            "update tblaccountaddresscontact set RECEIVENOTICES = ?, NOTICE_CONFIRMED = SYSDATE, NOTICE_FROM = ? where ACCOUNTADDRESSID = ? AND EMAIL = ?";

}
