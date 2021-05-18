package android.support.v4.app;

import android.view.MenuItem;

class ShareCompat$ShareCompatImplBase implements ShareCompat$ShareCompatImpl {
  private static void withinStyle(StringBuilder paramStringBuilder, CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    while (paramInt1 < paramInt2) {
      char c = paramCharSequence.charAt(paramInt1);
      if (c == '<') {
        paramStringBuilder.append("&lt;");
      } else if (c == '>') {
        paramStringBuilder.append("&gt;");
      } else if (c == '&') {
        paramStringBuilder.append("&amp;");
      } else if (c > '~' || c < ' ') {
        paramStringBuilder.append("&#" + c + ";");
      } else if (c == ' ') {
        while (paramInt1 + 1 < paramInt2 && paramCharSequence.charAt(paramInt1 + 1) == ' ') {
          paramStringBuilder.append("&nbsp;");
          paramInt1++;
        } 
        paramStringBuilder.append(' ');
      } else {
        paramStringBuilder.append(c);
      } 
      paramInt1++;
    } 
  }
  
  public void configureMenuItem(MenuItem paramMenuItem, ShareCompat$IntentBuilder paramShareCompat$IntentBuilder) {
    paramMenuItem.setIntent(paramShareCompat$IntentBuilder.createChooserIntent());
  }
  
  public String escapeHtml(CharSequence paramCharSequence) {
    StringBuilder stringBuilder = new StringBuilder();
    withinStyle(stringBuilder, paramCharSequence, 0, paramCharSequence.length());
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ShareCompat$ShareCompatImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */