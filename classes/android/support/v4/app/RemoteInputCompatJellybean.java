package android.support.v4.app;

import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(16)
@RequiresApi(16)
class RemoteInputCompatJellybean {
  public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
  
  private static final String KEY_ALLOW_FREE_FORM_INPUT = "allowFreeFormInput";
  
  private static final String KEY_CHOICES = "choices";
  
  private static final String KEY_EXTRAS = "extras";
  
  private static final String KEY_LABEL = "label";
  
  private static final String KEY_RESULT_KEY = "resultKey";
  
  public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
  
  static void addResultsToIntent(RemoteInputCompatBase$RemoteInput[] paramArrayOfRemoteInputCompatBase$RemoteInput, Intent paramIntent, Bundle paramBundle) {
    Bundle bundle = new Bundle();
    int j = paramArrayOfRemoteInputCompatBase$RemoteInput.length;
    for (int i = 0; i < j; i++) {
      RemoteInputCompatBase$RemoteInput remoteInputCompatBase$RemoteInput = paramArrayOfRemoteInputCompatBase$RemoteInput[i];
      Object object = paramBundle.get(remoteInputCompatBase$RemoteInput.getResultKey());
      if (object instanceof CharSequence)
        bundle.putCharSequence(remoteInputCompatBase$RemoteInput.getResultKey(), (CharSequence)object); 
    } 
    Intent intent = new Intent();
    intent.putExtra("android.remoteinput.resultsData", bundle);
    paramIntent.setClipData(ClipData.newIntent("android.remoteinput.results", intent));
  }
  
  static RemoteInputCompatBase$RemoteInput fromBundle(Bundle paramBundle, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    return paramRemoteInputCompatBase$RemoteInput$Factory.build(paramBundle.getString("resultKey"), paramBundle.getCharSequence("label"), paramBundle.getCharSequenceArray("choices"), paramBundle.getBoolean("allowFreeFormInput"), paramBundle.getBundle("extras"));
  }
  
  static RemoteInputCompatBase$RemoteInput[] fromBundleArray(Bundle[] paramArrayOfBundle, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    if (paramArrayOfBundle == null)
      return null; 
    RemoteInputCompatBase$RemoteInput[] arrayOfRemoteInputCompatBase$RemoteInput = paramRemoteInputCompatBase$RemoteInput$Factory.newArray(paramArrayOfBundle.length);
    for (int i = 0; i < paramArrayOfBundle.length; i++)
      arrayOfRemoteInputCompatBase$RemoteInput[i] = fromBundle(paramArrayOfBundle[i], paramRemoteInputCompatBase$RemoteInput$Factory); 
    return arrayOfRemoteInputCompatBase$RemoteInput;
  }
  
  static Bundle getResultsFromIntent(Intent paramIntent) {
    ClipData clipData = paramIntent.getClipData();
    if (clipData != null) {
      ClipDescription clipDescription = clipData.getDescription();
      if (clipDescription.hasMimeType("text/vnd.android.intent") && clipDescription.getLabel().equals("android.remoteinput.results"))
        return (Bundle)clipData.getItemAt(0).getIntent().getExtras().getParcelable("android.remoteinput.resultsData"); 
    } 
    return null;
  }
  
  static Bundle toBundle(RemoteInputCompatBase$RemoteInput paramRemoteInputCompatBase$RemoteInput) {
    Bundle bundle = new Bundle();
    bundle.putString("resultKey", paramRemoteInputCompatBase$RemoteInput.getResultKey());
    bundle.putCharSequence("label", paramRemoteInputCompatBase$RemoteInput.getLabel());
    bundle.putCharSequenceArray("choices", paramRemoteInputCompatBase$RemoteInput.getChoices());
    bundle.putBoolean("allowFreeFormInput", paramRemoteInputCompatBase$RemoteInput.getAllowFreeFormInput());
    bundle.putBundle("extras", paramRemoteInputCompatBase$RemoteInput.getExtras());
    return bundle;
  }
  
  static Bundle[] toBundleArray(RemoteInputCompatBase$RemoteInput[] paramArrayOfRemoteInputCompatBase$RemoteInput) {
    if (paramArrayOfRemoteInputCompatBase$RemoteInput == null)
      return null; 
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfRemoteInputCompatBase$RemoteInput.length];
    for (int i = 0; i < paramArrayOfRemoteInputCompatBase$RemoteInput.length; i++)
      arrayOfBundle[i] = toBundle(paramArrayOfRemoteInputCompatBase$RemoteInput[i]); 
    return arrayOfBundle;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\RemoteInputCompatJellybean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */