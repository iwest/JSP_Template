package testee.model;

import java.io.Serializable;

/**
 * Created by iwest-win10 on 12/28/2015.
 */
public class ViewAlert implements Serializable {
    private String message;
    public void setMessage(String message) { this.message = message; }
    public String getMessage() { return message; }

    private String type;
    public void setType(String type) { this.type = type; }
    public String getType() { return type; }

    public ViewAlert() {
        message = "";
        type = "";
    }

    public ViewAlert(String message, String type) {
        this.message = message;
        this.type = type;
    }
}
