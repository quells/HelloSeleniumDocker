import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class HelloTest extends BaseTest {

    @Test
    public void githubLink() {
        driver.get("https://kaiwells.me");
        String ghLink = get("//ul/li/a").getAttribute("href");
        assertThat(ghLink).isEqualTo("https://github.com/quells");
    }
}
