# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

-keep class com.google.android.libraries.launcherclient.** {*;}
-keep class ua.itaysonlab.hfsdk.** { *; }

-keep class org.kodein.type.TypeReference { *; }

# For Okio
# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# For TagSoup
-keep class org.ccil.cowan.tagsoup.** { *; }

# For Jsoup
-keep class org.jsoup.**  { *; }

# For Rome
-keep class com.rometools.** { *; }
-keep class com.rometools.rome.** { *; }
-keep class com.rometools.rome.feed.synd.impl.ConverterForAtom10 { *; }
-keep class com.rometools.rome.feed.synd.SyndFeedImpl { *; }

## Autogenerated in missing_rules.txt deep in build folder
-dontwarn com.android.org.conscrypt.SSLParametersImpl
-dontwarn org.apache.harmony.xnet.provider.jsse.SSLParametersImpl
-dontwarn org.bouncycastle.jsse.BCSSLParameters
-dontwarn org.bouncycastle.jsse.BCSSLSocket
-dontwarn org.bouncycastle.jsse.provider.BouncyCastleJsseProvider
-dontwarn org.openjsse.javax.net.ssl.SSLParameters
-dontwarn org.openjsse.javax.net.ssl.SSLSocket
-dontwarn org.openjsse.net.ssl.OpenJSSE
-dontwarn org.slf4j.impl.StaticLoggerBinder