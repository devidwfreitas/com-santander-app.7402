import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import java.util.HashSet;
import java.util.Set;

public class mzq {
  private static Set<Activity> a = new HashSet<Activity>();
  
  private static Set<Activity> b = new HashSet<Activity>();
  
  public static void a(Activity paramActivity, AutoCompleteTextView paramAutoCompleteTextView) {
    ((InputMethodManager)paramActivity.getSystemService("input_method")).hideSoftInputFromWindow(paramAutoCompleteTextView.getWindowToken(), 0);
  }
  
  public static void a(Activity paramActivity, boolean paramBoolean) {
    if (paramActivity != null && !a.contains(paramActivity) && paramActivity.getRequestedOrientation() == -1) {
      b.add(paramActivity);
      WindowManager windowManager = (WindowManager)paramActivity.getSystemService("window");
      Configuration configuration = paramActivity.getResources().getConfiguration();
      int i = windowManager.getDefaultDisplay().getRotation();
      if ((configuration.orientation == 2 && (i == 0 || i == 2)) || (configuration.orientation == 1 && (i == 1 || i == 3))) {
        switch (i) {
          default:
            if (paramBoolean) {
              a.add(paramActivity);
              return;
            } 
            return;
          case 0:
            paramActivity.setRequestedOrientation(0);
          case 1:
            paramActivity.setRequestedOrientation(9);
          case 2:
            paramActivity.setRequestedOrientation(8);
          case 3:
            break;
        } 
        paramActivity.setRequestedOrientation(1);
      } 
      switch (i) {
        default:
        
        case 0:
          paramActivity.setRequestedOrientation(1);
        case 1:
          paramActivity.setRequestedOrientation(0);
        case 2:
          paramActivity.setRequestedOrientation(9);
        case 3:
          break;
      } 
      paramActivity.setRequestedOrientation(8);
    } 
  }
  
  public static void a(Fragment paramFragment) {
    while (paramFragment.getActivity() == null) {
      try {
        Thread.sleep(100L);
      } catch (InterruptedException interruptedException) {
        Log.e("Error", interruptedException.toString());
      } 
    } 
    FragmentActivity fragmentActivity = paramFragment.getActivity();
    switch ((fragmentActivity.getResources().getConfiguration()).orientation) {
      default:
        return;
      case 1:
        if (Build.VERSION.SDK_INT < 8) {
          fragmentActivity.setRequestedOrientation(1);
          return;
        } 
        i = fragmentActivity.getWindowManager().getDefaultDisplay().getRotation();
        if (i == 1 || i == 2) {
          fragmentActivity.setRequestedOrientation(9);
          return;
        } 
        fragmentActivity.setRequestedOrientation(1);
        return;
      case 2:
        break;
    } 
    if (Build.VERSION.SDK_INT < 8) {
      fragmentActivity.setRequestedOrientation(0);
      return;
    } 
    int i = fragmentActivity.getWindowManager().getDefaultDisplay().getRotation();
    if (i == 0 || i == 1) {
      fragmentActivity.setRequestedOrientation(0);
      return;
    } 
    fragmentActivity.setRequestedOrientation(8);
  }
  
  public static boolean a(Activity paramActivity) {
    return a.contains(paramActivity);
  }
  
  public static void b(Activity paramActivity) {
    InputMethodManager inputMethodManager = (InputMethodManager)paramActivity.getSystemService("input_method");
    View view = paramActivity.getCurrentFocus();
    if (view != null) {
      inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 2);
      return;
    } 
    paramActivity.getWindow().setSoftInputMode(3);
  }
  
  public static void b(Activity paramActivity, boolean paramBoolean) {
    if (paramActivity != null)
      try {
        if (b.contains(paramActivity)) {
          if (!paramBoolean && a.contains(paramActivity))
            return; 
          paramActivity.setRequestedOrientation(-1);
          if (paramBoolean) {
            a.remove(paramActivity);
            return;
          } 
        } 
      } catch (Exception exception) {} 
  }
  
  public static void b(Fragment paramFragment) {
    if (paramFragment.getActivity() == null)
      return; 
    while (paramFragment.getActivity() == null) {
      try {
        Thread.sleep(100L);
      } catch (InterruptedException interruptedException) {
        Log.e("Error", interruptedException.getMessage());
      } 
    } 
    paramFragment.getActivity().setRequestedOrientation(-1);
  }
  
  public static void c(Activity paramActivity) {
    a(paramActivity, true);
  }
  
  public static void d(Activity paramActivity) {
    b(paramActivity, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */