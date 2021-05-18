package android.support.v7.widget;

import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.widget.SpinnerAdapter;

public interface ThemedSpinnerAdapter extends SpinnerAdapter {
  @Nullable
  Resources.Theme getDropDownViewTheme();
  
  void setDropDownViewTheme(@Nullable Resources.Theme paramTheme);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ThemedSpinnerAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */