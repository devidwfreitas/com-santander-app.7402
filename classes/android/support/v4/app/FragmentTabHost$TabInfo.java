package android.support.v4.app;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

final class FragmentTabHost$TabInfo {
  @Nullable
  final Bundle args;
  
  @NonNull
  final Class<?> clss;
  
  Fragment fragment;
  
  @NonNull
  final String tag;
  
  FragmentTabHost$TabInfo(@NonNull String paramString, @NonNull Class<?> paramClass, @Nullable Bundle paramBundle) {
    this.tag = paramString;
    this.clss = paramClass;
    this.args = paramBundle;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTabHost$TabInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */