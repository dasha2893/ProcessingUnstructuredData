
public class TwitterAccount {
    private String consumer_Key;
    private String consumer_Secret;
    private String accessToken;
    private String accessTokenSecret;

    public TwitterAccount(String consumer_Key, String consumer_Secret, String accessToken, String accessTokenSecret) {
        this.consumer_Key = consumer_Key;
        this.consumer_Secret = consumer_Secret;
        this.accessToken = accessToken;
        this.accessTokenSecret = accessTokenSecret;
    }

    public String getConsumer_Key() {
        return consumer_Key;
    }

    public void setConsumer_Key(String consumer_Key) {
        this.consumer_Key = consumer_Key;
    }

    public String getConsumer_Secret() {
        return consumer_Secret;
    }

    public void setConsumer_Secret(String consumer_Secret) {
        this.consumer_Secret = consumer_Secret;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getAccessTokenSecret() {
        return accessTokenSecret;
    }

    public void setAccessTokenSecret(String accessTokenSecret) {
        this.accessTokenSecret = accessTokenSecret;
    }

    @Override
    public String toString() {
        return "TwitterAccount{" +
                "consumer_Key='" + consumer_Key + '\'' +
                ", consumer_Secret='" + consumer_Secret + '\'' +
                ", accessToken='" + accessToken + '\'' +
                ", accessTokenSecret='" + accessTokenSecret + '\'' +
                '}';
    }
}
