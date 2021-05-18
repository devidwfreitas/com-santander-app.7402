import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;

public class boa extends DialogFragment {
  public static final String a = "FacebookDialogFragment";
  
  private Dialog b;
  
  private void a(Bundle paramBundle) {
    FragmentActivity fragmentActivity = getActivity();
    Intent intent = new Intent();
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    intent.putExtras(bundle);
    fragmentActivity.setResult(-1, intent);
    fragmentActivity.finish();
  }
  
  private void a(Bundle paramBundle, bhp parambhp) {
    boolean bool;
    FragmentActivity fragmentActivity = getActivity();
    Intent intent = bqa.a(fragmentActivity.getIntent(), paramBundle, parambhp);
    if (parambhp == null) {
      bool = true;
    } else {
      bool = false;
    } 
    fragmentActivity.setResult(bool, intent);
    fragmentActivity.finish();
  }
  
  public void a(Dialog paramDialog) {
    this.b = paramDialog;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    super.onConfigurationChanged(paramConfiguration);
    if (this.b instanceof bqy && isResumed())
      ((bqy)this.b).e(); 
  }
  
  public void onCreate(Bundle paramBundle) {
    bqy bqy;
    super.onCreate(paramBundle);
    if (this.b == null) {
      FragmentActivity fragmentActivity = getActivity();
      Bundle bundle = bqa.d(fragmentActivity.getIntent());
      if (!bundle.getBoolean("is_fallback", false)) {
        String str = bundle.getString("action");
        bundle = bundle.getBundle("params");
        if (bqq.a(str)) {
          bqq.c("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
          fragmentActivity.finish();
          return;
        } 
        bqy = (new brd((Context)fragmentActivity, str, bundle)).a(new bob(this)).a();
      } else {
        String str = bundle.getString("url");
        if (bqq.a(str)) {
          bqq.c("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
          bqy.finish();
          return;
        } 
        bqy = new boh((Context)bqy, str, String.format("fb%s://bridge/", new Object[] { bhv.l() }));
        bqy.a(new boc(this));
      } 
    } else {
      return;
    } 
    this.b = bqy;
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    if (this.b == null) {
      a((Bundle)null, (bhp)null);
      setShowsDialog(false);
    } 
    return this.b;
  }
  
  public void onDestroyView() {
    if (getDialog() != null && getRetainInstance())
      getDialog().setDismissMessage(null); 
    super.onDestroyView();
  }
  
  public void onResume() {
    super.onResume();
    if (this.b instanceof bqy)
      ((bqy)this.b).e(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\boa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */