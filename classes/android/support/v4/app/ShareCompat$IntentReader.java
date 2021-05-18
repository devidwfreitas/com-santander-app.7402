package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import java.util.ArrayList;

public class ShareCompat$IntentReader {
  private static final String TAG = "IntentReader";
  
  private Activity mActivity;
  
  private ComponentName mCallingActivity;
  
  private String mCallingPackage;
  
  private Intent mIntent;
  
  private ArrayList<Uri> mStreams;
  
  private ShareCompat$IntentReader(Activity paramActivity) {
    this.mActivity = paramActivity;
    this.mIntent = paramActivity.getIntent();
    this.mCallingPackage = ShareCompat.getCallingPackage(paramActivity);
    this.mCallingActivity = ShareCompat.getCallingActivity(paramActivity);
  }
  
  public static ShareCompat$IntentReader from(Activity paramActivity) {
    return new ShareCompat$IntentReader(paramActivity);
  }
  
  public ComponentName getCallingActivity() {
    return this.mCallingActivity;
  }
  
  public Drawable getCallingActivityIcon() {
    if (this.mCallingActivity == null)
      return null; 
    PackageManager packageManager = this.mActivity.getPackageManager();
    try {
      return packageManager.getActivityIcon(this.mCallingActivity);
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("IntentReader", "Could not retrieve icon for calling activity", (Throwable)nameNotFoundException);
      return null;
    } 
  }
  
  public Drawable getCallingApplicationIcon() {
    if (this.mCallingPackage == null)
      return null; 
    PackageManager packageManager = this.mActivity.getPackageManager();
    try {
      return packageManager.getApplicationIcon(this.mCallingPackage);
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("IntentReader", "Could not retrieve icon for calling application", (Throwable)nameNotFoundException);
      return null;
    } 
  }
  
  public CharSequence getCallingApplicationLabel() {
    if (this.mCallingPackage == null)
      return null; 
    PackageManager packageManager = this.mActivity.getPackageManager();
    try {
      return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mCallingPackage, 0));
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("IntentReader", "Could not retrieve label for calling application", (Throwable)nameNotFoundException);
      return null;
    } 
  }
  
  public String getCallingPackage() {
    return this.mCallingPackage;
  }
  
  public String[] getEmailBcc() {
    return this.mIntent.getStringArrayExtra("android.intent.extra.BCC");
  }
  
  public String[] getEmailCc() {
    return this.mIntent.getStringArrayExtra("android.intent.extra.CC");
  }
  
  public String[] getEmailTo() {
    return this.mIntent.getStringArrayExtra("android.intent.extra.EMAIL");
  }
  
  public String getHtmlText() {
    String str = this.mIntent.getStringExtra("android.intent.extra.HTML_TEXT");
    if (str == null) {
      CharSequence charSequence = getText();
      if (charSequence instanceof Spanned)
        return Html.toHtml((Spanned)charSequence); 
      if (charSequence != null)
        return ShareCompat.IMPL.escapeHtml(charSequence); 
    } 
    return str;
  }
  
  public Uri getStream() {
    return (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
  }
  
  public Uri getStream(int paramInt) {
    if (this.mStreams == null && isMultipleShare())
      this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM"); 
    if (this.mStreams != null)
      return this.mStreams.get(paramInt); 
    if (paramInt == 0)
      return (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM"); 
    throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + paramInt);
  }
  
  public int getStreamCount() {
    if (this.mStreams == null && isMultipleShare())
      this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM"); 
    return (this.mStreams != null) ? this.mStreams.size() : (this.mIntent.hasExtra("android.intent.extra.STREAM") ? 1 : 0);
  }
  
  public String getSubject() {
    return this.mIntent.getStringExtra("android.intent.extra.SUBJECT");
  }
  
  public CharSequence getText() {
    return this.mIntent.getCharSequenceExtra("android.intent.extra.TEXT");
  }
  
  public String getType() {
    return this.mIntent.getType();
  }
  
  public boolean isMultipleShare() {
    return "android.intent.action.SEND_MULTIPLE".equals(this.mIntent.getAction());
  }
  
  public boolean isShareIntent() {
    String str = this.mIntent.getAction();
    return ("android.intent.action.SEND".equals(str) || "android.intent.action.SEND_MULTIPLE".equals(str));
  }
  
  public boolean isSingleShare() {
    return "android.intent.action.SEND".equals(this.mIntent.getAction());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ShareCompat$IntentReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */