package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.view.View;
import android.view.animation.Interpolator;

class RecyclerView$ViewFlinger implements Runnable {
  private boolean mEatRunOnAnimationRequest = false;
  
  Interpolator mInterpolator = RecyclerView.sQuinticInterpolator;
  
  private int mLastFlingX;
  
  private int mLastFlingY;
  
  private boolean mReSchedulePostAnimationCallback = false;
  
  private ScrollerCompat mScroller;
  
  public RecyclerView$ViewFlinger() {
    this.mScroller = ScrollerCompat.create(paramRecyclerView.getContext(), RecyclerView.sQuinticInterpolator);
  }
  
  private int computeScrollDuration(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    boolean bool;
    int i = Math.abs(paramInt1);
    int j = Math.abs(paramInt2);
    if (i > j) {
      bool = true;
    } else {
      bool = false;
    } 
    paramInt3 = (int)Math.sqrt((paramInt3 * paramInt3 + paramInt4 * paramInt4));
    paramInt2 = (int)Math.sqrt((paramInt1 * paramInt1 + paramInt2 * paramInt2));
    if (bool) {
      paramInt1 = RecyclerView.this.getWidth();
    } else {
      paramInt1 = RecyclerView.this.getHeight();
    } 
    paramInt4 = paramInt1 / 2;
    float f3 = Math.min(1.0F, paramInt2 * 1.0F / paramInt1);
    float f1 = paramInt4;
    float f2 = paramInt4;
    f3 = distanceInfluenceForSnapDuration(f3);
    if (paramInt3 > 0) {
      paramInt1 = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / paramInt3)) * 4;
      return Math.min(paramInt1, 2000);
    } 
    if (bool) {
      paramInt2 = i;
    } else {
      paramInt2 = j;
    } 
    paramInt1 = (int)((paramInt2 / paramInt1 + 1.0F) * 300.0F);
    return Math.min(paramInt1, 2000);
  }
  
  private void disableRunOnAnimationRequests() {
    this.mReSchedulePostAnimationCallback = false;
    this.mEatRunOnAnimationRequest = true;
  }
  
  private float distanceInfluenceForSnapDuration(float paramFloat) {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  private void enableRunOnAnimationRequests() {
    this.mEatRunOnAnimationRequest = false;
    if (this.mReSchedulePostAnimationCallback)
      postOnAnimation(); 
  }
  
  public void fling(int paramInt1, int paramInt2) {
    RecyclerView.this.setScrollState(2);
    this.mLastFlingY = 0;
    this.mLastFlingX = 0;
    this.mScroller.fling(0, 0, paramInt1, paramInt2, -2147483648, 2147483647, -2147483648, 2147483647);
    postOnAnimation();
  }
  
  void postOnAnimation() {
    if (this.mEatRunOnAnimationRequest) {
      this.mReSchedulePostAnimationCallback = true;
      return;
    } 
    RecyclerView.this.removeCallbacks(this);
    ViewCompat.postOnAnimation((View)RecyclerView.this, this);
  }
  
  public void run() {
    // Byte code:
    //   0: aload_0
    //   1: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   4: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   7: ifnonnull -> 15
    //   10: aload_0
    //   11: invokevirtual stop : ()V
    //   14: return
    //   15: aload_0
    //   16: invokespecial disableRunOnAnimationRequests : ()V
    //   19: aload_0
    //   20: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   23: invokevirtual consumePendingUpdateOperations : ()V
    //   26: aload_0
    //   27: getfield mScroller : Landroid/support/v4/widget/ScrollerCompat;
    //   30: astore #13
    //   32: aload_0
    //   33: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   36: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   39: getfield mSmoothScroller : Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    //   42: astore #14
    //   44: aload #13
    //   46: invokevirtual computeScrollOffset : ()Z
    //   49: ifeq -> 634
    //   52: aload #13
    //   54: invokevirtual getCurrX : ()I
    //   57: istore #11
    //   59: aload #13
    //   61: invokevirtual getCurrY : ()I
    //   64: istore #12
    //   66: iload #11
    //   68: aload_0
    //   69: getfield mLastFlingX : I
    //   72: isub
    //   73: istore #9
    //   75: iload #12
    //   77: aload_0
    //   78: getfield mLastFlingY : I
    //   81: isub
    //   82: istore #10
    //   84: iconst_0
    //   85: istore #6
    //   87: iconst_0
    //   88: istore_3
    //   89: iconst_0
    //   90: istore #7
    //   92: iconst_0
    //   93: istore_2
    //   94: aload_0
    //   95: iload #11
    //   97: putfield mLastFlingX : I
    //   100: aload_0
    //   101: iload #12
    //   103: putfield mLastFlingY : I
    //   106: iconst_0
    //   107: istore #8
    //   109: iconst_0
    //   110: istore_1
    //   111: iconst_0
    //   112: istore #5
    //   114: iconst_0
    //   115: istore #4
    //   117: aload_0
    //   118: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   121: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   124: ifnull -> 739
    //   127: aload_0
    //   128: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   131: invokevirtual eatRequestLayout : ()V
    //   134: aload_0
    //   135: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   138: invokevirtual onEnterLayoutOrScroll : ()V
    //   141: ldc 'RV Scroll'
    //   143: invokestatic beginSection : (Ljava/lang/String;)V
    //   146: iload #9
    //   148: ifeq -> 183
    //   151: aload_0
    //   152: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   155: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   158: iload #9
    //   160: aload_0
    //   161: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   164: getfield mRecycler : Landroid/support/v7/widget/RecyclerView$Recycler;
    //   167: aload_0
    //   168: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   171: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   174: invokevirtual scrollHorizontallyBy : (ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    //   177: istore_3
    //   178: iload #9
    //   180: iload_3
    //   181: isub
    //   182: istore_1
    //   183: iload #10
    //   185: ifeq -> 221
    //   188: aload_0
    //   189: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   192: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   195: iload #10
    //   197: aload_0
    //   198: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   201: getfield mRecycler : Landroid/support/v7/widget/RecyclerView$Recycler;
    //   204: aload_0
    //   205: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   208: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   211: invokevirtual scrollVerticallyBy : (ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    //   214: istore_2
    //   215: iload #10
    //   217: iload_2
    //   218: isub
    //   219: istore #4
    //   221: invokestatic endSection : ()V
    //   224: aload_0
    //   225: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   228: invokevirtual repositionShadowingViews : ()V
    //   231: aload_0
    //   232: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   235: invokevirtual onExitLayoutOrScroll : ()V
    //   238: aload_0
    //   239: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   242: iconst_0
    //   243: invokevirtual resumeRequestLayout : (Z)V
    //   246: iload #4
    //   248: istore #5
    //   250: iload_2
    //   251: istore #7
    //   253: iload_1
    //   254: istore #8
    //   256: iload_3
    //   257: istore #6
    //   259: aload #14
    //   261: ifnull -> 739
    //   264: iload #4
    //   266: istore #5
    //   268: iload_2
    //   269: istore #7
    //   271: iload_1
    //   272: istore #8
    //   274: iload_3
    //   275: istore #6
    //   277: aload #14
    //   279: invokevirtual isPendingInitialRun : ()Z
    //   282: ifne -> 739
    //   285: iload #4
    //   287: istore #5
    //   289: iload_2
    //   290: istore #7
    //   292: iload_1
    //   293: istore #8
    //   295: iload_3
    //   296: istore #6
    //   298: aload #14
    //   300: invokevirtual isRunning : ()Z
    //   303: ifeq -> 739
    //   306: aload_0
    //   307: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   310: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   313: invokevirtual getItemCount : ()I
    //   316: istore #5
    //   318: iload #5
    //   320: ifne -> 671
    //   323: aload #14
    //   325: invokevirtual stop : ()V
    //   328: iload_2
    //   329: istore #5
    //   331: iload_1
    //   332: istore_2
    //   333: aload_0
    //   334: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   337: getfield mItemDecorations : Ljava/util/ArrayList;
    //   340: invokevirtual isEmpty : ()Z
    //   343: ifne -> 353
    //   346: aload_0
    //   347: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   350: invokevirtual invalidate : ()V
    //   353: aload_0
    //   354: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   357: invokevirtual getOverScrollMode : ()I
    //   360: iconst_2
    //   361: if_icmpeq -> 375
    //   364: aload_0
    //   365: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   368: iload #9
    //   370: iload #10
    //   372: invokevirtual considerReleasingGlowsOnScroll : (II)V
    //   375: iload_2
    //   376: ifne -> 384
    //   379: iload #4
    //   381: ifeq -> 489
    //   384: aload #13
    //   386: invokevirtual getCurrVelocity : ()F
    //   389: f2i
    //   390: istore #6
    //   392: iload_2
    //   393: iload #11
    //   395: if_icmpeq -> 839
    //   398: iload_2
    //   399: ifge -> 756
    //   402: iload #6
    //   404: ineg
    //   405: istore_1
    //   406: iload_1
    //   407: istore #7
    //   409: iload #4
    //   411: iload #12
    //   413: if_icmpeq -> 834
    //   416: iload #4
    //   418: ifge -> 771
    //   421: iload #6
    //   423: ineg
    //   424: istore_1
    //   425: aload_0
    //   426: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   429: invokevirtual getOverScrollMode : ()I
    //   432: iconst_2
    //   433: if_icmpeq -> 446
    //   436: aload_0
    //   437: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   440: iload #7
    //   442: iload_1
    //   443: invokevirtual absorbGlows : (II)V
    //   446: iload #7
    //   448: ifne -> 465
    //   451: iload_2
    //   452: iload #11
    //   454: if_icmpeq -> 465
    //   457: aload #13
    //   459: invokevirtual getFinalX : ()I
    //   462: ifne -> 489
    //   465: iload_1
    //   466: ifne -> 484
    //   469: iload #4
    //   471: iload #12
    //   473: if_icmpeq -> 484
    //   476: aload #13
    //   478: invokevirtual getFinalY : ()I
    //   481: ifne -> 489
    //   484: aload #13
    //   486: invokevirtual abortAnimation : ()V
    //   489: iload_3
    //   490: ifne -> 498
    //   493: iload #5
    //   495: ifeq -> 508
    //   498: aload_0
    //   499: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   502: iload_3
    //   503: iload #5
    //   505: invokevirtual dispatchOnScrolled : (II)V
    //   508: aload_0
    //   509: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   512: invokestatic access$500 : (Landroid/support/v7/widget/RecyclerView;)Z
    //   515: ifne -> 525
    //   518: aload_0
    //   519: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   522: invokevirtual invalidate : ()V
    //   525: iload #10
    //   527: ifeq -> 784
    //   530: aload_0
    //   531: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   534: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   537: invokevirtual canScrollVertically : ()Z
    //   540: ifeq -> 784
    //   543: iload #5
    //   545: iload #10
    //   547: if_icmpne -> 784
    //   550: iconst_1
    //   551: istore_1
    //   552: iload #9
    //   554: ifeq -> 789
    //   557: aload_0
    //   558: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   561: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   564: invokevirtual canScrollHorizontally : ()Z
    //   567: ifeq -> 789
    //   570: iload_3
    //   571: iload #9
    //   573: if_icmpne -> 789
    //   576: iconst_1
    //   577: istore_2
    //   578: iload #9
    //   580: ifne -> 588
    //   583: iload #10
    //   585: ifeq -> 596
    //   588: iload_2
    //   589: ifne -> 596
    //   592: iload_1
    //   593: ifeq -> 794
    //   596: iconst_1
    //   597: istore_1
    //   598: aload #13
    //   600: invokevirtual isFinished : ()Z
    //   603: ifne -> 610
    //   606: iload_1
    //   607: ifne -> 799
    //   610: aload_0
    //   611: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   614: iconst_0
    //   615: invokevirtual setScrollState : (I)V
    //   618: invokestatic access$600 : ()Z
    //   621: ifeq -> 634
    //   624: aload_0
    //   625: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   628: getfield mPrefetchRegistry : Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;
    //   631: invokevirtual clearPrefetchPositions : ()V
    //   634: aload #14
    //   636: ifnull -> 666
    //   639: aload #14
    //   641: invokevirtual isPendingInitialRun : ()Z
    //   644: ifeq -> 654
    //   647: aload #14
    //   649: iconst_0
    //   650: iconst_0
    //   651: invokestatic access$400 : (Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V
    //   654: aload_0
    //   655: getfield mReSchedulePostAnimationCallback : Z
    //   658: ifne -> 666
    //   661: aload #14
    //   663: invokevirtual stop : ()V
    //   666: aload_0
    //   667: invokespecial enableRunOnAnimationRequests : ()V
    //   670: return
    //   671: aload #14
    //   673: invokevirtual getTargetPosition : ()I
    //   676: iload #5
    //   678: if_icmplt -> 712
    //   681: aload #14
    //   683: iload #5
    //   685: iconst_1
    //   686: isub
    //   687: invokevirtual setTargetPosition : (I)V
    //   690: aload #14
    //   692: iload #9
    //   694: iload_1
    //   695: isub
    //   696: iload #10
    //   698: iload #4
    //   700: isub
    //   701: invokestatic access$400 : (Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V
    //   704: iload_2
    //   705: istore #5
    //   707: iload_1
    //   708: istore_2
    //   709: goto -> 333
    //   712: aload #14
    //   714: iload #9
    //   716: iload_1
    //   717: isub
    //   718: iload #10
    //   720: iload #4
    //   722: isub
    //   723: invokestatic access$400 : (Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V
    //   726: iload_3
    //   727: istore #6
    //   729: iload_1
    //   730: istore #8
    //   732: iload_2
    //   733: istore #7
    //   735: iload #4
    //   737: istore #5
    //   739: iload #8
    //   741: istore_2
    //   742: iload #5
    //   744: istore #4
    //   746: iload #7
    //   748: istore #5
    //   750: iload #6
    //   752: istore_3
    //   753: goto -> 333
    //   756: iload_2
    //   757: ifle -> 766
    //   760: iload #6
    //   762: istore_1
    //   763: goto -> 406
    //   766: iconst_0
    //   767: istore_1
    //   768: goto -> 406
    //   771: iload #6
    //   773: istore_1
    //   774: iload #4
    //   776: ifgt -> 425
    //   779: iconst_0
    //   780: istore_1
    //   781: goto -> 425
    //   784: iconst_0
    //   785: istore_1
    //   786: goto -> 552
    //   789: iconst_0
    //   790: istore_2
    //   791: goto -> 578
    //   794: iconst_0
    //   795: istore_1
    //   796: goto -> 598
    //   799: aload_0
    //   800: invokevirtual postOnAnimation : ()V
    //   803: aload_0
    //   804: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   807: getfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   810: ifnull -> 634
    //   813: aload_0
    //   814: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   817: getfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   820: aload_0
    //   821: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   824: iload #9
    //   826: iload #10
    //   828: invokevirtual postFromTraversal : (Landroid/support/v7/widget/RecyclerView;II)V
    //   831: goto -> 634
    //   834: iconst_0
    //   835: istore_1
    //   836: goto -> 425
    //   839: iconst_0
    //   840: istore #7
    //   842: goto -> 409
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2) {
    smoothScrollBy(paramInt1, paramInt2, 0, 0);
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3) {
    smoothScrollBy(paramInt1, paramInt2, paramInt3, RecyclerView.sQuinticInterpolator);
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    smoothScrollBy(paramInt1, paramInt2, computeScrollDuration(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator) {
    if (this.mInterpolator != paramInterpolator) {
      this.mInterpolator = paramInterpolator;
      this.mScroller = ScrollerCompat.create(RecyclerView.this.getContext(), paramInterpolator);
    } 
    RecyclerView.this.setScrollState(2);
    this.mLastFlingY = 0;
    this.mLastFlingX = 0;
    this.mScroller.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
    postOnAnimation();
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, Interpolator paramInterpolator) {
    int i = computeScrollDuration(paramInt1, paramInt2, 0, 0);
    Interpolator interpolator = paramInterpolator;
    if (paramInterpolator == null)
      interpolator = RecyclerView.sQuinticInterpolator; 
    smoothScrollBy(paramInt1, paramInt2, i, interpolator);
  }
  
  public void stop() {
    RecyclerView.this.removeCallbacks(this);
    this.mScroller.abortAnimation();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$ViewFlinger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */