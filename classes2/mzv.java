import android.content.Context;
import android.os.Build;
import android.support.design.widget.TextInputLayout;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class mzv {
  private static final int[] a = new int[] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
  
  private static final int[] b = new int[] { 
      6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 
      4, 3, 2 };
  
  private static int a(int paramInt) {
    return (new Random()).nextInt(paramInt + 1);
  }
  
  private static int a(String paramString, int[] paramArrayOfint) {
    int i = paramString.length() - 1;
    int j = 0;
    while (i >= 0) {
      j += Integer.parseInt(paramString.substring(i, i + 1)) * paramArrayOfint[paramArrayOfint.length - paramString.length() + i];
      i--;
    } 
    i = 11 - j % 11;
    return (i > 9) ? 0 : i;
  }
  
  public static String a() {
    String str = Build.VERSION.RELEASE;
    int i = Build.VERSION.SDK_INT;
    return "Android SDK: " + i + " (" + str + ")";
  }
  
  public static List<Integer> a(Button[] paramArrayOfButton) {
    List<Integer> list = b();
    String[] arrayOfString = a(list);
    for (int i = 0; i < arrayOfString.length; i++)
      paramArrayOfButton[i].setText(arrayOfString[i]); 
    return list;
  }
  
  public static void a(View paramView) {
    ((TextInputLayout)paramView).setErrorEnabled(false);
  }
  
  public static void a(String paramString, View paramView) {
    boolean bool;
    String str;
    TextInputLayout textInputLayout2 = (TextInputLayout)paramView;
    if (!"".equals(paramString)) {
      str = paramString;
    } else {
      str = "";
    } 
    textInputLayout2.setError(str);
    TextInputLayout textInputLayout1 = (TextInputLayout)paramView;
    if (!"".equals(paramString)) {
      bool = true;
    } else {
      bool = false;
    } 
    textInputLayout1.setErrorEnabled(bool);
    paramView.requestFocus();
  }
  
  public static boolean a(Context paramContext) {
    return (((paramContext.getResources().getConfiguration()).screenLayout & 0xF) >= 3);
  }
  
  public static boolean a(String paramString) {
    if (paramString == null || paramString.length() != 11)
      return false; 
    try {
      Integer integer = Integer.valueOf(a(paramString.substring(0, 9), a));
      int i = a(paramString.substring(0, 9) + integer, a);
      return paramString.equals(paramString.substring(0, 9) + integer.toString() + Integer.valueOf(i).toString());
    } catch (Exception exception) {
      return false;
    } 
  }
  
  public static boolean a(String paramString, int paramInt) {
    return (paramString.length() < paramInt);
  }
  
  private static boolean a(List<Integer> paramList, int paramInt) {
    for (int i = 0; i < paramList.size(); i++) {
      if (paramInt == ((Integer)paramList.get(i)).intValue())
        return false; 
    } 
    return true;
  }
  
  public static String[] a(List<Integer> paramList) {
    int i = 0;
    String[] arrayOfString = new String[5];
    int j = 0;
    while (i < arrayOfString.length) {
      arrayOfString[i] = (new StringBuilder()).append(paramList.get(j)).append(" ou ").append(paramList.get(j + 1)).toString();
      j += 2;
      i++;
    } 
    return arrayOfString;
  }
  
  private static List<Integer> b() {
    ArrayList<Integer> arrayList = new ArrayList();
    while (arrayList.size() != 10) {
      int i = a(9);
      if (a(arrayList, i))
        arrayList.add(Integer.valueOf(i)); 
    } 
    return arrayList;
  }
  
  public static void b(String paramString, View paramView) {
    ((TextView)paramView).setText(paramString);
  }
  
  public static boolean b(String paramString) {
    if (paramString == null || paramString.length() != 14)
      return false; 
    try {
      Integer integer = Integer.valueOf(a(paramString.substring(0, 12), b));
      int i = a(paramString.substring(0, 12) + integer, b);
      return paramString.equals(paramString.substring(0, 12) + integer.toString() + Integer.valueOf(i).toString());
    } catch (Exception exception) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */