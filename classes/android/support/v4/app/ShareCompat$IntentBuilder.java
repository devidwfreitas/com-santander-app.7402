package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import android.support.annotation.StringRes;
import android.text.Html;
import java.util.ArrayList;

public class ShareCompat$IntentBuilder {
  private Activity mActivity;
  
  private ArrayList<String> mBccAddresses;
  
  private ArrayList<String> mCcAddresses;
  
  private CharSequence mChooserTitle;
  
  private Intent mIntent;
  
  private ArrayList<Uri> mStreams;
  
  private ArrayList<String> mToAddresses;
  
  private ShareCompat$IntentBuilder(Activity paramActivity) {
    this.mActivity = paramActivity;
    this.mIntent = (new Intent()).setAction("android.intent.action.SEND");
    this.mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", paramActivity.getPackageName());
    this.mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", (Parcelable)paramActivity.getComponentName());
    this.mIntent.addFlags(524288);
  }
  
  private void combineArrayExtra(String paramString, ArrayList<String> paramArrayList) {
    byte b;
    String[] arrayOfString1 = this.mIntent.getStringArrayExtra(paramString);
    if (arrayOfString1 != null) {
      b = arrayOfString1.length;
    } else {
      b = 0;
    } 
    String[] arrayOfString2 = new String[paramArrayList.size() + b];
    paramArrayList.toArray(arrayOfString2);
    if (arrayOfString1 != null)
      System.arraycopy(arrayOfString1, 0, arrayOfString2, paramArrayList.size(), b); 
    this.mIntent.putExtra(paramString, arrayOfString2);
  }
  
  private void combineArrayExtra(String paramString, String[] paramArrayOfString) {
    byte b;
    Intent intent = getIntent();
    String[] arrayOfString1 = intent.getStringArrayExtra(paramString);
    if (arrayOfString1 != null) {
      b = arrayOfString1.length;
    } else {
      b = 0;
    } 
    String[] arrayOfString2 = new String[paramArrayOfString.length + b];
    if (arrayOfString1 != null)
      System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, b); 
    System.arraycopy(paramArrayOfString, 0, arrayOfString2, b, paramArrayOfString.length);
    intent.putExtra(paramString, arrayOfString2);
  }
  
  public static ShareCompat$IntentBuilder from(Activity paramActivity) {
    return new ShareCompat$IntentBuilder(paramActivity);
  }
  
  public ShareCompat$IntentBuilder addEmailBcc(String paramString) {
    if (this.mBccAddresses == null)
      this.mBccAddresses = new ArrayList<String>(); 
    this.mBccAddresses.add(paramString);
    return this;
  }
  
  public ShareCompat$IntentBuilder addEmailBcc(String[] paramArrayOfString) {
    combineArrayExtra("android.intent.extra.BCC", paramArrayOfString);
    return this;
  }
  
  public ShareCompat$IntentBuilder addEmailCc(String paramString) {
    if (this.mCcAddresses == null)
      this.mCcAddresses = new ArrayList<String>(); 
    this.mCcAddresses.add(paramString);
    return this;
  }
  
  public ShareCompat$IntentBuilder addEmailCc(String[] paramArrayOfString) {
    combineArrayExtra("android.intent.extra.CC", paramArrayOfString);
    return this;
  }
  
  public ShareCompat$IntentBuilder addEmailTo(String paramString) {
    if (this.mToAddresses == null)
      this.mToAddresses = new ArrayList<String>(); 
    this.mToAddresses.add(paramString);
    return this;
  }
  
  public ShareCompat$IntentBuilder addEmailTo(String[] paramArrayOfString) {
    combineArrayExtra("android.intent.extra.EMAIL", paramArrayOfString);
    return this;
  }
  
  public ShareCompat$IntentBuilder addStream(Uri paramUri) {
    Uri uri = (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
    if (this.mStreams == null && uri == null)
      return setStream(paramUri); 
    if (this.mStreams == null)
      this.mStreams = new ArrayList<Uri>(); 
    if (uri != null) {
      this.mIntent.removeExtra("android.intent.extra.STREAM");
      this.mStreams.add(uri);
    } 
    this.mStreams.add(paramUri);
    return this;
  }
  
  public Intent createChooserIntent() {
    return Intent.createChooser(getIntent(), this.mChooserTitle);
  }
  
  Activity getActivity() {
    return this.mActivity;
  }
  
  public Intent getIntent() {
    boolean bool;
    if (this.mToAddresses != null) {
      combineArrayExtra("android.intent.extra.EMAIL", this.mToAddresses);
      this.mToAddresses = null;
    } 
    if (this.mCcAddresses != null) {
      combineArrayExtra("android.intent.extra.CC", this.mCcAddresses);
      this.mCcAddresses = null;
    } 
    if (this.mBccAddresses != null) {
      combineArrayExtra("android.intent.extra.BCC", this.mBccAddresses);
      this.mBccAddresses = null;
    } 
    if (this.mStreams != null && this.mStreams.size() > 1) {
      bool = true;
    } else {
      bool = false;
    } 
    boolean bool1 = this.mIntent.getAction().equals("android.intent.action.SEND_MULTIPLE");
    if (!bool && bool1) {
      this.mIntent.setAction("android.intent.action.SEND");
      if (this.mStreams != null && !this.mStreams.isEmpty()) {
        this.mIntent.putExtra("android.intent.extra.STREAM", (Parcelable)this.mStreams.get(0));
      } else {
        this.mIntent.removeExtra("android.intent.extra.STREAM");
      } 
      this.mStreams = null;
    } 
    if (bool && !bool1) {
      this.mIntent.setAction("android.intent.action.SEND_MULTIPLE");
      if (this.mStreams != null && !this.mStreams.isEmpty()) {
        this.mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.mStreams);
        return this.mIntent;
      } 
    } else {
      return this.mIntent;
    } 
    this.mIntent.removeExtra("android.intent.extra.STREAM");
    return this.mIntent;
  }
  
  public ShareCompat$IntentBuilder setChooserTitle(@StringRes int paramInt) {
    return setChooserTitle(this.mActivity.getText(paramInt));
  }
  
  public ShareCompat$IntentBuilder setChooserTitle(CharSequence paramCharSequence) {
    this.mChooserTitle = paramCharSequence;
    return this;
  }
  
  public ShareCompat$IntentBuilder setEmailBcc(String[] paramArrayOfString) {
    this.mIntent.putExtra("android.intent.extra.BCC", paramArrayOfString);
    return this;
  }
  
  public ShareCompat$IntentBuilder setEmailCc(String[] paramArrayOfString) {
    this.mIntent.putExtra("android.intent.extra.CC", paramArrayOfString);
    return this;
  }
  
  public ShareCompat$IntentBuilder setEmailTo(String[] paramArrayOfString) {
    if (this.mToAddresses != null)
      this.mToAddresses = null; 
    this.mIntent.putExtra("android.intent.extra.EMAIL", paramArrayOfString);
    return this;
  }
  
  public ShareCompat$IntentBuilder setHtmlText(String paramString) {
    this.mIntent.putExtra("android.intent.extra.HTML_TEXT", paramString);
    if (!this.mIntent.hasExtra("android.intent.extra.TEXT"))
      setText((CharSequence)Html.fromHtml(paramString)); 
    return this;
  }
  
  public ShareCompat$IntentBuilder setStream(Uri paramUri) {
    if (!this.mIntent.getAction().equals("android.intent.action.SEND"))
      this.mIntent.setAction("android.intent.action.SEND"); 
    this.mStreams = null;
    this.mIntent.putExtra("android.intent.extra.STREAM", (Parcelable)paramUri);
    return this;
  }
  
  public ShareCompat$IntentBuilder setSubject(String paramString) {
    this.mIntent.putExtra("android.intent.extra.SUBJECT", paramString);
    return this;
  }
  
  public ShareCompat$IntentBuilder setText(CharSequence paramCharSequence) {
    this.mIntent.putExtra("android.intent.extra.TEXT", paramCharSequence);
    return this;
  }
  
  public ShareCompat$IntentBuilder setType(String paramString) {
    this.mIntent.setType(paramString);
    return this;
  }
  
  public void startChooser() {
    this.mActivity.startActivity(createChooserIntent());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\ShareCompat$IntentBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */