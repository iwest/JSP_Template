package testee.helper;

import testee.model.ViewAlert;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

/**
 * Created by iwest-win10 on 12/28/2015.
 */
public class AlertHelper {
    public enum AlertType {
        PRIMARY,
        SECONDARY,
        INFO,
        SUCCESS,
        ALERT,
        ERROR,
        WARNING
    }

    public static void addAlert(HttpServletRequest request, String message, String type) {
        ArrayList<ViewAlert> alerts;
        if (request.getAttribute("alerts") != null) {
            alerts = (ArrayList<ViewAlert>) request.getAttribute("alerts");
        } else {
            alerts = new ArrayList<ViewAlert>();
        }

        alerts.add(new ViewAlert(message, type));
        request.removeAttribute("alerts");
        request.setAttribute("alerts", alerts);
    }

    public static void addAlert(HttpServletRequest request, String message, AlertType type) {
        addAlert(request, message, getTypeByEnum(type));
    }

    public static String getTypeByEnum(AlertType type) {
        switch(type) {
            case SUCCESS:
                return "success";
            case INFO:
                return "primary";
            case ALERT:
                return "alert";
            case ERROR:
                return "alert";
            case SECONDARY:
                return "secondary";
            case PRIMARY:
                return "primary";
            case WARNING:
                return "warning";
            default:
                return "";
        }
    }
}
