import android.os.Bundle;
import android.os.Parcelable;

public final class ean {
  public static <T extends Parcelable> T a(Bundle paramBundle, String paramString) {
    if (paramBundle != null) {
      paramBundle.setClassLoader(ean.class.getClassLoader());
      paramBundle = paramBundle.getBundle("map_state");
      if (paramBundle != null) {
        paramBundle.setClassLoader(ean.class.getClassLoader());
        return (T)paramBundle.getParcelable(paramString);
      } 
    } 
    return null;
  }
  
  public static void a(Bundle paramBundle1, Bundle paramBundle2) {
    if (paramBundle1 != null && paramBundle2 != null) {
      Parcelable parcelable = (Parcelable)a(paramBundle1, "MapOptions");
      if (parcelable != null)
        a(paramBundle2, "MapOptions", parcelable); 
      parcelable = a(paramBundle1, "StreetViewPanoramaOptions");
      if (parcelable != null)
        a(paramBundle2, "StreetViewPanoramaOptions", parcelable); 
      parcelable = a(paramBundle1, "camera");
      if (parcelable != null)
        a(paramBundle2, "camera", parcelable); 
      if (paramBundle1.containsKey("position"))
        paramBundle2.putString("position", paramBundle1.getString("position")); 
      if (paramBundle1.containsKey("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT")) {
        paramBundle2.putBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", paramBundle1.getBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", false));
        return;
      } 
    } 
  }
  
  public static void a(Bundle paramBundle, String paramString, Parcelable paramParcelable) {
    paramBundle.setClassLoader(ean.class.getClassLoader());
    Bundle bundle2 = paramBundle.getBundle("map_state");
    Bundle bundle1 = bundle2;
    if (bundle2 == null)
      bundle1 = new Bundle(); 
    bundle1.setClassLoader(ean.class.getClassLoader());
    bundle1.putParcelable(paramString, paramParcelable);
    paramBundle.putBundle("map_state", bundle1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */