package android.support.design.widget;

import java.util.ArrayList;

final class StateListAnimator {
  private final ValueAnimatorCompat$AnimatorListener mAnimationListener = new StateListAnimator$1(this);
  
  private StateListAnimator$Tuple mLastMatch = null;
  
  ValueAnimatorCompat mRunningAnimator = null;
  
  private final ArrayList<StateListAnimator$Tuple> mTuples = new ArrayList<StateListAnimator$Tuple>();
  
  private void cancel() {
    if (this.mRunningAnimator != null) {
      this.mRunningAnimator.cancel();
      this.mRunningAnimator = null;
    } 
  }
  
  private void start(StateListAnimator$Tuple paramStateListAnimator$Tuple) {
    this.mRunningAnimator = paramStateListAnimator$Tuple.mAnimator;
    this.mRunningAnimator.start();
  }
  
  public void addState(int[] paramArrayOfint, ValueAnimatorCompat paramValueAnimatorCompat) {
    StateListAnimator$Tuple stateListAnimator$Tuple = new StateListAnimator$Tuple(paramArrayOfint, paramValueAnimatorCompat);
    paramValueAnimatorCompat.addListener(this.mAnimationListener);
    this.mTuples.add(stateListAnimator$Tuple);
  }
  
  public void jumpToCurrentState() {
    if (this.mRunningAnimator != null) {
      this.mRunningAnimator.end();
      this.mRunningAnimator = null;
    } 
  }
  
  void setState(int[] paramArrayOfint) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mTuples : Ljava/util/ArrayList;
    //   4: invokevirtual size : ()I
    //   7: istore_3
    //   8: iconst_0
    //   9: istore_2
    //   10: iload_2
    //   11: iload_3
    //   12: if_icmpge -> 85
    //   15: aload_0
    //   16: getfield mTuples : Ljava/util/ArrayList;
    //   19: iload_2
    //   20: invokevirtual get : (I)Ljava/lang/Object;
    //   23: checkcast android/support/design/widget/StateListAnimator$Tuple
    //   26: astore #4
    //   28: aload #4
    //   30: getfield mSpecs : [I
    //   33: aload_1
    //   34: invokestatic stateSetMatches : ([I[I)Z
    //   37: ifeq -> 52
    //   40: aload #4
    //   42: astore_1
    //   43: aload_1
    //   44: aload_0
    //   45: getfield mLastMatch : Landroid/support/design/widget/StateListAnimator$Tuple;
    //   48: if_acmpne -> 59
    //   51: return
    //   52: iload_2
    //   53: iconst_1
    //   54: iadd
    //   55: istore_2
    //   56: goto -> 10
    //   59: aload_0
    //   60: getfield mLastMatch : Landroid/support/design/widget/StateListAnimator$Tuple;
    //   63: ifnull -> 70
    //   66: aload_0
    //   67: invokespecial cancel : ()V
    //   70: aload_0
    //   71: aload_1
    //   72: putfield mLastMatch : Landroid/support/design/widget/StateListAnimator$Tuple;
    //   75: aload_1
    //   76: ifnull -> 51
    //   79: aload_0
    //   80: aload_1
    //   81: invokespecial start : (Landroid/support/design/widget/StateListAnimator$Tuple;)V
    //   84: return
    //   85: aconst_null
    //   86: astore_1
    //   87: goto -> 43
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\StateListAnimator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */