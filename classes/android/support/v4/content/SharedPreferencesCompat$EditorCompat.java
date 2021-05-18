package android.support.v4.content;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;

public final class SharedPreferencesCompat$EditorCompat {
  private static SharedPreferencesCompat$EditorCompat sInstance;
  
  private final SharedPreferencesCompat$EditorCompat$Helper mHelper = new SharedPreferencesCompat$EditorCompat$Helper();
  
  public static SharedPreferencesCompat$EditorCompat getInstance() {
    if (sInstance == null)
      sInstance = new SharedPreferencesCompat$EditorCompat(); 
    return sInstance;
  }
  
  public void apply(@NonNull SharedPreferences.Editor paramEditor) {
    this.mHelper.apply(paramEditor);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\SharedPreferencesCompat$EditorCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */