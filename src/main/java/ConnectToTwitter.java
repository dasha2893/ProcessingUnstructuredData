import org.springframework.social.twitter.api.Tweet;
import org.springframework.social.twitter.api.impl.TwitterTemplate;

import java.util.List;


public class ConnectToTwitter {
    public static void main(String[] args) {
        TwitterAccount twitterAccount = new TwitterAccount("FE3oc3mDHf945MpCn77QC6TOO","L7H9FsWqY8ATMJPoRrjbTUbTVr49uaXMSklvhd3C8Q6cW4jFgo","697749814147207171-uxaBONI0t95pJAhza6XOgyjHFNVpIg3","SNsfIVo5pMXdF3sS1UQ4gtTLQrjEmuYEAeHmrLkEOdUNY");
        TwitterTemplate twitter = new TwitterTemplate(twitterAccount.getConsumer_Key(),twitterAccount.getConsumer_Secret(),twitterAccount.getAccessToken(),twitterAccount.getAccessTokenSecret());
        List<Tweet> tweetList = twitter.searchOperations().search("news").getTweets();
        for (Tweet tweet : tweetList) System.out.println("User: " + tweet.getFromUser() + "   tweet = " + tweet.getText());
    }

}
