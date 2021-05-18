package android.support.v7.view.menu;

import android.support.annotation.NonNull;
import android.support.v7.widget.MenuItemHoverListener;
import android.view.MenuItem;

class CascadingMenuPopup$2 implements MenuItemHoverListener {
  public void onItemHoverEnter(@NonNull MenuBuilder paramMenuBuilder, @NonNull MenuItem paramMenuItem) {
    // Byte code:
    //   0: aload_0
    //   1: getfield this$0 : Landroid/support/v7/view/menu/CascadingMenuPopup;
    //   4: getfield mSubMenuHoverHandler : Landroid/os/Handler;
    //   7: aconst_null
    //   8: invokevirtual removeCallbacksAndMessages : (Ljava/lang/Object;)V
    //   11: iconst_0
    //   12: istore_3
    //   13: aload_0
    //   14: getfield this$0 : Landroid/support/v7/view/menu/CascadingMenuPopup;
    //   17: getfield mShowingMenus : Ljava/util/List;
    //   20: invokeinterface size : ()I
    //   25: istore #4
    //   27: iload_3
    //   28: iload #4
    //   30: if_icmpge -> 151
    //   33: aload_1
    //   34: aload_0
    //   35: getfield this$0 : Landroid/support/v7/view/menu/CascadingMenuPopup;
    //   38: getfield mShowingMenus : Ljava/util/List;
    //   41: iload_3
    //   42: invokeinterface get : (I)Ljava/lang/Object;
    //   47: checkcast android/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo
    //   50: getfield menu : Landroid/support/v7/view/menu/MenuBuilder;
    //   53: if_acmpne -> 62
    //   56: iload_3
    //   57: iconst_m1
    //   58: if_icmpne -> 69
    //   61: return
    //   62: iload_3
    //   63: iconst_1
    //   64: iadd
    //   65: istore_3
    //   66: goto -> 27
    //   69: iload_3
    //   70: iconst_1
    //   71: iadd
    //   72: istore_3
    //   73: iload_3
    //   74: aload_0
    //   75: getfield this$0 : Landroid/support/v7/view/menu/CascadingMenuPopup;
    //   78: getfield mShowingMenus : Ljava/util/List;
    //   81: invokeinterface size : ()I
    //   86: if_icmpge -> 145
    //   89: aload_0
    //   90: getfield this$0 : Landroid/support/v7/view/menu/CascadingMenuPopup;
    //   93: getfield mShowingMenus : Ljava/util/List;
    //   96: iload_3
    //   97: invokeinterface get : (I)Ljava/lang/Object;
    //   102: checkcast android/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo
    //   105: astore #7
    //   107: new android/support/v7/view/menu/CascadingMenuPopup$2$1
    //   110: dup
    //   111: aload_0
    //   112: aload #7
    //   114: aload_2
    //   115: aload_1
    //   116: invokespecial <init> : (Landroid/support/v7/view/menu/CascadingMenuPopup$2;Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuBuilder;)V
    //   119: astore_2
    //   120: invokestatic uptimeMillis : ()J
    //   123: lstore #5
    //   125: aload_0
    //   126: getfield this$0 : Landroid/support/v7/view/menu/CascadingMenuPopup;
    //   129: getfield mSubMenuHoverHandler : Landroid/os/Handler;
    //   132: aload_2
    //   133: aload_1
    //   134: lload #5
    //   136: ldc2_w 200
    //   139: ladd
    //   140: invokevirtual postAtTime : (Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    //   143: pop
    //   144: return
    //   145: aconst_null
    //   146: astore #7
    //   148: goto -> 107
    //   151: iconst_m1
    //   152: istore_3
    //   153: goto -> 56
  }
  
  public void onItemHoverExit(@NonNull MenuBuilder paramMenuBuilder, @NonNull MenuItem paramMenuItem) {
    CascadingMenuPopup.this.mSubMenuHoverHandler.removeCallbacksAndMessages(paramMenuBuilder);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\CascadingMenuPopup$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */