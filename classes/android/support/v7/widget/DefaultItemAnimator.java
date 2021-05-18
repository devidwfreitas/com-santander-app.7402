package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.v4.animation.AnimatorCompatHelper;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DefaultItemAnimator extends SimpleItemAnimator {
  private static final boolean DEBUG = false;
  
  ArrayList<RecyclerView$ViewHolder> mAddAnimations = new ArrayList<RecyclerView$ViewHolder>();
  
  ArrayList<ArrayList<RecyclerView$ViewHolder>> mAdditionsList = new ArrayList<ArrayList<RecyclerView$ViewHolder>>();
  
  ArrayList<RecyclerView$ViewHolder> mChangeAnimations = new ArrayList<RecyclerView$ViewHolder>();
  
  ArrayList<ArrayList<DefaultItemAnimator$ChangeInfo>> mChangesList = new ArrayList<ArrayList<DefaultItemAnimator$ChangeInfo>>();
  
  ArrayList<RecyclerView$ViewHolder> mMoveAnimations = new ArrayList<RecyclerView$ViewHolder>();
  
  ArrayList<ArrayList<DefaultItemAnimator$MoveInfo>> mMovesList = new ArrayList<ArrayList<DefaultItemAnimator$MoveInfo>>();
  
  private ArrayList<RecyclerView$ViewHolder> mPendingAdditions = new ArrayList<RecyclerView$ViewHolder>();
  
  private ArrayList<DefaultItemAnimator$ChangeInfo> mPendingChanges = new ArrayList<DefaultItemAnimator$ChangeInfo>();
  
  private ArrayList<DefaultItemAnimator$MoveInfo> mPendingMoves = new ArrayList<DefaultItemAnimator$MoveInfo>();
  
  private ArrayList<RecyclerView$ViewHolder> mPendingRemovals = new ArrayList<RecyclerView$ViewHolder>();
  
  ArrayList<RecyclerView$ViewHolder> mRemoveAnimations = new ArrayList<RecyclerView$ViewHolder>();
  
  private void animateRemoveImpl(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate(paramRecyclerView$ViewHolder.itemView);
    this.mRemoveAnimations.add(paramRecyclerView$ViewHolder);
    viewPropertyAnimatorCompat.setDuration(getRemoveDuration()).alpha(0.0F).setListener(new DefaultItemAnimator$4(this, paramRecyclerView$ViewHolder, viewPropertyAnimatorCompat)).start();
  }
  
  private void endChangeAnimation(List<DefaultItemAnimator$ChangeInfo> paramList, RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    for (int i = paramList.size() - 1; i >= 0; i--) {
      DefaultItemAnimator$ChangeInfo defaultItemAnimator$ChangeInfo = paramList.get(i);
      if (endChangeAnimationIfNecessary(defaultItemAnimator$ChangeInfo, paramRecyclerView$ViewHolder) && defaultItemAnimator$ChangeInfo.oldHolder == null && defaultItemAnimator$ChangeInfo.newHolder == null)
        paramList.remove(defaultItemAnimator$ChangeInfo); 
    } 
  }
  
  private void endChangeAnimationIfNecessary(DefaultItemAnimator$ChangeInfo paramDefaultItemAnimator$ChangeInfo) {
    if (paramDefaultItemAnimator$ChangeInfo.oldHolder != null)
      endChangeAnimationIfNecessary(paramDefaultItemAnimator$ChangeInfo, paramDefaultItemAnimator$ChangeInfo.oldHolder); 
    if (paramDefaultItemAnimator$ChangeInfo.newHolder != null)
      endChangeAnimationIfNecessary(paramDefaultItemAnimator$ChangeInfo, paramDefaultItemAnimator$ChangeInfo.newHolder); 
  }
  
  private boolean endChangeAnimationIfNecessary(DefaultItemAnimator$ChangeInfo paramDefaultItemAnimator$ChangeInfo, RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    boolean bool = false;
    null = false;
    if (paramDefaultItemAnimator$ChangeInfo.newHolder == paramRecyclerView$ViewHolder) {
      paramDefaultItemAnimator$ChangeInfo.newHolder = null;
    } else {
      null = bool;
      if (paramDefaultItemAnimator$ChangeInfo.oldHolder == paramRecyclerView$ViewHolder) {
        paramDefaultItemAnimator$ChangeInfo.oldHolder = null;
        null = true;
      } else {
        return null;
      } 
    } 
    ViewCompat.setAlpha(paramRecyclerView$ViewHolder.itemView, 1.0F);
    ViewCompat.setTranslationX(paramRecyclerView$ViewHolder.itemView, 0.0F);
    ViewCompat.setTranslationY(paramRecyclerView$ViewHolder.itemView, 0.0F);
    dispatchChangeFinished(paramRecyclerView$ViewHolder, null);
    return true;
  }
  
  private void resetAnimation(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    AnimatorCompatHelper.clearInterpolator(paramRecyclerView$ViewHolder.itemView);
    endAnimation(paramRecyclerView$ViewHolder);
  }
  
  public boolean animateAdd(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    resetAnimation(paramRecyclerView$ViewHolder);
    ViewCompat.setAlpha(paramRecyclerView$ViewHolder.itemView, 0.0F);
    this.mPendingAdditions.add(paramRecyclerView$ViewHolder);
    return true;
  }
  
  void animateAddImpl(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate(paramRecyclerView$ViewHolder.itemView);
    this.mAddAnimations.add(paramRecyclerView$ViewHolder);
    viewPropertyAnimatorCompat.alpha(1.0F).setDuration(getAddDuration()).setListener(new DefaultItemAnimator$5(this, paramRecyclerView$ViewHolder, viewPropertyAnimatorCompat)).start();
  }
  
  public boolean animateChange(RecyclerView$ViewHolder paramRecyclerView$ViewHolder1, RecyclerView$ViewHolder paramRecyclerView$ViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (paramRecyclerView$ViewHolder1 == paramRecyclerView$ViewHolder2)
      return animateMove(paramRecyclerView$ViewHolder1, paramInt1, paramInt2, paramInt3, paramInt4); 
    float f1 = ViewCompat.getTranslationX(paramRecyclerView$ViewHolder1.itemView);
    float f2 = ViewCompat.getTranslationY(paramRecyclerView$ViewHolder1.itemView);
    float f3 = ViewCompat.getAlpha(paramRecyclerView$ViewHolder1.itemView);
    resetAnimation(paramRecyclerView$ViewHolder1);
    int i = (int)((paramInt3 - paramInt1) - f1);
    int j = (int)((paramInt4 - paramInt2) - f2);
    ViewCompat.setTranslationX(paramRecyclerView$ViewHolder1.itemView, f1);
    ViewCompat.setTranslationY(paramRecyclerView$ViewHolder1.itemView, f2);
    ViewCompat.setAlpha(paramRecyclerView$ViewHolder1.itemView, f3);
    if (paramRecyclerView$ViewHolder2 != null) {
      resetAnimation(paramRecyclerView$ViewHolder2);
      ViewCompat.setTranslationX(paramRecyclerView$ViewHolder2.itemView, -i);
      ViewCompat.setTranslationY(paramRecyclerView$ViewHolder2.itemView, -j);
      ViewCompat.setAlpha(paramRecyclerView$ViewHolder2.itemView, 0.0F);
    } 
    this.mPendingChanges.add(new DefaultItemAnimator$ChangeInfo(paramRecyclerView$ViewHolder1, paramRecyclerView$ViewHolder2, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  void animateChangeImpl(DefaultItemAnimator$ChangeInfo paramDefaultItemAnimator$ChangeInfo) {
    View view1;
    View view2 = null;
    RecyclerView$ViewHolder recyclerView$ViewHolder1 = paramDefaultItemAnimator$ChangeInfo.oldHolder;
    if (recyclerView$ViewHolder1 == null) {
      recyclerView$ViewHolder1 = null;
    } else {
      view1 = recyclerView$ViewHolder1.itemView;
    } 
    RecyclerView$ViewHolder recyclerView$ViewHolder2 = paramDefaultItemAnimator$ChangeInfo.newHolder;
    if (recyclerView$ViewHolder2 != null)
      view2 = recyclerView$ViewHolder2.itemView; 
    if (view1 != null) {
      ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate(view1).setDuration(getChangeDuration());
      this.mChangeAnimations.add(paramDefaultItemAnimator$ChangeInfo.oldHolder);
      viewPropertyAnimatorCompat.translationX((paramDefaultItemAnimator$ChangeInfo.toX - paramDefaultItemAnimator$ChangeInfo.fromX));
      viewPropertyAnimatorCompat.translationY((paramDefaultItemAnimator$ChangeInfo.toY - paramDefaultItemAnimator$ChangeInfo.fromY));
      viewPropertyAnimatorCompat.alpha(0.0F).setListener(new DefaultItemAnimator$7(this, paramDefaultItemAnimator$ChangeInfo, viewPropertyAnimatorCompat)).start();
    } 
    if (view2 != null) {
      ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate(view2);
      this.mChangeAnimations.add(paramDefaultItemAnimator$ChangeInfo.newHolder);
      viewPropertyAnimatorCompat.translationX(0.0F).translationY(0.0F).setDuration(getChangeDuration()).alpha(1.0F).setListener(new DefaultItemAnimator$8(this, paramDefaultItemAnimator$ChangeInfo, viewPropertyAnimatorCompat, view2)).start();
    } 
  }
  
  public boolean animateMove(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    View view = paramRecyclerView$ViewHolder.itemView;
    paramInt1 = (int)(paramInt1 + ViewCompat.getTranslationX(paramRecyclerView$ViewHolder.itemView));
    paramInt2 = (int)(paramInt2 + ViewCompat.getTranslationY(paramRecyclerView$ViewHolder.itemView));
    resetAnimation(paramRecyclerView$ViewHolder);
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    if (i == 0 && j == 0) {
      dispatchMoveFinished(paramRecyclerView$ViewHolder);
      return false;
    } 
    if (i != 0)
      ViewCompat.setTranslationX(view, -i); 
    if (j != 0)
      ViewCompat.setTranslationY(view, -j); 
    this.mPendingMoves.add(new DefaultItemAnimator$MoveInfo(paramRecyclerView$ViewHolder, paramInt1, paramInt2, paramInt3, paramInt4));
    return true;
  }
  
  void animateMoveImpl(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    View view = paramRecyclerView$ViewHolder.itemView;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if (paramInt1 != 0)
      ViewCompat.animate(view).translationX(0.0F); 
    if (paramInt2 != 0)
      ViewCompat.animate(view).translationY(0.0F); 
    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate(view);
    this.mMoveAnimations.add(paramRecyclerView$ViewHolder);
    viewPropertyAnimatorCompat.setDuration(getMoveDuration()).setListener(new DefaultItemAnimator$6(this, paramRecyclerView$ViewHolder, paramInt1, paramInt2, viewPropertyAnimatorCompat)).start();
  }
  
  public boolean animateRemove(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    resetAnimation(paramRecyclerView$ViewHolder);
    this.mPendingRemovals.add(paramRecyclerView$ViewHolder);
    return true;
  }
  
  public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull List<Object> paramList) {
    return (!paramList.isEmpty() || super.canReuseUpdatedViewHolder(paramRecyclerView$ViewHolder, paramList));
  }
  
  void cancelAll(List<RecyclerView$ViewHolder> paramList) {
    for (int i = paramList.size() - 1; i >= 0; i--)
      ViewCompat.animate(((RecyclerView$ViewHolder)paramList.get(i)).itemView).cancel(); 
  }
  
  void dispatchFinishedWhenDone() {
    if (!isRunning())
      dispatchAnimationsFinished(); 
  }
  
  public void endAnimation(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    // Byte code:
    //   0: aload_1
    //   1: getfield itemView : Landroid/view/View;
    //   4: astore #4
    //   6: aload #4
    //   8: invokestatic animate : (Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    //   11: invokevirtual cancel : ()V
    //   14: aload_0
    //   15: getfield mPendingMoves : Ljava/util/ArrayList;
    //   18: invokevirtual size : ()I
    //   21: iconst_1
    //   22: isub
    //   23: istore_2
    //   24: iload_2
    //   25: iflt -> 79
    //   28: aload_0
    //   29: getfield mPendingMoves : Ljava/util/ArrayList;
    //   32: iload_2
    //   33: invokevirtual get : (I)Ljava/lang/Object;
    //   36: checkcast android/support/v7/widget/DefaultItemAnimator$MoveInfo
    //   39: getfield holder : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   42: aload_1
    //   43: if_acmpne -> 72
    //   46: aload #4
    //   48: fconst_0
    //   49: invokestatic setTranslationY : (Landroid/view/View;F)V
    //   52: aload #4
    //   54: fconst_0
    //   55: invokestatic setTranslationX : (Landroid/view/View;F)V
    //   58: aload_0
    //   59: aload_1
    //   60: invokevirtual dispatchMoveFinished : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   63: aload_0
    //   64: getfield mPendingMoves : Ljava/util/ArrayList;
    //   67: iload_2
    //   68: invokevirtual remove : (I)Ljava/lang/Object;
    //   71: pop
    //   72: iload_2
    //   73: iconst_1
    //   74: isub
    //   75: istore_2
    //   76: goto -> 24
    //   79: aload_0
    //   80: aload_0
    //   81: getfield mPendingChanges : Ljava/util/ArrayList;
    //   84: aload_1
    //   85: invokespecial endChangeAnimation : (Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   88: aload_0
    //   89: getfield mPendingRemovals : Ljava/util/ArrayList;
    //   92: aload_1
    //   93: invokevirtual remove : (Ljava/lang/Object;)Z
    //   96: ifeq -> 110
    //   99: aload #4
    //   101: fconst_1
    //   102: invokestatic setAlpha : (Landroid/view/View;F)V
    //   105: aload_0
    //   106: aload_1
    //   107: invokevirtual dispatchRemoveFinished : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   110: aload_0
    //   111: getfield mPendingAdditions : Ljava/util/ArrayList;
    //   114: aload_1
    //   115: invokevirtual remove : (Ljava/lang/Object;)Z
    //   118: ifeq -> 132
    //   121: aload #4
    //   123: fconst_1
    //   124: invokestatic setAlpha : (Landroid/view/View;F)V
    //   127: aload_0
    //   128: aload_1
    //   129: invokevirtual dispatchAddFinished : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   132: aload_0
    //   133: getfield mChangesList : Ljava/util/ArrayList;
    //   136: invokevirtual size : ()I
    //   139: iconst_1
    //   140: isub
    //   141: istore_2
    //   142: iload_2
    //   143: iflt -> 190
    //   146: aload_0
    //   147: getfield mChangesList : Ljava/util/ArrayList;
    //   150: iload_2
    //   151: invokevirtual get : (I)Ljava/lang/Object;
    //   154: checkcast java/util/ArrayList
    //   157: astore #5
    //   159: aload_0
    //   160: aload #5
    //   162: aload_1
    //   163: invokespecial endChangeAnimation : (Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   166: aload #5
    //   168: invokevirtual isEmpty : ()Z
    //   171: ifeq -> 183
    //   174: aload_0
    //   175: getfield mChangesList : Ljava/util/ArrayList;
    //   178: iload_2
    //   179: invokevirtual remove : (I)Ljava/lang/Object;
    //   182: pop
    //   183: iload_2
    //   184: iconst_1
    //   185: isub
    //   186: istore_2
    //   187: goto -> 142
    //   190: aload_0
    //   191: getfield mMovesList : Ljava/util/ArrayList;
    //   194: invokevirtual size : ()I
    //   197: iconst_1
    //   198: isub
    //   199: istore_2
    //   200: iload_2
    //   201: iflt -> 300
    //   204: aload_0
    //   205: getfield mMovesList : Ljava/util/ArrayList;
    //   208: iload_2
    //   209: invokevirtual get : (I)Ljava/lang/Object;
    //   212: checkcast java/util/ArrayList
    //   215: astore #5
    //   217: aload #5
    //   219: invokevirtual size : ()I
    //   222: iconst_1
    //   223: isub
    //   224: istore_3
    //   225: iload_3
    //   226: iflt -> 286
    //   229: aload #5
    //   231: iload_3
    //   232: invokevirtual get : (I)Ljava/lang/Object;
    //   235: checkcast android/support/v7/widget/DefaultItemAnimator$MoveInfo
    //   238: getfield holder : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   241: aload_1
    //   242: if_acmpne -> 293
    //   245: aload #4
    //   247: fconst_0
    //   248: invokestatic setTranslationY : (Landroid/view/View;F)V
    //   251: aload #4
    //   253: fconst_0
    //   254: invokestatic setTranslationX : (Landroid/view/View;F)V
    //   257: aload_0
    //   258: aload_1
    //   259: invokevirtual dispatchMoveFinished : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   262: aload #5
    //   264: iload_3
    //   265: invokevirtual remove : (I)Ljava/lang/Object;
    //   268: pop
    //   269: aload #5
    //   271: invokevirtual isEmpty : ()Z
    //   274: ifeq -> 286
    //   277: aload_0
    //   278: getfield mMovesList : Ljava/util/ArrayList;
    //   281: iload_2
    //   282: invokevirtual remove : (I)Ljava/lang/Object;
    //   285: pop
    //   286: iload_2
    //   287: iconst_1
    //   288: isub
    //   289: istore_2
    //   290: goto -> 200
    //   293: iload_3
    //   294: iconst_1
    //   295: isub
    //   296: istore_3
    //   297: goto -> 225
    //   300: aload_0
    //   301: getfield mAdditionsList : Ljava/util/ArrayList;
    //   304: invokevirtual size : ()I
    //   307: iconst_1
    //   308: isub
    //   309: istore_2
    //   310: iload_2
    //   311: iflt -> 371
    //   314: aload_0
    //   315: getfield mAdditionsList : Ljava/util/ArrayList;
    //   318: iload_2
    //   319: invokevirtual get : (I)Ljava/lang/Object;
    //   322: checkcast java/util/ArrayList
    //   325: astore #5
    //   327: aload #5
    //   329: aload_1
    //   330: invokevirtual remove : (Ljava/lang/Object;)Z
    //   333: ifeq -> 364
    //   336: aload #4
    //   338: fconst_1
    //   339: invokestatic setAlpha : (Landroid/view/View;F)V
    //   342: aload_0
    //   343: aload_1
    //   344: invokevirtual dispatchAddFinished : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   347: aload #5
    //   349: invokevirtual isEmpty : ()Z
    //   352: ifeq -> 364
    //   355: aload_0
    //   356: getfield mAdditionsList : Ljava/util/ArrayList;
    //   359: iload_2
    //   360: invokevirtual remove : (I)Ljava/lang/Object;
    //   363: pop
    //   364: iload_2
    //   365: iconst_1
    //   366: isub
    //   367: istore_2
    //   368: goto -> 310
    //   371: aload_0
    //   372: getfield mRemoveAnimations : Ljava/util/ArrayList;
    //   375: aload_1
    //   376: invokevirtual remove : (Ljava/lang/Object;)Z
    //   379: ifeq -> 382
    //   382: aload_0
    //   383: getfield mAddAnimations : Ljava/util/ArrayList;
    //   386: aload_1
    //   387: invokevirtual remove : (Ljava/lang/Object;)Z
    //   390: ifeq -> 393
    //   393: aload_0
    //   394: getfield mChangeAnimations : Ljava/util/ArrayList;
    //   397: aload_1
    //   398: invokevirtual remove : (Ljava/lang/Object;)Z
    //   401: ifeq -> 404
    //   404: aload_0
    //   405: getfield mMoveAnimations : Ljava/util/ArrayList;
    //   408: aload_1
    //   409: invokevirtual remove : (Ljava/lang/Object;)Z
    //   412: ifeq -> 415
    //   415: aload_0
    //   416: invokevirtual dispatchFinishedWhenDone : ()V
    //   419: return
  }
  
  public void endAnimations() {
    int i;
    for (i = this.mPendingMoves.size() - 1; i >= 0; i--) {
      DefaultItemAnimator$MoveInfo defaultItemAnimator$MoveInfo = this.mPendingMoves.get(i);
      View view = defaultItemAnimator$MoveInfo.holder.itemView;
      ViewCompat.setTranslationY(view, 0.0F);
      ViewCompat.setTranslationX(view, 0.0F);
      dispatchMoveFinished(defaultItemAnimator$MoveInfo.holder);
      this.mPendingMoves.remove(i);
    } 
    for (i = this.mPendingRemovals.size() - 1; i >= 0; i--) {
      dispatchRemoveFinished(this.mPendingRemovals.get(i));
      this.mPendingRemovals.remove(i);
    } 
    for (i = this.mPendingAdditions.size() - 1; i >= 0; i--) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mPendingAdditions.get(i);
      ViewCompat.setAlpha(recyclerView$ViewHolder.itemView, 1.0F);
      dispatchAddFinished(recyclerView$ViewHolder);
      this.mPendingAdditions.remove(i);
    } 
    for (i = this.mPendingChanges.size() - 1; i >= 0; i--)
      endChangeAnimationIfNecessary(this.mPendingChanges.get(i)); 
    this.mPendingChanges.clear();
    if (!isRunning())
      return; 
    for (i = this.mMovesList.size() - 1; i >= 0; i--) {
      ArrayList<DefaultItemAnimator$MoveInfo> arrayList = this.mMovesList.get(i);
      for (int j = arrayList.size() - 1; j >= 0; j--) {
        DefaultItemAnimator$MoveInfo defaultItemAnimator$MoveInfo = arrayList.get(j);
        View view = defaultItemAnimator$MoveInfo.holder.itemView;
        ViewCompat.setTranslationY(view, 0.0F);
        ViewCompat.setTranslationX(view, 0.0F);
        dispatchMoveFinished(defaultItemAnimator$MoveInfo.holder);
        arrayList.remove(j);
        if (arrayList.isEmpty())
          this.mMovesList.remove(arrayList); 
      } 
    } 
    for (i = this.mAdditionsList.size() - 1; i >= 0; i--) {
      ArrayList<RecyclerView$ViewHolder> arrayList = this.mAdditionsList.get(i);
      for (int j = arrayList.size() - 1; j >= 0; j--) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = arrayList.get(j);
        ViewCompat.setAlpha(recyclerView$ViewHolder.itemView, 1.0F);
        dispatchAddFinished(recyclerView$ViewHolder);
        arrayList.remove(j);
        if (arrayList.isEmpty())
          this.mAdditionsList.remove(arrayList); 
      } 
    } 
    for (i = this.mChangesList.size() - 1; i >= 0; i--) {
      ArrayList<DefaultItemAnimator$ChangeInfo> arrayList = this.mChangesList.get(i);
      for (int j = arrayList.size() - 1; j >= 0; j--) {
        endChangeAnimationIfNecessary(arrayList.get(j));
        if (arrayList.isEmpty())
          this.mChangesList.remove(arrayList); 
      } 
    } 
    cancelAll(this.mRemoveAnimations);
    cancelAll(this.mMoveAnimations);
    cancelAll(this.mAddAnimations);
    cancelAll(this.mChangeAnimations);
    dispatchAnimationsFinished();
  }
  
  public boolean isRunning() {
    return (!this.mPendingAdditions.isEmpty() || !this.mPendingChanges.isEmpty() || !this.mPendingMoves.isEmpty() || !this.mPendingRemovals.isEmpty() || !this.mMoveAnimations.isEmpty() || !this.mRemoveAnimations.isEmpty() || !this.mAddAnimations.isEmpty() || !this.mChangeAnimations.isEmpty() || !this.mMovesList.isEmpty() || !this.mAdditionsList.isEmpty() || !this.mChangesList.isEmpty());
  }
  
  public void runPendingAnimations() {
    boolean bool1;
    boolean bool2;
    boolean bool3;
    boolean bool4;
    if (!this.mPendingRemovals.isEmpty()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (!this.mPendingMoves.isEmpty()) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (!this.mPendingChanges.isEmpty()) {
      bool3 = true;
    } else {
      bool3 = false;
    } 
    if (!this.mPendingAdditions.isEmpty()) {
      bool4 = true;
    } else {
      bool4 = false;
    } 
    if (bool1 || bool2 || bool4 || bool3) {
      Iterator<RecyclerView$ViewHolder> iterator = this.mPendingRemovals.iterator();
      while (iterator.hasNext())
        animateRemoveImpl(iterator.next()); 
      this.mPendingRemovals.clear();
      if (bool2) {
        ArrayList<DefaultItemAnimator$MoveInfo> arrayList = new ArrayList();
        arrayList.addAll(this.mPendingMoves);
        this.mMovesList.add(arrayList);
        this.mPendingMoves.clear();
        DefaultItemAnimator$1 defaultItemAnimator$1 = new DefaultItemAnimator$1(this, arrayList);
        if (bool1) {
          ViewCompat.postOnAnimationDelayed(((DefaultItemAnimator$MoveInfo)arrayList.get(0)).holder.itemView, defaultItemAnimator$1, getRemoveDuration());
        } else {
          defaultItemAnimator$1.run();
        } 
      } 
      if (bool3) {
        ArrayList<DefaultItemAnimator$ChangeInfo> arrayList = new ArrayList();
        arrayList.addAll(this.mPendingChanges);
        this.mChangesList.add(arrayList);
        this.mPendingChanges.clear();
        DefaultItemAnimator$2 defaultItemAnimator$2 = new DefaultItemAnimator$2(this, arrayList);
        if (bool1) {
          ViewCompat.postOnAnimationDelayed(((DefaultItemAnimator$ChangeInfo)arrayList.get(0)).oldHolder.itemView, defaultItemAnimator$2, getRemoveDuration());
        } else {
          defaultItemAnimator$2.run();
        } 
      } 
      if (bool4) {
        ArrayList<RecyclerView$ViewHolder> arrayList = new ArrayList();
        arrayList.addAll(this.mPendingAdditions);
        this.mAdditionsList.add(arrayList);
        this.mPendingAdditions.clear();
        DefaultItemAnimator$3 defaultItemAnimator$3 = new DefaultItemAnimator$3(this, arrayList);
        if (bool1 || bool2 || bool3) {
          long l1;
          long l3;
          if (bool1) {
            l1 = getRemoveDuration();
          } else {
            l1 = 0L;
          } 
          if (bool2) {
            l2 = getMoveDuration();
          } else {
            l2 = 0L;
          } 
          if (bool3) {
            l3 = getChangeDuration();
          } else {
            l3 = 0L;
          } 
          long l2 = Math.max(l2, l3);
          ViewCompat.postOnAnimationDelayed(((RecyclerView$ViewHolder)arrayList.get(0)).itemView, defaultItemAnimator$3, l1 + l2);
          return;
        } 
        defaultItemAnimator$3.run();
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */