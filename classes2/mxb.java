import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.support.annotation.Nullable;

public class mxb {
  private ClipboardManager a;
  
  public mxb(ClipboardManager paramClipboardManager) {
    this.a = paramClipboardManager;
  }
  
  public mxb(Context paramContext) {
    this((ClipboardManager)paramContext.getSystemService("clipboard"));
  }
  
  @Nullable
  public CharSequence a() {
    if (this.a.hasPrimaryClip()) {
      ClipData clipData = this.a.getPrimaryClip();
      ClipDescription clipDescription = clipData.getDescription();
      if (clipDescription.hasMimeType("text/plain") || clipDescription.hasMimeType("text/html"))
        return clipData.getItemAt(0).getText(); 
    } 
    return null;
  }
  
  public void a(ClipboardManager.OnPrimaryClipChangedListener paramOnPrimaryClipChangedListener) {
    this.a.addPrimaryClipChangedListener(paramOnPrimaryClipChangedListener);
  }
  
  public void b(ClipboardManager.OnPrimaryClipChangedListener paramOnPrimaryClipChangedListener) {
    this.a.removePrimaryClipChangedListener(paramOnPrimaryClipChangedListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */