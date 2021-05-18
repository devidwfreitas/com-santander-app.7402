import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.FacebookRequestError;

class bre extends WebViewClient {
  private bre(bqy parambqy) {}
  
  public void onPageFinished(WebView paramWebView, String paramString) {
    super.onPageFinished(paramWebView, paramString);
    if (!bqy.b(this.a))
      bqy.c(this.a).dismiss(); 
    bqy.d(this.a).setBackgroundColor(0);
    bqy.e(this.a).setVisibility(0);
    bqy.f(this.a).setVisibility(0);
    bqy.a(this.a, true);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap) {
    bqq.c("FacebookSDK.WebDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if (!bqy.b(this.a))
      bqy.c(this.a).show(); 
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2) {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    this.a.a(new bho(paramString1, paramInt, paramString2));
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError) {
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    paramSslErrorHandler.cancel();
    this.a.a(new bho(null, -11, null));
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
    boolean bool = false;
    bqq.c("FacebookSDK.WebDialog", "Redirect URL: " + paramString);
    if (paramString.startsWith(bqy.a(this.a))) {
      byte b;
      Bundle bundle = this.a.a(paramString);
      String str1 = bundle.getString("error");
      paramString = str1;
      if (str1 == null)
        paramString = bundle.getString("error_type"); 
      String str2 = bundle.getString("error_msg");
      str1 = str2;
      if (str2 == null)
        str1 = bundle.getString("error_message"); 
      str2 = str1;
      if (str1 == null)
        str2 = bundle.getString("error_description"); 
      str1 = bundle.getString("error_code");
      if (!bqq.a(str1)) {
        try {
          b = Integer.parseInt(str1);
        } catch (NumberFormatException numberFormatException) {
          b = -1;
        } 
      } else {
        b = -1;
      } 
      if (bqq.a(paramString) && bqq.a(str2) && b == -1) {
        this.a.a(bundle);
      } else if (paramString != null && (paramString.equals("access_denied") || paramString.equals("OAuthAccessDeniedException"))) {
        this.a.cancel();
      } else if (b == 4201) {
        this.a.cancel();
      } else {
        FacebookRequestError facebookRequestError = new FacebookRequestError(b, paramString, str2);
        this.a.a(new bid(facebookRequestError, str2));
      } 
      return true;
    } 
    if (paramString.startsWith("fbconnect://cancel")) {
      this.a.cancel();
      return true;
    } 
    if (!paramString.contains("touch"))
      try {
        this.a.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
        return true;
      } catch (ActivityNotFoundException activityNotFoundException) {
        return false;
      }  
    return bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bre.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */