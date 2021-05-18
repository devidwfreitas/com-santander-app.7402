package android.support.v7.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

class SearchView$UpdatableTouchDelegate extends TouchDelegate {
  private final Rect mActualBounds;
  
  private boolean mDelegateTargeted;
  
  private final View mDelegateView;
  
  private final int mSlop;
  
  private final Rect mSlopBounds;
  
  private final Rect mTargetBounds;
  
  public SearchView$UpdatableTouchDelegate(Rect paramRect1, Rect paramRect2, View paramView) {
    super(paramRect1, paramView);
    this.mSlop = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    this.mTargetBounds = new Rect();
    this.mSlopBounds = new Rect();
    this.mActualBounds = new Rect();
    setBounds(paramRect1, paramRect2);
    this.mDelegateView = paramView;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: iconst_0
    //   3: istore #7
    //   5: aload_1
    //   6: invokevirtual getX : ()F
    //   9: f2i
    //   10: istore #4
    //   12: aload_1
    //   13: invokevirtual getY : ()F
    //   16: f2i
    //   17: istore #5
    //   19: aload_1
    //   20: invokevirtual getAction : ()I
    //   23: tableswitch default -> 52, 0 -> 117, 1 -> 144, 2 -> 144, 3 -> 190
    //   52: iconst_0
    //   53: istore #6
    //   55: iload_3
    //   56: istore_2
    //   57: iload #6
    //   59: ifeq -> 114
    //   62: iload_2
    //   63: ifeq -> 206
    //   66: aload_0
    //   67: getfield mActualBounds : Landroid/graphics/Rect;
    //   70: iload #4
    //   72: iload #5
    //   74: invokevirtual contains : (II)Z
    //   77: ifne -> 206
    //   80: aload_1
    //   81: aload_0
    //   82: getfield mDelegateView : Landroid/view/View;
    //   85: invokevirtual getWidth : ()I
    //   88: iconst_2
    //   89: idiv
    //   90: i2f
    //   91: aload_0
    //   92: getfield mDelegateView : Landroid/view/View;
    //   95: invokevirtual getHeight : ()I
    //   98: iconst_2
    //   99: idiv
    //   100: i2f
    //   101: invokevirtual setLocation : (FF)V
    //   104: aload_0
    //   105: getfield mDelegateView : Landroid/view/View;
    //   108: aload_1
    //   109: invokevirtual dispatchTouchEvent : (Landroid/view/MotionEvent;)Z
    //   112: istore #7
    //   114: iload #7
    //   116: ireturn
    //   117: aload_0
    //   118: getfield mTargetBounds : Landroid/graphics/Rect;
    //   121: iload #4
    //   123: iload #5
    //   125: invokevirtual contains : (II)Z
    //   128: ifeq -> 52
    //   131: aload_0
    //   132: iconst_1
    //   133: putfield mDelegateTargeted : Z
    //   136: iconst_1
    //   137: istore #6
    //   139: iload_3
    //   140: istore_2
    //   141: goto -> 57
    //   144: aload_0
    //   145: getfield mDelegateTargeted : Z
    //   148: istore #8
    //   150: iload_3
    //   151: istore_2
    //   152: iload #8
    //   154: istore #6
    //   156: iload #8
    //   158: ifeq -> 57
    //   161: iload_3
    //   162: istore_2
    //   163: iload #8
    //   165: istore #6
    //   167: aload_0
    //   168: getfield mSlopBounds : Landroid/graphics/Rect;
    //   171: iload #4
    //   173: iload #5
    //   175: invokevirtual contains : (II)Z
    //   178: ifne -> 57
    //   181: iconst_0
    //   182: istore_2
    //   183: iload #8
    //   185: istore #6
    //   187: goto -> 57
    //   190: aload_0
    //   191: getfield mDelegateTargeted : Z
    //   194: istore #6
    //   196: aload_0
    //   197: iconst_0
    //   198: putfield mDelegateTargeted : Z
    //   201: iload_3
    //   202: istore_2
    //   203: goto -> 57
    //   206: aload_1
    //   207: iload #4
    //   209: aload_0
    //   210: getfield mActualBounds : Landroid/graphics/Rect;
    //   213: getfield left : I
    //   216: isub
    //   217: i2f
    //   218: iload #5
    //   220: aload_0
    //   221: getfield mActualBounds : Landroid/graphics/Rect;
    //   224: getfield top : I
    //   227: isub
    //   228: i2f
    //   229: invokevirtual setLocation : (FF)V
    //   232: goto -> 104
  }
  
  public void setBounds(Rect paramRect1, Rect paramRect2) {
    this.mTargetBounds.set(paramRect1);
    this.mSlopBounds.set(paramRect1);
    this.mSlopBounds.inset(-this.mSlop, -this.mSlop);
    this.mActualBounds.set(paramRect2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$UpdatableTouchDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */