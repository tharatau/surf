#include <stdio.h>
#include <curl/curl.h>

int main()
{
    CURL *curl;
    curl = curl_easy_init();
    if (curl) {
        CURLcode res;
        curl_easy_setopt(curl, CURLOPT_URL, "https://example.com");
        res = curl_easy_perform(curl);
        curl_easy_cleanup(curl);
    }

    return 0;
}