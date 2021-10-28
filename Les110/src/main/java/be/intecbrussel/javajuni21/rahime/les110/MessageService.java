package be.intecbrussel.javajuni21.rahime.les110;

import java.util.ArrayList;
import java.util.List;

public class MessageService {

    private static List<String> emailList = new ArrayList<>();

    private static Integer messageCount = 0;

    public static void add(String email) {
        emailList.add(email);

    }

    public static void remove(String email) {
        emailList.remove(email);
    }


    public static void clear() {
        emailList.clear();
    }


    public static String welcome() {


        return "Welcome to JUnit5 Testing App!";
    }

    private static boolean isInBannedList(String email) {
        if (email.equalsIgnoreCase("chef@mail.be")) {
            return true;
        } else {
            return false;
        }


    }

    public static String send(String fromEmail, String toEmail, String subject, String content) {

        String fullMessage = "Message from " + fromEmail + " to " + toEmail + ": " + subject + "\n" + content;

        return fullMessage;

    }

    public static String goodbye() {

        return "Thank you for choosing our app!";
    }

    public static Integer sendToEveryone(String fromEmail, String subject, String content) {
        Integer noOfMessagesSent = 0;

        for (String toEmail : emailList) {

            if (!isInBannedList(toEmail)) {

                System.out.println(send(fromEmail, toEmail, subject, content));
                noOfMessagesSent++;
            }


        }
        return noOfMessagesSent;

    }

    public static List<String> getEmailList() {

        return emailList;
    }

}
