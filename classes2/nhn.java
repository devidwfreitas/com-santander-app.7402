import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import java.util.Locale;

final class nhn extends WebChromeClient {
  nhn(nhc paramnhc) {}
  
  public boolean onConsoleMessage(ConsoleMessage paramConsoleMessage) {
    String str = String.format(Locale.ROOT, "Src: %s; Line: %d; %s", new Object[] { paramConsoleMessage.sourceId(), Integer.valueOf(paramConsoleMessage.lineNumber()), paramConsoleMessage.message() });
    switch (nho.a[paramConsoleMessage.messageLevel().ordinal()]) {
      default:
        if (this.a.a())
          Log.v("Tealium-WebView", str); 
        return true;
      case 1:
        if (this.a.b()) {
          Log.d("Tealium-WebView", str);
          return true;
        } 
        return true;
      case 2:
        if (this.a.e()) {
          Log.e("Tealium-WebView", str);
          return true;
        } 
        return true;
      case 3:
        if (this.a.c()) {
          Log.i("Tealium-WebView", str);
          return true;
        } 
        return true;
      case 4:
        if (this.a.a()) {
          Log.v("Tealium-WebView", str);
          return true;
        } 
        return true;
      case 5:
        break;
    } 
    if (this.a.d()) {
      Log.w("Tealium-WebView", str);
      return true;
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nhn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */