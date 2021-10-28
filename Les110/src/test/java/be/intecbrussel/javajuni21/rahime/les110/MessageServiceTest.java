package be.intecbrussel.javajuni21.rahime.les110;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.util.List;
import static org.junit.jupiter.api.Assertions.*;

class MessageServiceTest {

    @DisplayName("Testing welcome message success scenario")
    @Test
    void welcome() {
        String expected = "Welcome to JUnit5 Testing App!";
        String actual = MessageService.welcome();
        Assertions.assertEquals(expected, actual);
    }

    @DisplayName("Testing welcome message with all lower cased failure scenario")
    @Test
    void welcomeFailureWithLowerCaseLetters() {
        String expected = "welcome to jUnit testing app";
        String actual = MessageService.welcome();
        Assertions.assertNotEquals(expected, actual);
    }

    @DisplayName("Testing welcome message success scenario")
    @Test
    void goodbye() {
        String expected = "Thank you for choosing our app!";
        String actual = MessageService.goodbye();
        Assertions.assertEquals(expected, actual);


    }


    @DisplayName("Testing goodbye message with all lowercased failure")
    @Test
    void goodbyeFailureWithLowerCaseLetters() {
        String expected = "thank you for choosing our app!";
        String actual = MessageService.goodbye();
        Assertions.assertNotEquals(expected, actual);
    }

    @DisplayName("Testing send method success scenario")
    @Test
    void sendSucces() {

        String expected = "Message from " + "yilmaz@mail.be" + " to " + "justin@rich.com" + ": " + "Hello Richie rich " + "\n" + "Sing no more!";
        String actual = MessageService.send(
                "yilmaz@mail.be", "justin@rich.com",
                "Hello Richie rich ", "Sing no more!");
        Assertions.assertEquals(expected, actual);
    }

    @DisplayName("Testing send method with incorrect input failure scenario")
    @Test
    void sendFailWhenInputIsIncorrect() {
        String expected = "Message from " + "yilmaz@mail.be" + " to " + "justin@rich.com" + ": " + "Hello Richie rich " + "\n" + "Sing no more!";
        String actual1 = MessageService.send(
                "abc@@@mail.be", "justin@rich.com",
                "Hello Richie rich ", "Sing no more!");


        String actual2 = MessageService.send(
                "yilmaz@mail.be", "123/5",
                "Hello Richie rich ", "Sing no more!");


        String actual3 = MessageService.send(
                "yilmaz@mail.be", "justin@rich.com",
                "Merhaba", "Sing no more!");

        String actual4 = MessageService.send(
                "yilmaz@mail.be", "justin@rich.com",
                "Hello Richie rich", "Please sing everyone fancies you!");

        Assertions.assertNotEquals(expected, actual1);
        Assertions.assertNotEquals(expected, actual2);
        Assertions.assertNotEquals(expected, actual3);
        Assertions.assertNotEquals(expected, actual4);

    }



    @DisplayName("Testing sendToEveryOne method success scenario")
    @Test
    void sendToEveryOneSuccess() {

        Integer expected = 5;

        MessageService.clear();

        MessageService.add("yilmaz@mail.be");
        MessageService.add("justin@mail.be");
        MessageService.add("nikola@mail.be");
        MessageService.add("robert@mail.be");
        MessageService.add("elon@mail.be");

        Integer actual = MessageService.sendToEveryone(
                "yilmaz@mail.be",
                "Hello to Everyone",
                "Please do not follow Justin on Instagram!");

        Assertions.assertEquals(expected,actual);

    }


}

