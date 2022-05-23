package io.sebmoreno;

import com.intuit.karate.junit5.Karate;

class GuruRunner {
    @Karate.Test
    Karate testGuru() {
        return Karate.run("guru-login").relativeTo(getClass());
    }
}
