package testee.helper;

/**
 * Created by iwest-win10 on 12/28/2015.
 */
public class StringHelper {
    public static boolean isNullOrWhitespace(String s) {
        if (s == null)
            return true;
        for (int i = 0; i < s.length(); i++) {
            if (!Character.isWhitespace(s.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
