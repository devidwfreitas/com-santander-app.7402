package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.util.ArrayMap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.List;

@TargetApi(14)
@RequiresApi(14)
abstract class TransitionPort implements Cloneable {
  static final boolean DBG = false;
  
  private static final String LOG_TAG = "Transition";
  
  private static ThreadLocal<ArrayMap<Animator, TransitionPort$AnimationInfo>> sRunningAnimators = new ThreadLocal<ArrayMap<Animator, TransitionPort$AnimationInfo>>();
  
  ArrayList<Animator> mAnimators = new ArrayList<Animator>();
  
  boolean mCanRemoveViews = false;
  
  ArrayList<Animator> mCurrentAnimators = new ArrayList<Animator>();
  
  long mDuration = -1L;
  
  private TransitionValuesMaps mEndValues = new TransitionValuesMaps();
  
  private boolean mEnded = false;
  
  TimeInterpolator mInterpolator = null;
  
  ArrayList<TransitionPort$TransitionListener> mListeners = null;
  
  private String mName = getClass().getName();
  
  int mNumInstances = 0;
  
  TransitionSetPort mParent = null;
  
  boolean mPaused = false;
  
  ViewGroup mSceneRoot = null;
  
  long mStartDelay = -1L;
  
  private TransitionValuesMaps mStartValues = new TransitionValuesMaps();
  
  ArrayList<View> mTargetChildExcludes = null;
  
  ArrayList<View> mTargetExcludes = null;
  
  ArrayList<Integer> mTargetIdChildExcludes = null;
  
  ArrayList<Integer> mTargetIdExcludes = null;
  
  ArrayList<Integer> mTargetIds = new ArrayList<Integer>();
  
  ArrayList<Class> mTargetTypeChildExcludes = null;
  
  ArrayList<Class> mTargetTypeExcludes = null;
  
  ArrayList<View> mTargets = new ArrayList<View>();
  
  private void captureHierarchy(View paramView, boolean paramBoolean) {
    if (paramView != null) {
      int i;
      if (paramView.getParent() instanceof ListView) {
        i = 1;
      } else {
        i = 0;
      } 
      if (!i || ((ListView)paramView.getParent()).getAdapter().hasStableIds()) {
        int j;
        long l;
        if (!i) {
          j = paramView.getId();
          l = -1L;
        } else {
          ListView listView = (ListView)paramView.getParent();
          l = listView.getItemIdAtPosition(listView.getPositionForView(paramView));
          j = -1;
        } 
        if ((this.mTargetIdExcludes == null || !this.mTargetIdExcludes.contains(Integer.valueOf(j))) && (this.mTargetExcludes == null || !this.mTargetExcludes.contains(paramView))) {
          if (this.mTargetTypeExcludes != null && paramView != null) {
            int m = this.mTargetTypeExcludes.size();
            int k = 0;
            while (k < m) {
              if (!((Class)this.mTargetTypeExcludes.get(k)).isInstance(paramView)) {
                k++;
                continue;
              } 
              return;
            } 
          } 
          TransitionValues transitionValues = new TransitionValues();
          transitionValues.view = paramView;
          if (paramBoolean) {
            captureStartValues(transitionValues);
          } else {
            captureEndValues(transitionValues);
          } 
          if (paramBoolean) {
            if (!i) {
              this.mStartValues.viewValues.put(paramView, transitionValues);
              if (j >= 0)
                this.mStartValues.idValues.put(j, transitionValues); 
            } else {
              this.mStartValues.itemIdValues.put(l, transitionValues);
            } 
          } else if (!i) {
            this.mEndValues.viewValues.put(paramView, transitionValues);
            if (j >= 0)
              this.mEndValues.idValues.put(j, transitionValues); 
          } else {
            this.mEndValues.itemIdValues.put(l, transitionValues);
          } 
          if (paramView instanceof ViewGroup && (this.mTargetIdChildExcludes == null || !this.mTargetIdChildExcludes.contains(Integer.valueOf(j))) && (this.mTargetChildExcludes == null || !this.mTargetChildExcludes.contains(paramView))) {
            if (this.mTargetTypeChildExcludes != null && paramView != null) {
              j = this.mTargetTypeChildExcludes.size();
              i = 0;
              while (i < j) {
                if (!((Class)this.mTargetTypeChildExcludes.get(i)).isInstance(paramView)) {
                  i++;
                  continue;
                } 
                return;
              } 
            } 
            ViewGroup viewGroup = (ViewGroup)paramView;
            i = 0;
            while (true) {
              if (i < viewGroup.getChildCount()) {
                captureHierarchy(viewGroup.getChildAt(i), paramBoolean);
                i++;
                continue;
              } 
              return;
            } 
          } 
        } 
      } 
    } 
  }
  
  private ArrayList<Integer> excludeId(ArrayList<Integer> paramArrayList, int paramInt, boolean paramBoolean) {
    ArrayList<Integer> arrayList = paramArrayList;
    if (paramInt > 0) {
      if (paramBoolean)
        return TransitionPort$ArrayListManager.add(paramArrayList, Integer.valueOf(paramInt)); 
    } else {
      return arrayList;
    } 
    return TransitionPort$ArrayListManager.remove(paramArrayList, Integer.valueOf(paramInt));
  }
  
  private ArrayList<Class> excludeType(ArrayList<Class> paramArrayList, Class<?> paramClass, boolean paramBoolean) {
    ArrayList<Class> arrayList = paramArrayList;
    if (paramClass != null) {
      if (paramBoolean)
        return TransitionPort$ArrayListManager.add(paramArrayList, paramClass); 
    } else {
      return arrayList;
    } 
    return TransitionPort$ArrayListManager.remove(paramArrayList, paramClass);
  }
  
  private ArrayList<View> excludeView(ArrayList<View> paramArrayList, View paramView, boolean paramBoolean) {
    ArrayList<View> arrayList = paramArrayList;
    if (paramView != null) {
      if (paramBoolean)
        return TransitionPort$ArrayListManager.add(paramArrayList, paramView); 
    } else {
      return arrayList;
    } 
    return TransitionPort$ArrayListManager.remove(paramArrayList, paramView);
  }
  
  private static ArrayMap<Animator, TransitionPort$AnimationInfo> getRunningAnimators() {
    ArrayMap<Animator, TransitionPort$AnimationInfo> arrayMap2 = sRunningAnimators.get();
    ArrayMap<Animator, TransitionPort$AnimationInfo> arrayMap1 = arrayMap2;
    if (arrayMap2 == null) {
      arrayMap1 = new ArrayMap();
      sRunningAnimators.set(arrayMap1);
    } 
    return arrayMap1;
  }
  
  private void runAnimator(Animator paramAnimator, ArrayMap<Animator, TransitionPort$AnimationInfo> paramArrayMap) {
    if (paramAnimator != null) {
      paramAnimator.addListener((Animator.AnimatorListener)new TransitionPort$1(this, paramArrayMap));
      animate(paramAnimator);
    } 
  }
  
  public TransitionPort addListener(TransitionPort$TransitionListener paramTransitionPort$TransitionListener) {
    if (this.mListeners == null)
      this.mListeners = new ArrayList<TransitionPort$TransitionListener>(); 
    this.mListeners.add(paramTransitionPort$TransitionListener);
    return this;
  }
  
  public TransitionPort addTarget(int paramInt) {
    if (paramInt > 0)
      this.mTargetIds.add(Integer.valueOf(paramInt)); 
    return this;
  }
  
  public TransitionPort addTarget(View paramView) {
    this.mTargets.add(paramView);
    return this;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void animate(Animator paramAnimator) {
    if (paramAnimator == null) {
      end();
      return;
    } 
    if (getDuration() >= 0L)
      paramAnimator.setDuration(getDuration()); 
    if (getStartDelay() >= 0L)
      paramAnimator.setStartDelay(getStartDelay()); 
    if (getInterpolator() != null)
      paramAnimator.setInterpolator(getInterpolator()); 
    paramAnimator.addListener((Animator.AnimatorListener)new TransitionPort$2(this));
    paramAnimator.start();
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void cancel() {
    int i;
    for (i = this.mCurrentAnimators.size() - 1; i >= 0; i--)
      ((Animator)this.mCurrentAnimators.get(i)).cancel(); 
    if (this.mListeners != null && this.mListeners.size() > 0) {
      ArrayList<TransitionPort$TransitionListener> arrayList = (ArrayList)this.mListeners.clone();
      int j = arrayList.size();
      for (i = 0; i < j; i++)
        ((TransitionPort$TransitionListener)arrayList.get(i)).onTransitionCancel(this); 
    } 
  }
  
  public abstract void captureEndValues(TransitionValues paramTransitionValues);
  
  public abstract void captureStartValues(TransitionValues paramTransitionValues);
  
  void captureValues(ViewGroup paramViewGroup, boolean paramBoolean) {
    View view;
    byte b = 0;
    clearValues(paramBoolean);
    if (this.mTargetIds.size() > 0 || this.mTargets.size() > 0) {
      if (this.mTargetIds.size() > 0)
        for (int i = 0; i < this.mTargetIds.size(); i++) {
          int j = ((Integer)this.mTargetIds.get(i)).intValue();
          View view1 = paramViewGroup.findViewById(j);
          if (view1 != null) {
            TransitionValues transitionValues = new TransitionValues();
            transitionValues.view = view1;
            if (paramBoolean) {
              captureStartValues(transitionValues);
            } else {
              captureEndValues(transitionValues);
            } 
            if (paramBoolean) {
              this.mStartValues.viewValues.put(view1, transitionValues);
              if (j >= 0)
                this.mStartValues.idValues.put(j, transitionValues); 
            } else {
              this.mEndValues.viewValues.put(view1, transitionValues);
              if (j >= 0)
                this.mEndValues.idValues.put(j, transitionValues); 
            } 
          } 
        }  
      if (this.mTargets.size() > 0)
        for (int i = b; i < this.mTargets.size(); i++) {
          view = this.mTargets.get(i);
          if (view != null) {
            TransitionValues transitionValues = new TransitionValues();
            transitionValues.view = view;
            if (paramBoolean) {
              captureStartValues(transitionValues);
            } else {
              captureEndValues(transitionValues);
            } 
            if (paramBoolean) {
              this.mStartValues.viewValues.put(view, transitionValues);
            } else {
              this.mEndValues.viewValues.put(view, transitionValues);
            } 
          } 
        }  
    } else {
      captureHierarchy(view, paramBoolean);
    } 
  }
  
  void clearValues(boolean paramBoolean) {
    if (paramBoolean) {
      this.mStartValues.viewValues.clear();
      this.mStartValues.idValues.clear();
      this.mStartValues.itemIdValues.clear();
      return;
    } 
    this.mEndValues.viewValues.clear();
    this.mEndValues.idValues.clear();
    this.mEndValues.itemIdValues.clear();
  }
  
  public TransitionPort clone() {
    try {
      TransitionPort transitionPort = (TransitionPort)super.clone();
      try {
        transitionPort.mAnimators = new ArrayList<Animator>();
        transitionPort.mStartValues = new TransitionValuesMaps();
        transitionPort.mEndValues = new TransitionValuesMaps();
        return transitionPort;
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        return transitionPort;
      } 
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      return null;
    } 
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2) {
    return null;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void createAnimators(ViewGroup paramViewGroup, TransitionValuesMaps paramTransitionValuesMaps1, TransitionValuesMaps paramTransitionValuesMaps2) {
    // Byte code:
    //   0: new android/support/v4/util/ArrayMap
    //   3: dup
    //   4: aload_3
    //   5: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   8: invokespecial <init> : (Landroid/support/v4/util/SimpleArrayMap;)V
    //   11: astore #17
    //   13: new android/util/SparseArray
    //   16: dup
    //   17: aload_3
    //   18: getfield idValues : Landroid/util/SparseArray;
    //   21: invokevirtual size : ()I
    //   24: invokespecial <init> : (I)V
    //   27: astore #16
    //   29: iconst_0
    //   30: istore #4
    //   32: iload #4
    //   34: aload_3
    //   35: getfield idValues : Landroid/util/SparseArray;
    //   38: invokevirtual size : ()I
    //   41: if_icmpge -> 76
    //   44: aload #16
    //   46: aload_3
    //   47: getfield idValues : Landroid/util/SparseArray;
    //   50: iload #4
    //   52: invokevirtual keyAt : (I)I
    //   55: aload_3
    //   56: getfield idValues : Landroid/util/SparseArray;
    //   59: iload #4
    //   61: invokevirtual valueAt : (I)Ljava/lang/Object;
    //   64: invokevirtual put : (ILjava/lang/Object;)V
    //   67: iload #4
    //   69: iconst_1
    //   70: iadd
    //   71: istore #4
    //   73: goto -> 32
    //   76: new android/support/v4/util/LongSparseArray
    //   79: dup
    //   80: aload_3
    //   81: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   84: invokevirtual size : ()I
    //   87: invokespecial <init> : (I)V
    //   90: astore #15
    //   92: iconst_0
    //   93: istore #4
    //   95: iload #4
    //   97: aload_3
    //   98: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   101: invokevirtual size : ()I
    //   104: if_icmpge -> 139
    //   107: aload #15
    //   109: aload_3
    //   110: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   113: iload #4
    //   115: invokevirtual keyAt : (I)J
    //   118: aload_3
    //   119: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   122: iload #4
    //   124: invokevirtual valueAt : (I)Ljava/lang/Object;
    //   127: invokevirtual put : (JLjava/lang/Object;)V
    //   130: iload #4
    //   132: iconst_1
    //   133: iadd
    //   134: istore #4
    //   136: goto -> 95
    //   139: new java/util/ArrayList
    //   142: dup
    //   143: invokespecial <init> : ()V
    //   146: astore #13
    //   148: new java/util/ArrayList
    //   151: dup
    //   152: invokespecial <init> : ()V
    //   155: astore #14
    //   157: aload_2
    //   158: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   161: invokevirtual keySet : ()Ljava/util/Set;
    //   164: invokeinterface iterator : ()Ljava/util/Iterator;
    //   169: astore #18
    //   171: aload #18
    //   173: invokeinterface hasNext : ()Z
    //   178: ifeq -> 511
    //   181: aload #18
    //   183: invokeinterface next : ()Ljava/lang/Object;
    //   188: checkcast android/view/View
    //   191: astore #19
    //   193: iconst_0
    //   194: istore #4
    //   196: aload #19
    //   198: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   201: instanceof android/widget/ListView
    //   204: ifeq -> 210
    //   207: iconst_1
    //   208: istore #4
    //   210: iload #4
    //   212: ifne -> 435
    //   215: aload #19
    //   217: invokevirtual getId : ()I
    //   220: istore #4
    //   222: aload_2
    //   223: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   226: aload #19
    //   228: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   231: ifnull -> 320
    //   234: aload_2
    //   235: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   238: aload #19
    //   240: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   243: checkcast android/support/transition/TransitionValues
    //   246: astore #11
    //   248: aload_3
    //   249: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   252: aload #19
    //   254: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   257: ifnull -> 337
    //   260: aload_3
    //   261: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   264: aload #19
    //   266: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   269: checkcast android/support/transition/TransitionValues
    //   272: astore #10
    //   274: aload #17
    //   276: aload #19
    //   278: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   281: pop
    //   282: aload #16
    //   284: iload #4
    //   286: invokevirtual remove : (I)V
    //   289: aload_0
    //   290: aload #19
    //   292: iload #4
    //   294: i2l
    //   295: invokevirtual isValidTarget : (Landroid/view/View;J)Z
    //   298: ifeq -> 171
    //   301: aload #13
    //   303: aload #11
    //   305: invokevirtual add : (Ljava/lang/Object;)Z
    //   308: pop
    //   309: aload #14
    //   311: aload #10
    //   313: invokevirtual add : (Ljava/lang/Object;)Z
    //   316: pop
    //   317: goto -> 171
    //   320: aload_2
    //   321: getfield idValues : Landroid/util/SparseArray;
    //   324: iload #4
    //   326: invokevirtual get : (I)Ljava/lang/Object;
    //   329: checkcast android/support/transition/TransitionValues
    //   332: astore #11
    //   334: goto -> 248
    //   337: iload #4
    //   339: iconst_m1
    //   340: if_icmpeq -> 1335
    //   343: aload_3
    //   344: getfield idValues : Landroid/util/SparseArray;
    //   347: iload #4
    //   349: invokevirtual get : (I)Ljava/lang/Object;
    //   352: checkcast android/support/transition/TransitionValues
    //   355: astore #12
    //   357: aconst_null
    //   358: astore #9
    //   360: aload #17
    //   362: invokevirtual keySet : ()Ljava/util/Set;
    //   365: invokeinterface iterator : ()Ljava/util/Iterator;
    //   370: astore #20
    //   372: aload #20
    //   374: invokeinterface hasNext : ()Z
    //   379: ifeq -> 411
    //   382: aload #20
    //   384: invokeinterface next : ()Ljava/lang/Object;
    //   389: checkcast android/view/View
    //   392: astore #10
    //   394: aload #10
    //   396: invokevirtual getId : ()I
    //   399: iload #4
    //   401: if_icmpne -> 1332
    //   404: aload #10
    //   406: astore #9
    //   408: goto -> 372
    //   411: aload #12
    //   413: astore #10
    //   415: aload #9
    //   417: ifnull -> 282
    //   420: aload #17
    //   422: aload #9
    //   424: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   427: pop
    //   428: aload #12
    //   430: astore #10
    //   432: goto -> 282
    //   435: aload #19
    //   437: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   440: checkcast android/widget/ListView
    //   443: astore #9
    //   445: aload #9
    //   447: invokevirtual getAdapter : ()Landroid/widget/ListAdapter;
    //   450: invokeinterface hasStableIds : ()Z
    //   455: ifeq -> 171
    //   458: aload #9
    //   460: aload #9
    //   462: aload #19
    //   464: invokevirtual getPositionForView : (Landroid/view/View;)I
    //   467: invokevirtual getItemIdAtPosition : (I)J
    //   470: lstore #7
    //   472: aload_2
    //   473: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   476: lload #7
    //   478: invokevirtual get : (J)Ljava/lang/Object;
    //   481: checkcast android/support/transition/TransitionValues
    //   484: astore #9
    //   486: aload #15
    //   488: lload #7
    //   490: invokevirtual remove : (J)V
    //   493: aload #13
    //   495: aload #9
    //   497: invokevirtual add : (Ljava/lang/Object;)Z
    //   500: pop
    //   501: aload #14
    //   503: aconst_null
    //   504: invokevirtual add : (Ljava/lang/Object;)Z
    //   507: pop
    //   508: goto -> 171
    //   511: aload_2
    //   512: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   515: invokevirtual size : ()I
    //   518: istore #5
    //   520: iconst_0
    //   521: istore #4
    //   523: iload #4
    //   525: iload #5
    //   527: if_icmpge -> 611
    //   530: aload_2
    //   531: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   534: iload #4
    //   536: invokevirtual keyAt : (I)J
    //   539: lstore #7
    //   541: aload_0
    //   542: aconst_null
    //   543: lload #7
    //   545: invokevirtual isValidTarget : (Landroid/view/View;J)Z
    //   548: ifeq -> 602
    //   551: aload_2
    //   552: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   555: lload #7
    //   557: invokevirtual get : (J)Ljava/lang/Object;
    //   560: checkcast android/support/transition/TransitionValues
    //   563: astore #9
    //   565: aload_3
    //   566: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   569: lload #7
    //   571: invokevirtual get : (J)Ljava/lang/Object;
    //   574: checkcast android/support/transition/TransitionValues
    //   577: astore #10
    //   579: aload #15
    //   581: lload #7
    //   583: invokevirtual remove : (J)V
    //   586: aload #13
    //   588: aload #9
    //   590: invokevirtual add : (Ljava/lang/Object;)Z
    //   593: pop
    //   594: aload #14
    //   596: aload #10
    //   598: invokevirtual add : (Ljava/lang/Object;)Z
    //   601: pop
    //   602: iload #4
    //   604: iconst_1
    //   605: iadd
    //   606: istore #4
    //   608: goto -> 523
    //   611: aload #17
    //   613: invokevirtual keySet : ()Ljava/util/Set;
    //   616: invokeinterface iterator : ()Ljava/util/Iterator;
    //   621: astore #10
    //   623: aload #10
    //   625: invokeinterface hasNext : ()Z
    //   630: ifeq -> 745
    //   633: aload #10
    //   635: invokeinterface next : ()Ljava/lang/Object;
    //   640: checkcast android/view/View
    //   643: astore #11
    //   645: aload #11
    //   647: invokevirtual getId : ()I
    //   650: istore #4
    //   652: aload_0
    //   653: aload #11
    //   655: iload #4
    //   657: i2l
    //   658: invokevirtual isValidTarget : (Landroid/view/View;J)Z
    //   661: ifeq -> 623
    //   664: aload_2
    //   665: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   668: aload #11
    //   670: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   673: ifnull -> 728
    //   676: aload_2
    //   677: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   680: aload #11
    //   682: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   685: checkcast android/support/transition/TransitionValues
    //   688: astore #9
    //   690: aload #17
    //   692: aload #11
    //   694: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   697: checkcast android/support/transition/TransitionValues
    //   700: astore #11
    //   702: aload #16
    //   704: iload #4
    //   706: invokevirtual remove : (I)V
    //   709: aload #13
    //   711: aload #9
    //   713: invokevirtual add : (Ljava/lang/Object;)Z
    //   716: pop
    //   717: aload #14
    //   719: aload #11
    //   721: invokevirtual add : (Ljava/lang/Object;)Z
    //   724: pop
    //   725: goto -> 623
    //   728: aload_2
    //   729: getfield idValues : Landroid/util/SparseArray;
    //   732: iload #4
    //   734: invokevirtual get : (I)Ljava/lang/Object;
    //   737: checkcast android/support/transition/TransitionValues
    //   740: astore #9
    //   742: goto -> 690
    //   745: aload #16
    //   747: invokevirtual size : ()I
    //   750: istore #5
    //   752: iconst_0
    //   753: istore #4
    //   755: iload #4
    //   757: iload #5
    //   759: if_icmpge -> 833
    //   762: aload #16
    //   764: iload #4
    //   766: invokevirtual keyAt : (I)I
    //   769: istore #6
    //   771: aload_0
    //   772: aconst_null
    //   773: iload #6
    //   775: i2l
    //   776: invokevirtual isValidTarget : (Landroid/view/View;J)Z
    //   779: ifeq -> 824
    //   782: aload_2
    //   783: getfield idValues : Landroid/util/SparseArray;
    //   786: iload #6
    //   788: invokevirtual get : (I)Ljava/lang/Object;
    //   791: checkcast android/support/transition/TransitionValues
    //   794: astore #9
    //   796: aload #16
    //   798: iload #6
    //   800: invokevirtual get : (I)Ljava/lang/Object;
    //   803: checkcast android/support/transition/TransitionValues
    //   806: astore #10
    //   808: aload #13
    //   810: aload #9
    //   812: invokevirtual add : (Ljava/lang/Object;)Z
    //   815: pop
    //   816: aload #14
    //   818: aload #10
    //   820: invokevirtual add : (Ljava/lang/Object;)Z
    //   823: pop
    //   824: iload #4
    //   826: iconst_1
    //   827: iadd
    //   828: istore #4
    //   830: goto -> 755
    //   833: aload #15
    //   835: invokevirtual size : ()I
    //   838: istore #5
    //   840: iconst_0
    //   841: istore #4
    //   843: iload #4
    //   845: iload #5
    //   847: if_icmpge -> 910
    //   850: aload #15
    //   852: iload #4
    //   854: invokevirtual keyAt : (I)J
    //   857: lstore #7
    //   859: aload_2
    //   860: getfield itemIdValues : Landroid/support/v4/util/LongSparseArray;
    //   863: lload #7
    //   865: invokevirtual get : (J)Ljava/lang/Object;
    //   868: checkcast android/support/transition/TransitionValues
    //   871: astore #9
    //   873: aload #15
    //   875: lload #7
    //   877: invokevirtual get : (J)Ljava/lang/Object;
    //   880: checkcast android/support/transition/TransitionValues
    //   883: astore #10
    //   885: aload #13
    //   887: aload #9
    //   889: invokevirtual add : (Ljava/lang/Object;)Z
    //   892: pop
    //   893: aload #14
    //   895: aload #10
    //   897: invokevirtual add : (Ljava/lang/Object;)Z
    //   900: pop
    //   901: iload #4
    //   903: iconst_1
    //   904: iadd
    //   905: istore #4
    //   907: goto -> 843
    //   910: invokestatic getRunningAnimators : ()Landroid/support/v4/util/ArrayMap;
    //   913: astore #12
    //   915: iconst_0
    //   916: istore #4
    //   918: iload #4
    //   920: aload #13
    //   922: invokevirtual size : ()I
    //   925: if_icmpge -> 1306
    //   928: aload #13
    //   930: iload #4
    //   932: invokevirtual get : (I)Ljava/lang/Object;
    //   935: checkcast android/support/transition/TransitionValues
    //   938: astore #9
    //   940: aload #14
    //   942: iload #4
    //   944: invokevirtual get : (I)Ljava/lang/Object;
    //   947: checkcast android/support/transition/TransitionValues
    //   950: astore #10
    //   952: aload #9
    //   954: ifnonnull -> 962
    //   957: aload #10
    //   959: ifnull -> 1272
    //   962: aload #9
    //   964: ifnull -> 977
    //   967: aload #9
    //   969: aload #10
    //   971: invokevirtual equals : (Ljava/lang/Object;)Z
    //   974: ifne -> 1272
    //   977: aload_0
    //   978: aload_1
    //   979: aload #9
    //   981: aload #10
    //   983: invokevirtual createAnimator : (Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    //   986: astore_2
    //   987: aload_2
    //   988: ifnull -> 1272
    //   991: aload #10
    //   993: ifnull -> 1290
    //   996: aload #10
    //   998: getfield view : Landroid/view/View;
    //   1001: astore #11
    //   1003: aload_0
    //   1004: invokevirtual getTransitionProperties : ()[Ljava/lang/String;
    //   1007: astore #10
    //   1009: aload #11
    //   1011: ifnull -> 1320
    //   1014: aload #10
    //   1016: ifnull -> 1320
    //   1019: aload #10
    //   1021: arraylength
    //   1022: ifle -> 1320
    //   1025: new android/support/transition/TransitionValues
    //   1028: dup
    //   1029: invokespecial <init> : ()V
    //   1032: astore #9
    //   1034: aload #9
    //   1036: aload #11
    //   1038: putfield view : Landroid/view/View;
    //   1041: aload_3
    //   1042: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   1045: aload #11
    //   1047: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   1050: checkcast android/support/transition/TransitionValues
    //   1053: astore #15
    //   1055: aload #15
    //   1057: ifnull -> 1111
    //   1060: iconst_0
    //   1061: istore #5
    //   1063: iload #5
    //   1065: aload #10
    //   1067: arraylength
    //   1068: if_icmpge -> 1111
    //   1071: aload #9
    //   1073: getfield values : Ljava/util/Map;
    //   1076: aload #10
    //   1078: iload #5
    //   1080: aaload
    //   1081: aload #15
    //   1083: getfield values : Ljava/util/Map;
    //   1086: aload #10
    //   1088: iload #5
    //   1090: aaload
    //   1091: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   1096: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1101: pop
    //   1102: iload #5
    //   1104: iconst_1
    //   1105: iadd
    //   1106: istore #5
    //   1108: goto -> 1063
    //   1111: aload #12
    //   1113: invokevirtual size : ()I
    //   1116: istore #6
    //   1118: iconst_0
    //   1119: istore #5
    //   1121: iload #5
    //   1123: iload #6
    //   1125: if_icmpge -> 1307
    //   1128: aload #12
    //   1130: aload #12
    //   1132: iload #5
    //   1134: invokevirtual keyAt : (I)Ljava/lang/Object;
    //   1137: checkcast android/animation/Animator
    //   1140: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   1143: checkcast android/support/transition/TransitionPort$AnimationInfo
    //   1146: astore #10
    //   1148: aload #10
    //   1150: getfield values : Landroid/support/transition/TransitionValues;
    //   1153: ifnull -> 1281
    //   1156: aload #10
    //   1158: getfield view : Landroid/view/View;
    //   1161: aload #11
    //   1163: if_acmpne -> 1281
    //   1166: aload #10
    //   1168: getfield name : Ljava/lang/String;
    //   1171: ifnonnull -> 1181
    //   1174: aload_0
    //   1175: invokevirtual getName : ()Ljava/lang/String;
    //   1178: ifnull -> 1196
    //   1181: aload #10
    //   1183: getfield name : Ljava/lang/String;
    //   1186: aload_0
    //   1187: invokevirtual getName : ()Ljava/lang/String;
    //   1190: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1193: ifeq -> 1281
    //   1196: aload #10
    //   1198: getfield values : Landroid/support/transition/TransitionValues;
    //   1201: aload #9
    //   1203: invokevirtual equals : (Ljava/lang/Object;)Z
    //   1206: ifeq -> 1281
    //   1209: aconst_null
    //   1210: astore #10
    //   1212: aload #9
    //   1214: astore_2
    //   1215: aload #10
    //   1217: astore #9
    //   1219: aload #11
    //   1221: astore #10
    //   1223: aload #9
    //   1225: astore #11
    //   1227: aload_2
    //   1228: astore #9
    //   1230: aload #11
    //   1232: ifnull -> 1272
    //   1235: aload #12
    //   1237: aload #11
    //   1239: new android/support/transition/TransitionPort$AnimationInfo
    //   1242: dup
    //   1243: aload #10
    //   1245: aload_0
    //   1246: invokevirtual getName : ()Ljava/lang/String;
    //   1249: aload_1
    //   1250: invokestatic getWindowId : (Landroid/view/View;)Landroid/support/transition/WindowIdPort;
    //   1253: aload #9
    //   1255: invokespecial <init> : (Landroid/view/View;Ljava/lang/String;Landroid/support/transition/WindowIdPort;Landroid/support/transition/TransitionValues;)V
    //   1258: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1261: pop
    //   1262: aload_0
    //   1263: getfield mAnimators : Ljava/util/ArrayList;
    //   1266: aload #11
    //   1268: invokevirtual add : (Ljava/lang/Object;)Z
    //   1271: pop
    //   1272: iload #4
    //   1274: iconst_1
    //   1275: iadd
    //   1276: istore #4
    //   1278: goto -> 918
    //   1281: iload #5
    //   1283: iconst_1
    //   1284: iadd
    //   1285: istore #5
    //   1287: goto -> 1121
    //   1290: aload #9
    //   1292: getfield view : Landroid/view/View;
    //   1295: astore #10
    //   1297: aconst_null
    //   1298: astore #9
    //   1300: aload_2
    //   1301: astore #11
    //   1303: goto -> 1230
    //   1306: return
    //   1307: aload_2
    //   1308: astore #10
    //   1310: aload #9
    //   1312: astore_2
    //   1313: aload #10
    //   1315: astore #9
    //   1317: goto -> 1219
    //   1320: aconst_null
    //   1321: astore #10
    //   1323: aload_2
    //   1324: astore #9
    //   1326: aload #10
    //   1328: astore_2
    //   1329: goto -> 1219
    //   1332: goto -> 408
    //   1335: aconst_null
    //   1336: astore #10
    //   1338: goto -> 282
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void end() {
    byte b = 0;
    this.mNumInstances--;
    if (this.mNumInstances == 0) {
      int j;
      if (this.mListeners != null && this.mListeners.size() > 0) {
        ArrayList<TransitionPort$TransitionListener> arrayList = (ArrayList)this.mListeners.clone();
        j = arrayList.size();
        for (int k = 0; k < j; k++)
          ((TransitionPort$TransitionListener)arrayList.get(k)).onTransitionEnd(this); 
      } 
      int i = 0;
      while (true) {
        j = b;
        if (i < this.mStartValues.itemIdValues.size()) {
          View view = ((TransitionValues)this.mStartValues.itemIdValues.valueAt(i)).view;
          i++;
          continue;
        } 
        break;
      } 
      while (j < this.mEndValues.itemIdValues.size()) {
        View view = ((TransitionValues)this.mEndValues.itemIdValues.valueAt(j)).view;
        j++;
      } 
      this.mEnded = true;
    } 
  }
  
  public TransitionPort excludeChildren(int paramInt, boolean paramBoolean) {
    this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, paramInt, paramBoolean);
    return this;
  }
  
  public TransitionPort excludeChildren(View paramView, boolean paramBoolean) {
    this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, paramView, paramBoolean);
    return this;
  }
  
  public TransitionPort excludeChildren(Class paramClass, boolean paramBoolean) {
    this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, paramClass, paramBoolean);
    return this;
  }
  
  public TransitionPort excludeTarget(int paramInt, boolean paramBoolean) {
    this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, paramInt, paramBoolean);
    return this;
  }
  
  public TransitionPort excludeTarget(View paramView, boolean paramBoolean) {
    this.mTargetExcludes = excludeView(this.mTargetExcludes, paramView, paramBoolean);
    return this;
  }
  
  public TransitionPort excludeTarget(Class paramClass, boolean paramBoolean) {
    this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, paramClass, paramBoolean);
    return this;
  }
  
  public long getDuration() {
    return this.mDuration;
  }
  
  public TimeInterpolator getInterpolator() {
    return this.mInterpolator;
  }
  
  public String getName() {
    return this.mName;
  }
  
  public long getStartDelay() {
    return this.mStartDelay;
  }
  
  public List<Integer> getTargetIds() {
    return this.mTargetIds;
  }
  
  public List<View> getTargets() {
    return this.mTargets;
  }
  
  public String[] getTransitionProperties() {
    return null;
  }
  
  public TransitionValues getTransitionValues(View paramView, boolean paramBoolean) {
    ListView listView;
    TransitionValuesMaps transitionValuesMaps;
    if (this.mParent != null)
      return this.mParent.getTransitionValues(paramView, paramBoolean); 
    if (paramBoolean) {
      transitionValuesMaps = this.mStartValues;
    } else {
      transitionValuesMaps = this.mEndValues;
    } 
    TransitionValues transitionValues2 = (TransitionValues)transitionValuesMaps.viewValues.get(paramView);
    TransitionValues transitionValues1 = transitionValues2;
    if (transitionValues2 == null) {
      int i = paramView.getId();
      if (i >= 0)
        transitionValues2 = (TransitionValues)transitionValuesMaps.idValues.get(i); 
      transitionValues1 = transitionValues2;
      if (transitionValues2 == null) {
        transitionValues1 = transitionValues2;
        if (paramView.getParent() instanceof ListView) {
          listView = (ListView)paramView.getParent();
          long l = listView.getItemIdAtPosition(listView.getPositionForView(paramView));
          return (TransitionValues)transitionValuesMaps.itemIdValues.get(l);
        } 
      } 
    } 
    return (TransitionValues)listView;
  }
  
  boolean isValidTarget(View paramView, long paramLong) {
    if ((this.mTargetIdExcludes == null || !this.mTargetIdExcludes.contains(Integer.valueOf((int)paramLong))) && (this.mTargetExcludes == null || !this.mTargetExcludes.contains(paramView))) {
      if (this.mTargetTypeExcludes != null && paramView != null) {
        int j = this.mTargetTypeExcludes.size();
        int i = 0;
        while (i < j) {
          if (!((Class)this.mTargetTypeExcludes.get(i)).isInstance(paramView)) {
            i++;
            continue;
          } 
          return false;
        } 
      } 
      if (this.mTargetIds.size() == 0 && this.mTargets.size() == 0)
        return true; 
      if (this.mTargetIds.size() > 0) {
        int i;
        for (i = 0; i < this.mTargetIds.size(); i++) {
          if (((Integer)this.mTargetIds.get(i)).intValue() == paramLong)
            return true; 
        } 
      } 
      if (paramView != null && this.mTargets.size() > 0) {
        int i = 0;
        while (true) {
          if (i < this.mTargets.size()) {
            if (this.mTargets.get(i) == paramView)
              return true; 
            i++;
            continue;
          } 
          return false;
        } 
      } 
    } 
    return false;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void pause(View paramView) {
    if (!this.mEnded) {
      ArrayMap<Animator, TransitionPort$AnimationInfo> arrayMap = getRunningAnimators();
      int i = arrayMap.size();
      WindowIdPort windowIdPort = WindowIdPort.getWindowId(paramView);
      while (--i >= 0) {
        TransitionPort$AnimationInfo transitionPort$AnimationInfo = (TransitionPort$AnimationInfo)arrayMap.valueAt(i);
        if (transitionPort$AnimationInfo.view != null && windowIdPort.equals(transitionPort$AnimationInfo.windowId))
          ((Animator)arrayMap.keyAt(i)).cancel(); 
        i--;
      } 
      if (this.mListeners != null && this.mListeners.size() > 0) {
        ArrayList<TransitionPort$TransitionListener> arrayList = (ArrayList)this.mListeners.clone();
        int j = arrayList.size();
        for (i = 0; i < j; i++)
          ((TransitionPort$TransitionListener)arrayList.get(i)).onTransitionPause(this); 
      } 
      this.mPaused = true;
    } 
  }
  
  void playTransition(ViewGroup paramViewGroup) {
    // Byte code:
    //   0: invokestatic getRunningAnimators : ()Landroid/support/v4/util/ArrayMap;
    //   3: astore #5
    //   5: aload #5
    //   7: invokevirtual size : ()I
    //   10: iconst_1
    //   11: isub
    //   12: istore_2
    //   13: iload_2
    //   14: iflt -> 287
    //   17: aload #5
    //   19: iload_2
    //   20: invokevirtual keyAt : (I)Ljava/lang/Object;
    //   23: checkcast android/animation/Animator
    //   26: astore #6
    //   28: aload #6
    //   30: ifnull -> 263
    //   33: aload #5
    //   35: aload #6
    //   37: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   40: checkcast android/support/transition/TransitionPort$AnimationInfo
    //   43: astore #4
    //   45: aload #4
    //   47: ifnull -> 263
    //   50: aload #4
    //   52: getfield view : Landroid/view/View;
    //   55: ifnull -> 263
    //   58: aload #4
    //   60: getfield view : Landroid/view/View;
    //   63: invokevirtual getContext : ()Landroid/content/Context;
    //   66: aload_1
    //   67: invokevirtual getContext : ()Landroid/content/Context;
    //   70: if_acmpne -> 263
    //   73: aload #4
    //   75: getfield values : Landroid/support/transition/TransitionValues;
    //   78: astore #7
    //   80: aload #4
    //   82: getfield view : Landroid/view/View;
    //   85: astore #8
    //   87: aload_0
    //   88: getfield mEndValues : Landroid/support/transition/TransitionValuesMaps;
    //   91: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   94: ifnull -> 270
    //   97: aload_0
    //   98: getfield mEndValues : Landroid/support/transition/TransitionValuesMaps;
    //   101: getfield viewValues : Landroid/support/v4/util/ArrayMap;
    //   104: aload #8
    //   106: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   109: checkcast android/support/transition/TransitionValues
    //   112: astore #4
    //   114: aload #4
    //   116: ifnonnull -> 310
    //   119: aload_0
    //   120: getfield mEndValues : Landroid/support/transition/TransitionValuesMaps;
    //   123: getfield idValues : Landroid/util/SparseArray;
    //   126: aload #8
    //   128: invokevirtual getId : ()I
    //   131: invokevirtual get : (I)Ljava/lang/Object;
    //   134: checkcast android/support/transition/TransitionValues
    //   137: astore #4
    //   139: aload #7
    //   141: ifnull -> 305
    //   144: aload #4
    //   146: ifnull -> 305
    //   149: aload #7
    //   151: getfield values : Ljava/util/Map;
    //   154: invokeinterface keySet : ()Ljava/util/Set;
    //   159: invokeinterface iterator : ()Ljava/util/Iterator;
    //   164: astore #8
    //   166: aload #8
    //   168: invokeinterface hasNext : ()Z
    //   173: ifeq -> 305
    //   176: aload #8
    //   178: invokeinterface next : ()Ljava/lang/Object;
    //   183: checkcast java/lang/String
    //   186: astore #10
    //   188: aload #7
    //   190: getfield values : Ljava/util/Map;
    //   193: aload #10
    //   195: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   200: astore #9
    //   202: aload #4
    //   204: getfield values : Ljava/util/Map;
    //   207: aload #10
    //   209: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   214: astore #10
    //   216: aload #9
    //   218: ifnull -> 166
    //   221: aload #10
    //   223: ifnull -> 166
    //   226: aload #9
    //   228: aload #10
    //   230: invokevirtual equals : (Ljava/lang/Object;)Z
    //   233: ifne -> 166
    //   236: iconst_1
    //   237: istore_3
    //   238: iload_3
    //   239: ifeq -> 263
    //   242: aload #6
    //   244: invokevirtual isRunning : ()Z
    //   247: ifne -> 258
    //   250: aload #6
    //   252: invokevirtual isStarted : ()Z
    //   255: ifeq -> 276
    //   258: aload #6
    //   260: invokevirtual cancel : ()V
    //   263: iload_2
    //   264: iconst_1
    //   265: isub
    //   266: istore_2
    //   267: goto -> 13
    //   270: aconst_null
    //   271: astore #4
    //   273: goto -> 114
    //   276: aload #5
    //   278: aload #6
    //   280: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   283: pop
    //   284: goto -> 263
    //   287: aload_0
    //   288: aload_1
    //   289: aload_0
    //   290: getfield mStartValues : Landroid/support/transition/TransitionValuesMaps;
    //   293: aload_0
    //   294: getfield mEndValues : Landroid/support/transition/TransitionValuesMaps;
    //   297: invokevirtual createAnimators : (Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    //   300: aload_0
    //   301: invokevirtual runAnimators : ()V
    //   304: return
    //   305: iconst_0
    //   306: istore_3
    //   307: goto -> 238
    //   310: goto -> 139
  }
  
  public TransitionPort removeListener(TransitionPort$TransitionListener paramTransitionPort$TransitionListener) {
    if (this.mListeners != null) {
      this.mListeners.remove(paramTransitionPort$TransitionListener);
      if (this.mListeners.size() == 0) {
        this.mListeners = null;
        return this;
      } 
    } 
    return this;
  }
  
  public TransitionPort removeTarget(int paramInt) {
    if (paramInt > 0)
      this.mTargetIds.remove(Integer.valueOf(paramInt)); 
    return this;
  }
  
  public TransitionPort removeTarget(View paramView) {
    if (paramView != null)
      this.mTargets.remove(paramView); 
    return this;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void resume(View paramView) {
    if (this.mPaused) {
      if (!this.mEnded) {
        ArrayMap<Animator, TransitionPort$AnimationInfo> arrayMap = getRunningAnimators();
        int i = arrayMap.size();
        WindowIdPort windowIdPort = WindowIdPort.getWindowId(paramView);
        while (--i >= 0) {
          TransitionPort$AnimationInfo transitionPort$AnimationInfo = (TransitionPort$AnimationInfo)arrayMap.valueAt(i);
          if (transitionPort$AnimationInfo.view != null && windowIdPort.equals(transitionPort$AnimationInfo.windowId))
            ((Animator)arrayMap.keyAt(i)).end(); 
          i--;
        } 
        if (this.mListeners != null && this.mListeners.size() > 0) {
          ArrayList<TransitionPort$TransitionListener> arrayList = (ArrayList)this.mListeners.clone();
          int j = arrayList.size();
          for (i = 0; i < j; i++)
            ((TransitionPort$TransitionListener)arrayList.get(i)).onTransitionResume(this); 
        } 
      } 
      this.mPaused = false;
    } 
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void runAnimators() {
    start();
    ArrayMap<Animator, TransitionPort$AnimationInfo> arrayMap = getRunningAnimators();
    for (Animator animator : this.mAnimators) {
      if (arrayMap.containsKey(animator)) {
        start();
        runAnimator(animator, arrayMap);
      } 
    } 
    this.mAnimators.clear();
    end();
  }
  
  void setCanRemoveViews(boolean paramBoolean) {
    this.mCanRemoveViews = paramBoolean;
  }
  
  public TransitionPort setDuration(long paramLong) {
    this.mDuration = paramLong;
    return this;
  }
  
  public TransitionPort setInterpolator(TimeInterpolator paramTimeInterpolator) {
    this.mInterpolator = paramTimeInterpolator;
    return this;
  }
  
  TransitionPort setSceneRoot(ViewGroup paramViewGroup) {
    this.mSceneRoot = paramViewGroup;
    return this;
  }
  
  public TransitionPort setStartDelay(long paramLong) {
    this.mStartDelay = paramLong;
    return this;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  protected void start() {
    if (this.mNumInstances == 0) {
      if (this.mListeners != null && this.mListeners.size() > 0) {
        ArrayList<TransitionPort$TransitionListener> arrayList = (ArrayList)this.mListeners.clone();
        int j = arrayList.size();
        for (int i = 0; i < j; i++)
          ((TransitionPort$TransitionListener)arrayList.get(i)).onTransitionStart(this); 
      } 
      this.mEnded = false;
    } 
    this.mNumInstances++;
  }
  
  public String toString() {
    return toString("");
  }
  
  String toString(String paramString) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: new java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial <init> : ()V
    //   9: aload_1
    //   10: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   13: aload_0
    //   14: invokevirtual getClass : ()Ljava/lang/Class;
    //   17: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   20: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: ldc_w '@'
    //   26: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: aload_0
    //   30: invokevirtual hashCode : ()I
    //   33: invokestatic toHexString : (I)Ljava/lang/String;
    //   36: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc_w ': '
    //   42: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual toString : ()Ljava/lang/String;
    //   48: astore #4
    //   50: aload #4
    //   52: astore_1
    //   53: aload_0
    //   54: getfield mDuration : J
    //   57: ldc2_w -1
    //   60: lcmp
    //   61: ifeq -> 99
    //   64: new java/lang/StringBuilder
    //   67: dup
    //   68: invokespecial <init> : ()V
    //   71: aload #4
    //   73: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: ldc_w 'dur('
    //   79: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: aload_0
    //   83: getfield mDuration : J
    //   86: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   89: ldc_w ') '
    //   92: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual toString : ()Ljava/lang/String;
    //   98: astore_1
    //   99: aload_1
    //   100: astore #4
    //   102: aload_0
    //   103: getfield mStartDelay : J
    //   106: ldc2_w -1
    //   109: lcmp
    //   110: ifeq -> 148
    //   113: new java/lang/StringBuilder
    //   116: dup
    //   117: invokespecial <init> : ()V
    //   120: aload_1
    //   121: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: ldc_w 'dly('
    //   127: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload_0
    //   131: getfield mStartDelay : J
    //   134: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   137: ldc_w ') '
    //   140: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual toString : ()Ljava/lang/String;
    //   146: astore #4
    //   148: aload #4
    //   150: astore_1
    //   151: aload_0
    //   152: getfield mInterpolator : Landroid/animation/TimeInterpolator;
    //   155: ifnull -> 193
    //   158: new java/lang/StringBuilder
    //   161: dup
    //   162: invokespecial <init> : ()V
    //   165: aload #4
    //   167: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: ldc_w 'interp('
    //   173: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: aload_0
    //   177: getfield mInterpolator : Landroid/animation/TimeInterpolator;
    //   180: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   183: ldc_w ') '
    //   186: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual toString : ()Ljava/lang/String;
    //   192: astore_1
    //   193: aload_0
    //   194: getfield mTargetIds : Ljava/util/ArrayList;
    //   197: invokevirtual size : ()I
    //   200: ifgt -> 216
    //   203: aload_1
    //   204: astore #4
    //   206: aload_0
    //   207: getfield mTargets : Ljava/util/ArrayList;
    //   210: invokevirtual size : ()I
    //   213: ifle -> 443
    //   216: new java/lang/StringBuilder
    //   219: dup
    //   220: invokespecial <init> : ()V
    //   223: aload_1
    //   224: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: ldc_w 'tgts('
    //   230: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: invokevirtual toString : ()Ljava/lang/String;
    //   236: astore_1
    //   237: aload_0
    //   238: getfield mTargetIds : Ljava/util/ArrayList;
    //   241: invokevirtual size : ()I
    //   244: ifle -> 326
    //   247: iconst_0
    //   248: istore_2
    //   249: aload_1
    //   250: astore #4
    //   252: iload_2
    //   253: aload_0
    //   254: getfield mTargetIds : Ljava/util/ArrayList;
    //   257: invokevirtual size : ()I
    //   260: if_icmpge -> 329
    //   263: aload_1
    //   264: astore #4
    //   266: iload_2
    //   267: ifle -> 292
    //   270: new java/lang/StringBuilder
    //   273: dup
    //   274: invokespecial <init> : ()V
    //   277: aload_1
    //   278: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: ldc_w ', '
    //   284: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: invokevirtual toString : ()Ljava/lang/String;
    //   290: astore #4
    //   292: new java/lang/StringBuilder
    //   295: dup
    //   296: invokespecial <init> : ()V
    //   299: aload #4
    //   301: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: aload_0
    //   305: getfield mTargetIds : Ljava/util/ArrayList;
    //   308: iload_2
    //   309: invokevirtual get : (I)Ljava/lang/Object;
    //   312: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   315: invokevirtual toString : ()Ljava/lang/String;
    //   318: astore_1
    //   319: iload_2
    //   320: iconst_1
    //   321: iadd
    //   322: istore_2
    //   323: goto -> 249
    //   326: aload_1
    //   327: astore #4
    //   329: aload #4
    //   331: astore_1
    //   332: aload_0
    //   333: getfield mTargets : Ljava/util/ArrayList;
    //   336: invokevirtual size : ()I
    //   339: ifle -> 421
    //   342: iload_3
    //   343: istore_2
    //   344: aload #4
    //   346: astore_1
    //   347: iload_2
    //   348: aload_0
    //   349: getfield mTargets : Ljava/util/ArrayList;
    //   352: invokevirtual size : ()I
    //   355: if_icmpge -> 421
    //   358: aload #4
    //   360: astore_1
    //   361: iload_2
    //   362: ifle -> 387
    //   365: new java/lang/StringBuilder
    //   368: dup
    //   369: invokespecial <init> : ()V
    //   372: aload #4
    //   374: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: ldc_w ', '
    //   380: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: invokevirtual toString : ()Ljava/lang/String;
    //   386: astore_1
    //   387: new java/lang/StringBuilder
    //   390: dup
    //   391: invokespecial <init> : ()V
    //   394: aload_1
    //   395: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   398: aload_0
    //   399: getfield mTargets : Ljava/util/ArrayList;
    //   402: iload_2
    //   403: invokevirtual get : (I)Ljava/lang/Object;
    //   406: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   409: invokevirtual toString : ()Ljava/lang/String;
    //   412: astore #4
    //   414: iload_2
    //   415: iconst_1
    //   416: iadd
    //   417: istore_2
    //   418: goto -> 344
    //   421: new java/lang/StringBuilder
    //   424: dup
    //   425: invokespecial <init> : ()V
    //   428: aload_1
    //   429: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   432: ldc_w ')'
    //   435: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   438: invokevirtual toString : ()Ljava/lang/String;
    //   441: astore #4
    //   443: aload #4
    //   445: areturn
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionPort.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */