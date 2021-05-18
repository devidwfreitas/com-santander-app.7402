package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class RecyclerView$Recycler {
  static final int DEFAULT_CACHE_SIZE = 2;
  
  final ArrayList<RecyclerView$ViewHolder> mAttachedScrap = new ArrayList<RecyclerView$ViewHolder>();
  
  final ArrayList<RecyclerView$ViewHolder> mCachedViews = new ArrayList<RecyclerView$ViewHolder>();
  
  ArrayList<RecyclerView$ViewHolder> mChangedScrap = null;
  
  RecyclerView$RecycledViewPool mRecyclerPool;
  
  private int mRequestedCacheMax = 2;
  
  private final List<RecyclerView$ViewHolder> mUnmodifiableAttachedScrap = Collections.unmodifiableList(this.mAttachedScrap);
  
  private RecyclerView$ViewCacheExtension mViewCacheExtension;
  
  int mViewCacheMax = 2;
  
  private void attachAccessibilityDelegate(View paramView) {
    if (RecyclerView.this.isAccessibilityEnabled()) {
      if (ViewCompat.getImportantForAccessibility(paramView) == 0)
        ViewCompat.setImportantForAccessibility(paramView, 1); 
      if (!ViewCompat.hasAccessibilityDelegate(paramView))
        ViewCompat.setAccessibilityDelegate(paramView, RecyclerView.this.mAccessibilityDelegate.getItemDelegate()); 
    } 
  }
  
  private void invalidateDisplayListInt(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    if (paramRecyclerView$ViewHolder.itemView instanceof ViewGroup)
      invalidateDisplayListInt((ViewGroup)paramRecyclerView$ViewHolder.itemView, false); 
  }
  
  private void invalidateDisplayListInt(ViewGroup paramViewGroup, boolean paramBoolean) {
    int i;
    for (i = paramViewGroup.getChildCount() - 1; i >= 0; i--) {
      View view = paramViewGroup.getChildAt(i);
      if (view instanceof ViewGroup)
        invalidateDisplayListInt((ViewGroup)view, true); 
    } 
    if (!paramBoolean)
      return; 
    if (paramViewGroup.getVisibility() == 4) {
      paramViewGroup.setVisibility(0);
      paramViewGroup.setVisibility(4);
      return;
    } 
    i = paramViewGroup.getVisibility();
    paramViewGroup.setVisibility(4);
    paramViewGroup.setVisibility(i);
  }
  
  private boolean tryBindViewHolderByDeadline(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, int paramInt1, int paramInt2, long paramLong) {
    paramRecyclerView$ViewHolder.mOwnerRecyclerView = RecyclerView.this;
    int i = paramRecyclerView$ViewHolder.getItemViewType();
    long l = RecyclerView.this.getNanoTime();
    if (paramLong != Long.MAX_VALUE && !this.mRecyclerPool.willBindInTime(i, l, paramLong))
      return false; 
    RecyclerView.this.mAdapter.bindViewHolder(paramRecyclerView$ViewHolder, paramInt1);
    paramLong = RecyclerView.this.getNanoTime();
    this.mRecyclerPool.factorInBindTime(paramRecyclerView$ViewHolder.getItemViewType(), paramLong - l);
    attachAccessibilityDelegate(paramRecyclerView$ViewHolder.itemView);
    if (RecyclerView.this.mState.isPreLayout())
      paramRecyclerView$ViewHolder.mPreLayoutPosition = paramInt2; 
    return true;
  }
  
  void addViewHolderToRecycledViewPool(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, boolean paramBoolean) {
    RecyclerView.clearNestedRecyclerViewIfNotNested(paramRecyclerView$ViewHolder);
    ViewCompat.setAccessibilityDelegate(paramRecyclerView$ViewHolder.itemView, null);
    if (paramBoolean)
      dispatchViewRecycled(paramRecyclerView$ViewHolder); 
    paramRecyclerView$ViewHolder.mOwnerRecyclerView = null;
    getRecycledViewPool().putRecycledView(paramRecyclerView$ViewHolder);
  }
  
  public void bindViewToPosition(View paramView, int paramInt) {
    RecyclerView$LayoutParams recyclerView$LayoutParams;
    boolean bool;
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder == null)
      throw new IllegalArgumentException("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"); 
    int i = RecyclerView.this.mAdapterHelper.findPositionOffset(paramInt);
    if (i < 0 || i >= RecyclerView.this.mAdapter.getItemCount())
      throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + i + ")." + "state:" + RecyclerView.this.mState.getItemCount()); 
    tryBindViewHolderByDeadline(recyclerView$ViewHolder, i, paramInt, Long.MAX_VALUE);
    ViewGroup.LayoutParams layoutParams = recyclerView$ViewHolder.itemView.getLayoutParams();
    if (layoutParams == null) {
      recyclerView$LayoutParams = (RecyclerView$LayoutParams)RecyclerView.this.generateDefaultLayoutParams();
      recyclerView$ViewHolder.itemView.setLayoutParams((ViewGroup.LayoutParams)recyclerView$LayoutParams);
    } else if (!RecyclerView.this.checkLayoutParams((ViewGroup.LayoutParams)recyclerView$LayoutParams)) {
      recyclerView$LayoutParams = (RecyclerView$LayoutParams)RecyclerView.this.generateLayoutParams((ViewGroup.LayoutParams)recyclerView$LayoutParams);
      recyclerView$ViewHolder.itemView.setLayoutParams((ViewGroup.LayoutParams)recyclerView$LayoutParams);
    } else {
      recyclerView$LayoutParams = recyclerView$LayoutParams;
    } 
    recyclerView$LayoutParams.mInsetsDirty = true;
    recyclerView$LayoutParams.mViewHolder = recyclerView$ViewHolder;
    if (recyclerView$ViewHolder.itemView.getParent() == null) {
      bool = true;
    } else {
      bool = false;
    } 
    recyclerView$LayoutParams.mPendingInvalidate = bool;
  }
  
  public void clear() {
    this.mAttachedScrap.clear();
    recycleAndClearCachedViews();
  }
  
  void clearOldPositions() {
    boolean bool = false;
    int j = this.mCachedViews.size();
    int i;
    for (i = 0; i < j; i++)
      ((RecyclerView$ViewHolder)this.mCachedViews.get(i)).clearOldPosition(); 
    j = this.mAttachedScrap.size();
    for (i = 0; i < j; i++)
      ((RecyclerView$ViewHolder)this.mAttachedScrap.get(i)).clearOldPosition(); 
    if (this.mChangedScrap != null) {
      j = this.mChangedScrap.size();
      for (i = bool; i < j; i++)
        ((RecyclerView$ViewHolder)this.mChangedScrap.get(i)).clearOldPosition(); 
    } 
  }
  
  void clearScrap() {
    this.mAttachedScrap.clear();
    if (this.mChangedScrap != null)
      this.mChangedScrap.clear(); 
  }
  
  public int convertPreLayoutPositionToPostLayout(int paramInt) {
    if (paramInt < 0 || paramInt >= RecyclerView.this.mState.getItemCount())
      throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State " + "item count is " + RecyclerView.this.mState.getItemCount()); 
    return !RecyclerView.this.mState.isPreLayout() ? paramInt : RecyclerView.this.mAdapterHelper.findPositionOffset(paramInt);
  }
  
  void dispatchViewRecycled(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    if (RecyclerView.this.mRecyclerListener != null)
      RecyclerView.this.mRecyclerListener.onViewRecycled(paramRecyclerView$ViewHolder); 
    if (RecyclerView.this.mAdapter != null)
      RecyclerView.this.mAdapter.onViewRecycled(paramRecyclerView$ViewHolder); 
    if (RecyclerView.this.mState != null)
      RecyclerView.this.mViewInfoStore.removeViewHolder(paramRecyclerView$ViewHolder); 
  }
  
  RecyclerView$ViewHolder getChangedScrapViewForPosition(int paramInt) {
    boolean bool = false;
    if (this.mChangedScrap != null) {
      int i = this.mChangedScrap.size();
      if (i != 0) {
        for (int j = 0; j < i; j++) {
          RecyclerView$ViewHolder recyclerView$ViewHolder = this.mChangedScrap.get(j);
          if (!recyclerView$ViewHolder.wasReturnedFromScrap() && recyclerView$ViewHolder.getLayoutPosition() == paramInt) {
            recyclerView$ViewHolder.addFlags(32);
            return recyclerView$ViewHolder;
          } 
        } 
        if (RecyclerView.this.mAdapter.hasStableIds()) {
          paramInt = RecyclerView.this.mAdapterHelper.findPositionOffset(paramInt);
          if (paramInt > 0 && paramInt < RecyclerView.this.mAdapter.getItemCount()) {
            long l = RecyclerView.this.mAdapter.getItemId(paramInt);
            for (paramInt = bool; paramInt < i; paramInt++) {
              RecyclerView$ViewHolder recyclerView$ViewHolder = this.mChangedScrap.get(paramInt);
              if (!recyclerView$ViewHolder.wasReturnedFromScrap() && recyclerView$ViewHolder.getItemId() == l) {
                recyclerView$ViewHolder.addFlags(32);
                return recyclerView$ViewHolder;
              } 
            } 
          } 
        } 
        return null;
      } 
    } 
    return null;
  }
  
  RecyclerView$RecycledViewPool getRecycledViewPool() {
    if (this.mRecyclerPool == null)
      this.mRecyclerPool = new RecyclerView$RecycledViewPool(); 
    return this.mRecyclerPool;
  }
  
  int getScrapCount() {
    return this.mAttachedScrap.size();
  }
  
  public List<RecyclerView$ViewHolder> getScrapList() {
    return this.mUnmodifiableAttachedScrap;
  }
  
  RecyclerView$ViewHolder getScrapOrCachedViewForId(long paramLong, int paramInt, boolean paramBoolean) {
    int i;
    for (i = this.mAttachedScrap.size() - 1; i >= 0; i--) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mAttachedScrap.get(i);
      if (recyclerView$ViewHolder.getItemId() == paramLong && !recyclerView$ViewHolder.wasReturnedFromScrap()) {
        if (paramInt == recyclerView$ViewHolder.getItemViewType()) {
          recyclerView$ViewHolder.addFlags(32);
          RecyclerView$ViewHolder recyclerView$ViewHolder1 = recyclerView$ViewHolder;
          if (recyclerView$ViewHolder.isRemoved()) {
            recyclerView$ViewHolder1 = recyclerView$ViewHolder;
            if (!RecyclerView.this.mState.isPreLayout()) {
              recyclerView$ViewHolder.setFlags(2, 14);
              recyclerView$ViewHolder1 = recyclerView$ViewHolder;
            } 
          } 
          return recyclerView$ViewHolder1;
        } 
        if (!paramBoolean) {
          this.mAttachedScrap.remove(i);
          RecyclerView.this.removeDetachedView(recyclerView$ViewHolder.itemView, false);
          quickRecycleScrapView(recyclerView$ViewHolder.itemView);
        } 
      } 
    } 
    for (i = this.mCachedViews.size() - 1; i >= 0; i--) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i);
      if (recyclerView$ViewHolder.getItemId() == paramLong) {
        if (paramInt == recyclerView$ViewHolder.getItemViewType()) {
          RecyclerView$ViewHolder recyclerView$ViewHolder1 = recyclerView$ViewHolder;
          if (!paramBoolean) {
            this.mCachedViews.remove(i);
            return recyclerView$ViewHolder;
          } 
          return recyclerView$ViewHolder1;
        } 
        if (!paramBoolean) {
          recycleCachedViewAt(i);
          return null;
        } 
      } 
    } 
    return null;
  }
  
  RecyclerView$ViewHolder getScrapOrHiddenOrCachedHolderForPosition(int paramInt, boolean paramBoolean) {
    boolean bool = false;
    int j = this.mAttachedScrap.size();
    int i;
    for (i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mAttachedScrap.get(i);
      if (!recyclerView$ViewHolder.wasReturnedFromScrap() && recyclerView$ViewHolder.getLayoutPosition() == paramInt && !recyclerView$ViewHolder.isInvalid() && (RecyclerView.this.mState.mInPreLayout || !recyclerView$ViewHolder.isRemoved())) {
        recyclerView$ViewHolder.addFlags(32);
        return recyclerView$ViewHolder;
      } 
    } 
    if (!paramBoolean) {
      View view = RecyclerView.this.mChildHelper.findHiddenNonRemovedView(paramInt);
      if (view != null) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(view);
        RecyclerView.this.mChildHelper.unhide(view);
        paramInt = RecyclerView.this.mChildHelper.indexOfChild(view);
        if (paramInt == -1)
          throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + recyclerView$ViewHolder); 
        RecyclerView.this.mChildHelper.detachViewFromParent(paramInt);
        scrapView(view);
        recyclerView$ViewHolder.addFlags(8224);
        return recyclerView$ViewHolder;
      } 
    } 
    j = this.mCachedViews.size();
    for (i = bool; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i);
      if (!recyclerView$ViewHolder.isInvalid() && recyclerView$ViewHolder.getLayoutPosition() == paramInt) {
        RecyclerView$ViewHolder recyclerView$ViewHolder1 = recyclerView$ViewHolder;
        if (!paramBoolean) {
          this.mCachedViews.remove(i);
          return recyclerView$ViewHolder;
        } 
        return recyclerView$ViewHolder1;
      } 
    } 
    return null;
  }
  
  View getScrapViewAt(int paramInt) {
    return ((RecyclerView$ViewHolder)this.mAttachedScrap.get(paramInt)).itemView;
  }
  
  public View getViewForPosition(int paramInt) {
    return getViewForPosition(paramInt, false);
  }
  
  View getViewForPosition(int paramInt, boolean paramBoolean) {
    return (tryGetViewHolderForPositionByDeadline(paramInt, paramBoolean, Long.MAX_VALUE)).itemView;
  }
  
  void markItemDecorInsetsDirty() {
    int j = this.mCachedViews.size();
    for (int i = 0; i < j; i++) {
      RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)((RecyclerView$ViewHolder)this.mCachedViews.get(i)).itemView.getLayoutParams();
      if (recyclerView$LayoutParams != null)
        recyclerView$LayoutParams.mInsetsDirty = true; 
    } 
  }
  
  void markKnownViewsInvalid() {
    if (RecyclerView.this.mAdapter != null && RecyclerView.this.mAdapter.hasStableIds()) {
      int j = this.mCachedViews.size();
      for (int i = 0; i < j; i++) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i);
        if (recyclerView$ViewHolder != null) {
          recyclerView$ViewHolder.addFlags(6);
          recyclerView$ViewHolder.addChangePayload(null);
        } 
      } 
    } else {
      recycleAndClearCachedViews();
    } 
  }
  
  void offsetPositionRecordsForInsert(int paramInt1, int paramInt2) {
    int j = this.mCachedViews.size();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i);
      if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.mPosition >= paramInt1)
        recyclerView$ViewHolder.offsetPosition(paramInt2, true); 
    } 
  }
  
  void offsetPositionRecordsForMove(int paramInt1, int paramInt2) {
    boolean bool;
    int i;
    int j;
    if (paramInt1 < paramInt2) {
      bool = true;
      i = paramInt2;
      j = paramInt1;
    } else {
      bool = true;
      i = paramInt1;
      j = paramInt2;
    } 
    int m = this.mCachedViews.size();
    for (int k = 0; k < m; k++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(k);
      if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.mPosition >= j && recyclerView$ViewHolder.mPosition <= i)
        if (recyclerView$ViewHolder.mPosition == paramInt1) {
          recyclerView$ViewHolder.offsetPosition(paramInt2 - paramInt1, false);
        } else {
          recyclerView$ViewHolder.offsetPosition(bool, false);
        }  
    } 
  }
  
  void offsetPositionRecordsForRemove(int paramInt1, int paramInt2, boolean paramBoolean) {
    for (int i = this.mCachedViews.size() - 1; i >= 0; i--) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i);
      if (recyclerView$ViewHolder != null)
        if (recyclerView$ViewHolder.mPosition >= paramInt1 + paramInt2) {
          recyclerView$ViewHolder.offsetPosition(-paramInt2, paramBoolean);
        } else if (recyclerView$ViewHolder.mPosition >= paramInt1) {
          recyclerView$ViewHolder.addFlags(8);
          recycleCachedViewAt(i);
        }  
    } 
  }
  
  void onAdapterChanged(RecyclerView$Adapter paramRecyclerView$Adapter1, RecyclerView$Adapter paramRecyclerView$Adapter2, boolean paramBoolean) {
    clear();
    getRecycledViewPool().onAdapterChanged(paramRecyclerView$Adapter1, paramRecyclerView$Adapter2, paramBoolean);
  }
  
  void quickRecycleScrapView(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    RecyclerView$ViewHolder.access$802(recyclerView$ViewHolder, null);
    RecyclerView$ViewHolder.access$902(recyclerView$ViewHolder, false);
    recyclerView$ViewHolder.clearReturnedFromScrapFlag();
    recycleViewHolderInternal(recyclerView$ViewHolder);
  }
  
  void recycleAndClearCachedViews() {
    for (int i = this.mCachedViews.size() - 1; i >= 0; i--)
      recycleCachedViewAt(i); 
    this.mCachedViews.clear();
    if (RecyclerView.access$600())
      RecyclerView.this.mPrefetchRegistry.clearPrefetchPositions(); 
  }
  
  void recycleCachedViewAt(int paramInt) {
    addViewHolderToRecycledViewPool(this.mCachedViews.get(paramInt), true);
    this.mCachedViews.remove(paramInt);
  }
  
  public void recycleView(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder.isTmpDetached())
      RecyclerView.this.removeDetachedView(paramView, false); 
    if (recyclerView$ViewHolder.isScrap()) {
      recyclerView$ViewHolder.unScrap();
    } else if (recyclerView$ViewHolder.wasReturnedFromScrap()) {
      recyclerView$ViewHolder.clearReturnedFromScrapFlag();
    } 
    recycleViewHolderInternal(recyclerView$ViewHolder);
  }
  
  void recycleViewHolderInternal(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: aload_1
    //   4: invokevirtual isScrap : ()Z
    //   7: ifne -> 20
    //   10: aload_1
    //   11: getfield itemView : Landroid/view/View;
    //   14: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   17: ifnull -> 85
    //   20: new java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial <init> : ()V
    //   27: ldc_w 'Scrapped or attached views may not be recycled. isScrap:'
    //   30: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: aload_1
    //   34: invokevirtual isScrap : ()Z
    //   37: invokevirtual append : (Z)Ljava/lang/StringBuilder;
    //   40: ldc_w ' isAttached:'
    //   43: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: astore #6
    //   48: aload_1
    //   49: getfield itemView : Landroid/view/View;
    //   52: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   55: ifnull -> 79
    //   58: iconst_1
    //   59: istore #5
    //   61: new java/lang/IllegalArgumentException
    //   64: dup
    //   65: aload #6
    //   67: iload #5
    //   69: invokevirtual append : (Z)Ljava/lang/StringBuilder;
    //   72: invokevirtual toString : ()Ljava/lang/String;
    //   75: invokespecial <init> : (Ljava/lang/String;)V
    //   78: athrow
    //   79: iconst_0
    //   80: istore #5
    //   82: goto -> 61
    //   85: aload_1
    //   86: invokevirtual isTmpDetached : ()Z
    //   89: ifeq -> 120
    //   92: new java/lang/IllegalArgumentException
    //   95: dup
    //   96: new java/lang/StringBuilder
    //   99: dup
    //   100: invokespecial <init> : ()V
    //   103: ldc_w 'Tmp detached view should be removed from RecyclerView before it can be recycled: '
    //   106: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: aload_1
    //   110: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   113: invokevirtual toString : ()Ljava/lang/String;
    //   116: invokespecial <init> : (Ljava/lang/String;)V
    //   119: athrow
    //   120: aload_1
    //   121: invokevirtual shouldIgnore : ()Z
    //   124: ifeq -> 138
    //   127: new java/lang/IllegalArgumentException
    //   130: dup
    //   131: ldc_w 'Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.'
    //   134: invokespecial <init> : (Ljava/lang/String;)V
    //   137: athrow
    //   138: aload_1
    //   139: invokestatic access$700 : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    //   142: istore #5
    //   144: aload_0
    //   145: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   148: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   151: ifnull -> 369
    //   154: iload #5
    //   156: ifeq -> 369
    //   159: aload_0
    //   160: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   163: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   166: aload_1
    //   167: invokevirtual onFailedToRecycleView : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    //   170: ifeq -> 369
    //   173: iconst_1
    //   174: istore_2
    //   175: iload_2
    //   176: ifne -> 186
    //   179: aload_1
    //   180: invokevirtual isRecyclable : ()Z
    //   183: ifeq -> 386
    //   186: aload_0
    //   187: getfield mViewCacheMax : I
    //   190: ifle -> 381
    //   193: aload_1
    //   194: sipush #526
    //   197: invokevirtual hasAnyOfTheFlags : (I)Z
    //   200: ifne -> 381
    //   203: aload_0
    //   204: getfield mCachedViews : Ljava/util/ArrayList;
    //   207: invokevirtual size : ()I
    //   210: istore_3
    //   211: iload_3
    //   212: istore_2
    //   213: iload_3
    //   214: aload_0
    //   215: getfield mViewCacheMax : I
    //   218: if_icmplt -> 236
    //   221: iload_3
    //   222: istore_2
    //   223: iload_3
    //   224: ifle -> 236
    //   227: aload_0
    //   228: iconst_0
    //   229: invokevirtual recycleCachedViewAt : (I)V
    //   232: iload_3
    //   233: iconst_1
    //   234: isub
    //   235: istore_2
    //   236: iload_2
    //   237: istore_3
    //   238: invokestatic access$600 : ()Z
    //   241: ifeq -> 310
    //   244: iload_2
    //   245: istore_3
    //   246: iload_2
    //   247: ifle -> 310
    //   250: iload_2
    //   251: istore_3
    //   252: aload_0
    //   253: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   256: getfield mPrefetchRegistry : Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;
    //   259: aload_1
    //   260: getfield mPosition : I
    //   263: invokevirtual lastPrefetchIncludedPosition : (I)Z
    //   266: ifne -> 310
    //   269: iload_2
    //   270: iconst_1
    //   271: isub
    //   272: istore_2
    //   273: iload_2
    //   274: iflt -> 306
    //   277: aload_0
    //   278: getfield mCachedViews : Ljava/util/ArrayList;
    //   281: iload_2
    //   282: invokevirtual get : (I)Ljava/lang/Object;
    //   285: checkcast android/support/v7/widget/RecyclerView$ViewHolder
    //   288: getfield mPosition : I
    //   291: istore_3
    //   292: aload_0
    //   293: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   296: getfield mPrefetchRegistry : Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;
    //   299: iload_3
    //   300: invokevirtual lastPrefetchIncludedPosition : (I)Z
    //   303: ifne -> 374
    //   306: iload_2
    //   307: iconst_1
    //   308: iadd
    //   309: istore_3
    //   310: aload_0
    //   311: getfield mCachedViews : Ljava/util/ArrayList;
    //   314: iload_3
    //   315: aload_1
    //   316: invokevirtual add : (ILjava/lang/Object;)V
    //   319: iconst_1
    //   320: istore_2
    //   321: iload_2
    //   322: istore_3
    //   323: iload_2
    //   324: ifne -> 338
    //   327: aload_0
    //   328: aload_1
    //   329: iconst_1
    //   330: invokevirtual addViewHolderToRecycledViewPool : (Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    //   333: iconst_1
    //   334: istore #4
    //   336: iload_2
    //   337: istore_3
    //   338: aload_0
    //   339: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   342: getfield mViewInfoStore : Landroid/support/v7/widget/ViewInfoStore;
    //   345: aload_1
    //   346: invokevirtual removeViewHolder : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   349: iload_3
    //   350: ifne -> 368
    //   353: iload #4
    //   355: ifne -> 368
    //   358: iload #5
    //   360: ifeq -> 368
    //   363: aload_1
    //   364: aconst_null
    //   365: putfield mOwnerRecyclerView : Landroid/support/v7/widget/RecyclerView;
    //   368: return
    //   369: iconst_0
    //   370: istore_2
    //   371: goto -> 175
    //   374: iload_2
    //   375: iconst_1
    //   376: isub
    //   377: istore_2
    //   378: goto -> 273
    //   381: iconst_0
    //   382: istore_2
    //   383: goto -> 321
    //   386: iconst_0
    //   387: istore_3
    //   388: goto -> 338
  }
  
  void recycleViewInternal(View paramView) {
    recycleViewHolderInternal(RecyclerView.getChildViewHolderInt(paramView));
  }
  
  void scrapView(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder.hasAnyOfTheFlags(12) || !recyclerView$ViewHolder.isUpdated() || RecyclerView.this.canReuseUpdatedViewHolder(recyclerView$ViewHolder)) {
      if (recyclerView$ViewHolder.isInvalid() && !recyclerView$ViewHolder.isRemoved() && !RecyclerView.this.mAdapter.hasStableIds())
        throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."); 
      recyclerView$ViewHolder.setScrapContainer(this, false);
      this.mAttachedScrap.add(recyclerView$ViewHolder);
      return;
    } 
    if (this.mChangedScrap == null)
      this.mChangedScrap = new ArrayList<RecyclerView$ViewHolder>(); 
    recyclerView$ViewHolder.setScrapContainer(this, true);
    this.mChangedScrap.add(recyclerView$ViewHolder);
  }
  
  void setAdapterPositionsAsUnknown() {
    int j = this.mCachedViews.size();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i);
      if (recyclerView$ViewHolder != null)
        recyclerView$ViewHolder.addFlags(512); 
    } 
  }
  
  void setRecycledViewPool(RecyclerView$RecycledViewPool paramRecyclerView$RecycledViewPool) {
    if (this.mRecyclerPool != null)
      this.mRecyclerPool.detach(); 
    this.mRecyclerPool = paramRecyclerView$RecycledViewPool;
    if (paramRecyclerView$RecycledViewPool != null)
      this.mRecyclerPool.attach(RecyclerView.this.getAdapter()); 
  }
  
  void setViewCacheExtension(RecyclerView$ViewCacheExtension paramRecyclerView$ViewCacheExtension) {
    this.mViewCacheExtension = paramRecyclerView$ViewCacheExtension;
  }
  
  public void setViewCacheSize(int paramInt) {
    this.mRequestedCacheMax = paramInt;
    updateViewCacheSize();
  }
  
  @Nullable
  RecyclerView$ViewHolder tryGetViewHolderForPositionByDeadline(int paramInt, boolean paramBoolean, long paramLong) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #8
    //   3: iload_1
    //   4: iflt -> 21
    //   7: iload_1
    //   8: aload_0
    //   9: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   12: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   15: invokevirtual getItemCount : ()I
    //   18: if_icmplt -> 78
    //   21: new java/lang/IndexOutOfBoundsException
    //   24: dup
    //   25: new java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial <init> : ()V
    //   32: ldc_w 'Invalid item position '
    //   35: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: iload_1
    //   39: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   42: ldc_w '('
    //   45: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: iload_1
    //   49: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   52: ldc_w '). Item count:'
    //   55: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: aload_0
    //   59: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   62: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   65: invokevirtual getItemCount : ()I
    //   68: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   71: invokevirtual toString : ()Ljava/lang/String;
    //   74: invokespecial <init> : (Ljava/lang/String;)V
    //   77: athrow
    //   78: aload_0
    //   79: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   82: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   85: invokevirtual isPreLayout : ()Z
    //   88: ifeq -> 983
    //   91: aload_0
    //   92: iload_1
    //   93: invokevirtual getChangedScrapViewForPosition : (I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   96: astore #14
    //   98: aload #14
    //   100: ifnull -> 300
    //   103: iconst_1
    //   104: istore #5
    //   106: iload #5
    //   108: istore #6
    //   110: aload #14
    //   112: astore #13
    //   114: iload #6
    //   116: istore #5
    //   118: aload #14
    //   120: ifnonnull -> 202
    //   123: aload_0
    //   124: iload_1
    //   125: iload_2
    //   126: invokevirtual getScrapOrHiddenOrCachedHolderForPosition : (IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   129: astore #14
    //   131: aload #14
    //   133: astore #13
    //   135: iload #6
    //   137: istore #5
    //   139: aload #14
    //   141: ifnull -> 202
    //   144: aload_0
    //   145: aload #14
    //   147: invokevirtual validateViewHolderForOffsetPosition : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    //   150: ifne -> 322
    //   153: iload_2
    //   154: ifne -> 195
    //   157: aload #14
    //   159: iconst_4
    //   160: invokevirtual addFlags : (I)V
    //   163: aload #14
    //   165: invokevirtual isScrap : ()Z
    //   168: ifeq -> 306
    //   171: aload_0
    //   172: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   175: aload #14
    //   177: getfield itemView : Landroid/view/View;
    //   180: iconst_0
    //   181: invokevirtual removeDetachedView : (Landroid/view/View;Z)V
    //   184: aload #14
    //   186: invokevirtual unScrap : ()V
    //   189: aload_0
    //   190: aload #14
    //   192: invokevirtual recycleViewHolderInternal : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   195: aconst_null
    //   196: astore #13
    //   198: iload #6
    //   200: istore #5
    //   202: aload #13
    //   204: ifnonnull -> 976
    //   207: aload_0
    //   208: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   211: getfield mAdapterHelper : Landroid/support/v7/widget/AdapterHelper;
    //   214: iload_1
    //   215: invokevirtual findPositionOffset : (I)I
    //   218: istore #7
    //   220: iload #7
    //   222: iflt -> 240
    //   225: iload #7
    //   227: aload_0
    //   228: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   231: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   234: invokevirtual getItemCount : ()I
    //   237: if_icmplt -> 332
    //   240: new java/lang/IndexOutOfBoundsException
    //   243: dup
    //   244: new java/lang/StringBuilder
    //   247: dup
    //   248: invokespecial <init> : ()V
    //   251: ldc 'Inconsistency detected. Invalid item position '
    //   253: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: iload_1
    //   257: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   260: ldc '(offset:'
    //   262: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: iload #7
    //   267: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   270: ldc ').'
    //   272: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: ldc 'state:'
    //   277: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: aload_0
    //   281: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   284: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   287: invokevirtual getItemCount : ()I
    //   290: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   293: invokevirtual toString : ()Ljava/lang/String;
    //   296: invokespecial <init> : (Ljava/lang/String;)V
    //   299: athrow
    //   300: iconst_0
    //   301: istore #5
    //   303: goto -> 106
    //   306: aload #14
    //   308: invokevirtual wasReturnedFromScrap : ()Z
    //   311: ifeq -> 189
    //   314: aload #14
    //   316: invokevirtual clearReturnedFromScrapFlag : ()V
    //   319: goto -> 189
    //   322: iconst_1
    //   323: istore #5
    //   325: aload #14
    //   327: astore #13
    //   329: goto -> 202
    //   332: aload_0
    //   333: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   336: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   339: iload #7
    //   341: invokevirtual getItemViewType : (I)I
    //   344: istore #6
    //   346: aload_0
    //   347: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   350: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   353: invokevirtual hasStableIds : ()Z
    //   356: ifeq -> 969
    //   359: aload_0
    //   360: aload_0
    //   361: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   364: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   367: iload #7
    //   369: invokevirtual getItemId : (I)J
    //   372: iload #6
    //   374: iload_2
    //   375: invokevirtual getScrapOrCachedViewForId : (JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   378: astore #14
    //   380: aload #14
    //   382: astore #13
    //   384: aload #14
    //   386: ifnull -> 969
    //   389: aload #14
    //   391: iload #7
    //   393: putfield mPosition : I
    //   396: iconst_1
    //   397: istore #5
    //   399: aload #14
    //   401: astore #13
    //   403: aload #14
    //   405: ifnonnull -> 491
    //   408: aload #14
    //   410: astore #13
    //   412: aload_0
    //   413: getfield mViewCacheExtension : Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;
    //   416: ifnull -> 491
    //   419: aload_0
    //   420: getfield mViewCacheExtension : Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;
    //   423: aload_0
    //   424: iload_1
    //   425: iload #6
    //   427: invokevirtual getViewForPositionAndType : (Landroid/support/v7/widget/RecyclerView$Recycler;II)Landroid/view/View;
    //   430: astore #15
    //   432: aload #14
    //   434: astore #13
    //   436: aload #15
    //   438: ifnull -> 491
    //   441: aload_0
    //   442: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   445: aload #15
    //   447: invokevirtual getChildViewHolder : (Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   450: astore #14
    //   452: aload #14
    //   454: ifnonnull -> 468
    //   457: new java/lang/IllegalArgumentException
    //   460: dup
    //   461: ldc_w 'getViewForPositionAndType returned a view which does not have a ViewHolder'
    //   464: invokespecial <init> : (Ljava/lang/String;)V
    //   467: athrow
    //   468: aload #14
    //   470: astore #13
    //   472: aload #14
    //   474: invokevirtual shouldIgnore : ()Z
    //   477: ifeq -> 491
    //   480: new java/lang/IllegalArgumentException
    //   483: dup
    //   484: ldc_w 'getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.'
    //   487: invokespecial <init> : (Ljava/lang/String;)V
    //   490: athrow
    //   491: aload #13
    //   493: astore #14
    //   495: aload #13
    //   497: ifnonnull -> 545
    //   500: aload_0
    //   501: invokevirtual getRecycledViewPool : ()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    //   504: iload #6
    //   506: invokevirtual getRecycledView : (I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   509: astore #13
    //   511: aload #13
    //   513: astore #14
    //   515: aload #13
    //   517: ifnull -> 545
    //   520: aload #13
    //   522: invokevirtual resetInternal : ()V
    //   525: aload #13
    //   527: astore #14
    //   529: getstatic android/support/v7/widget/RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST : Z
    //   532: ifeq -> 545
    //   535: aload_0
    //   536: aload #13
    //   538: invokespecial invalidateDisplayListInt : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    //   541: aload #13
    //   543: astore #14
    //   545: aload #14
    //   547: astore #13
    //   549: aload #14
    //   551: ifnonnull -> 664
    //   554: aload_0
    //   555: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   558: invokevirtual getNanoTime : ()J
    //   561: lstore #9
    //   563: lload_3
    //   564: ldc2_w 9223372036854775807
    //   567: lcmp
    //   568: ifeq -> 588
    //   571: aload_0
    //   572: getfield mRecyclerPool : Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    //   575: iload #6
    //   577: lload #9
    //   579: lload_3
    //   580: invokevirtual willCreateInTime : (IJJ)Z
    //   583: ifne -> 588
    //   586: aconst_null
    //   587: areturn
    //   588: aload_0
    //   589: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   592: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   595: aload_0
    //   596: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   599: iload #6
    //   601: invokevirtual createViewHolder : (Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   604: astore #13
    //   606: invokestatic access$600 : ()Z
    //   609: ifeq -> 641
    //   612: aload #13
    //   614: getfield itemView : Landroid/view/View;
    //   617: invokestatic findNestedRecyclerView : (Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    //   620: astore #14
    //   622: aload #14
    //   624: ifnull -> 641
    //   627: aload #13
    //   629: new java/lang/ref/WeakReference
    //   632: dup
    //   633: aload #14
    //   635: invokespecial <init> : (Ljava/lang/Object;)V
    //   638: putfield mNestedRecyclerView : Ljava/lang/ref/WeakReference;
    //   641: aload_0
    //   642: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   645: invokevirtual getNanoTime : ()J
    //   648: lstore #11
    //   650: aload_0
    //   651: getfield mRecyclerPool : Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    //   654: iload #6
    //   656: lload #11
    //   658: lload #9
    //   660: lsub
    //   661: invokevirtual factorInCreateTime : (IJ)V
    //   664: aload #13
    //   666: astore #14
    //   668: iload #5
    //   670: ifeq -> 769
    //   673: aload_0
    //   674: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   677: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   680: invokevirtual isPreLayout : ()Z
    //   683: ifne -> 769
    //   686: aload #14
    //   688: sipush #8192
    //   691: invokevirtual hasAnyOfTheFlags : (I)Z
    //   694: ifeq -> 769
    //   697: aload #14
    //   699: iconst_0
    //   700: sipush #8192
    //   703: invokevirtual setFlags : (II)V
    //   706: aload_0
    //   707: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   710: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   713: getfield mRunSimpleAnimations : Z
    //   716: ifeq -> 769
    //   719: aload #14
    //   721: invokestatic buildAdapterChangeFlagsForAnimations : (Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    //   724: istore #6
    //   726: aload_0
    //   727: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   730: getfield mItemAnimator : Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    //   733: aload_0
    //   734: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   737: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   740: aload #14
    //   742: iload #6
    //   744: sipush #4096
    //   747: ior
    //   748: aload #14
    //   750: invokevirtual getUnmodifiedPayloads : ()Ljava/util/List;
    //   753: invokevirtual recordPreLayoutInformation : (Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    //   756: astore #13
    //   758: aload_0
    //   759: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   762: aload #14
    //   764: aload #13
    //   766: invokevirtual recordAnimationInfoIfBouncedHiddenView : (Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    //   769: aload_0
    //   770: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   773: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   776: invokevirtual isPreLayout : ()Z
    //   779: ifeq -> 863
    //   782: aload #14
    //   784: invokevirtual isBound : ()Z
    //   787: ifeq -> 863
    //   790: aload #14
    //   792: iload_1
    //   793: putfield mPreLayoutPosition : I
    //   796: iconst_0
    //   797: istore_2
    //   798: aload #14
    //   800: getfield itemView : Landroid/view/View;
    //   803: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   806: astore #13
    //   808: aload #13
    //   810: ifnonnull -> 910
    //   813: aload_0
    //   814: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   817: invokevirtual generateDefaultLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   820: checkcast android/support/v7/widget/RecyclerView$LayoutParams
    //   823: astore #13
    //   825: aload #14
    //   827: getfield itemView : Landroid/view/View;
    //   830: aload #13
    //   832: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   835: aload #13
    //   837: aload #14
    //   839: putfield mViewHolder : Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   842: iload #5
    //   844: ifeq -> 959
    //   847: iload_2
    //   848: ifeq -> 959
    //   851: iload #8
    //   853: istore_2
    //   854: aload #13
    //   856: iload_2
    //   857: putfield mPendingInvalidate : Z
    //   860: aload #14
    //   862: areturn
    //   863: aload #14
    //   865: invokevirtual isBound : ()Z
    //   868: ifeq -> 887
    //   871: aload #14
    //   873: invokevirtual needsUpdate : ()Z
    //   876: ifne -> 887
    //   879: aload #14
    //   881: invokevirtual isInvalid : ()Z
    //   884: ifeq -> 964
    //   887: aload_0
    //   888: aload #14
    //   890: aload_0
    //   891: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   894: getfield mAdapterHelper : Landroid/support/v7/widget/AdapterHelper;
    //   897: iload_1
    //   898: invokevirtual findPositionOffset : (I)I
    //   901: iload_1
    //   902: lload_3
    //   903: invokespecial tryBindViewHolderByDeadline : (Landroid/support/v7/widget/RecyclerView$ViewHolder;IIJ)Z
    //   906: istore_2
    //   907: goto -> 798
    //   910: aload_0
    //   911: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   914: aload #13
    //   916: invokevirtual checkLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)Z
    //   919: ifne -> 949
    //   922: aload_0
    //   923: getfield this$0 : Landroid/support/v7/widget/RecyclerView;
    //   926: aload #13
    //   928: invokevirtual generateLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    //   931: checkcast android/support/v7/widget/RecyclerView$LayoutParams
    //   934: astore #13
    //   936: aload #14
    //   938: getfield itemView : Landroid/view/View;
    //   941: aload #13
    //   943: invokevirtual setLayoutParams : (Landroid/view/ViewGroup$LayoutParams;)V
    //   946: goto -> 835
    //   949: aload #13
    //   951: checkcast android/support/v7/widget/RecyclerView$LayoutParams
    //   954: astore #13
    //   956: goto -> 835
    //   959: iconst_0
    //   960: istore_2
    //   961: goto -> 854
    //   964: iconst_0
    //   965: istore_2
    //   966: goto -> 798
    //   969: aload #13
    //   971: astore #14
    //   973: goto -> 399
    //   976: aload #13
    //   978: astore #14
    //   980: goto -> 668
    //   983: aconst_null
    //   984: astore #14
    //   986: iconst_0
    //   987: istore #6
    //   989: goto -> 110
  }
  
  void unscrapView(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    if (RecyclerView$ViewHolder.access$900(paramRecyclerView$ViewHolder)) {
      this.mChangedScrap.remove(paramRecyclerView$ViewHolder);
    } else {
      this.mAttachedScrap.remove(paramRecyclerView$ViewHolder);
    } 
    RecyclerView$ViewHolder.access$802(paramRecyclerView$ViewHolder, null);
    RecyclerView$ViewHolder.access$902(paramRecyclerView$ViewHolder, false);
    paramRecyclerView$ViewHolder.clearReturnedFromScrapFlag();
  }
  
  void updateViewCacheSize() {
    if (RecyclerView.this.mLayout != null) {
      i = RecyclerView.this.mLayout.mPrefetchMaxCountObserved;
    } else {
      i = 0;
    } 
    this.mViewCacheMax = i + this.mRequestedCacheMax;
    int i;
    for (i = this.mCachedViews.size() - 1; i >= 0 && this.mCachedViews.size() > this.mViewCacheMax; i--)
      recycleCachedViewAt(i); 
  }
  
  boolean validateViewHolderForOffsetPosition(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    boolean bool2 = true;
    if (paramRecyclerView$ViewHolder.isRemoved())
      return RecyclerView.this.mState.isPreLayout(); 
    if (paramRecyclerView$ViewHolder.mPosition < 0 || paramRecyclerView$ViewHolder.mPosition >= RecyclerView.this.mAdapter.getItemCount())
      throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + paramRecyclerView$ViewHolder); 
    if (!RecyclerView.this.mState.isPreLayout() && RecyclerView.this.mAdapter.getItemViewType(paramRecyclerView$ViewHolder.mPosition) != paramRecyclerView$ViewHolder.getItemViewType())
      return false; 
    boolean bool1 = bool2;
    if (RecyclerView.this.mAdapter.hasStableIds()) {
      bool1 = bool2;
      if (paramRecyclerView$ViewHolder.getItemId() != RecyclerView.this.mAdapter.getItemId(paramRecyclerView$ViewHolder.mPosition))
        return false; 
    } 
    return bool1;
  }
  
  void viewRangeUpdate(int paramInt1, int paramInt2) {
    for (int i = this.mCachedViews.size() - 1; i >= 0; i--) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i);
      if (recyclerView$ViewHolder != null) {
        int j = recyclerView$ViewHolder.mPosition;
        if (j >= paramInt1 && j < paramInt1 + paramInt2) {
          recyclerView$ViewHolder.addFlags(2);
          recycleCachedViewAt(i);
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$Recycler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */