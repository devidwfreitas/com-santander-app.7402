package android.support.v4.content;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;

class SharedPreferencesCompat$EditorCompat$Helper {
  public void apply(@NonNull SharedPreferences.Editor paramEditor) {
    try {
      paramEditor.apply();
      return;
    } catch (AbstractMethodError abstractMethodError) {
      paramEditor.commit();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\SharedPreferencesCompat$EditorCompat$Helper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */