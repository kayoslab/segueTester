# segueTester
Since Segues always feel a little bit *timey-wimey* and *wibbly-wobbly* it occured during a development process, that we were divided over the Question at which point of the Controller Transition the prepareForSegue Function is called. On a calm evening I wanted to check if they always follow the exact same pattern of:

1. Prepared For Segue
2. View Did Load
3. View Will Appear
4. View Did Appear

To determine this I created a quick implementation of an UI-Test. Just for the sake of documentation it's public available here. To spoiler you, the right order is satisfied in 1.000 of 1.000 cases :)
