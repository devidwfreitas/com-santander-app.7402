package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.os.TraceCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v7.recyclerview.R;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView extends ViewGroup implements NestedScrollingChild, ScrollingView {
  static {
    CLIP_TO_PADDING_ATTR = new int[] { 16842987 };
    if (Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20) {
      bool = true;
    } else {
      bool = false;
    } 
    FORCE_INVALIDATE_DISPLAY_LIST = bool;
    if (Build.VERSION.SDK_INT >= 23) {
      bool = true;
    } else {
      bool = false;
    } 
    ALLOW_SIZE_IN_UNSPECIFIED_SPEC = bool;
    if (Build.VERSION.SDK_INT >= 16) {
      bool = true;
    } else {
      bool = false;
    } 
    POST_UPDATES_ON_ANIMATION = bool;
    if (Build.VERSION.SDK_INT >= 21) {
      bool = true;
    } else {
      bool = false;
    } 
    ALLOW_THREAD_GAP_WORK = bool;
    if (Build.VERSION.SDK_INT <= 15) {
      bool = true;
    } else {
      bool = false;
    } 
    FORCE_ABS_FOCUS_SEARCH_DIRECTION = bool;
    if (Build.VERSION.SDK_INT <= 15) {
      bool = true;
    } else {
      bool = false;
    } 
    IGNORE_DETACHED_FOCUSED_CHILD = bool;
    LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[] { Context.class, AttributeSet.class, int.class, int.class };
    sQuinticInterpolator = new RecyclerView$3();
  }
  
  public RecyclerView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public RecyclerView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    boolean bool1;
    GapWorker$LayoutPrefetchRegistryImpl gapWorker$LayoutPrefetchRegistryImpl;
    this.mObserver = new RecyclerView$RecyclerViewDataObserver(this);
    this.mRecycler = new RecyclerView$Recycler(this);
    this.mViewInfoStore = new ViewInfoStore();
    this.mUpdateChildViewsRunnable = new RecyclerView$1(this);
    this.mTempRect = new Rect();
    this.mTempRect2 = new Rect();
    this.mTempRectF = new RectF();
    this.mItemDecorations = new ArrayList<RecyclerView$ItemDecoration>();
    this.mOnItemTouchListeners = new ArrayList<RecyclerView$OnItemTouchListener>();
    this.mEatRequestLayout = 0;
    this.mDataSetHasChangedAfterLayout = false;
    this.mLayoutOrScrollCounter = 0;
    this.mDispatchScrollCounter = 0;
    this.mItemAnimator = new DefaultItemAnimator();
    this.mScrollState = 0;
    this.mScrollPointerId = -1;
    this.mScrollFactor = Float.MIN_VALUE;
    this.mPreserveFocusAfterLayout = true;
    this.mViewFlinger = new RecyclerView$ViewFlinger(this);
    if (ALLOW_THREAD_GAP_WORK) {
      gapWorker$LayoutPrefetchRegistryImpl = new GapWorker$LayoutPrefetchRegistryImpl();
    } else {
      gapWorker$LayoutPrefetchRegistryImpl = null;
    } 
    this.mPrefetchRegistry = gapWorker$LayoutPrefetchRegistryImpl;
    this.mState = new RecyclerView$State();
    this.mItemsAddedOrRemoved = false;
    this.mItemsChanged = false;
    this.mItemAnimatorListener = new RecyclerView$ItemAnimatorRestoreListener(this);
    this.mPostedAnimatorRunner = false;
    this.mMinMaxLayoutPositions = new int[2];
    this.mScrollOffset = new int[2];
    this.mScrollConsumed = new int[2];
    this.mNestedOffsets = new int[2];
    this.mPendingAccessibilityImportanceChange = new ArrayList<RecyclerView$ViewHolder>();
    this.mItemAnimatorRunner = new RecyclerView$2(this);
    this.mViewInfoProcessCallback = new RecyclerView$4(this);
    if (paramAttributeSet != null) {
      TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, CLIP_TO_PADDING_ATTR, paramInt, 0);
      this.mClipToPadding = typedArray.getBoolean(0, true);
      typedArray.recycle();
    } else {
      this.mClipToPadding = true;
    } 
    setScrollContainer(true);
    setFocusableInTouchMode(true);
    ViewConfiguration viewConfiguration = ViewConfiguration.get(paramContext);
    this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
    this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    if (getOverScrollMode() == 2) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    setWillNotDraw(bool1);
    this.mItemAnimator.setListener(this.mItemAnimatorListener);
    initAdapterManager();
    initChildrenHelper();
    if (ViewCompat.getImportantForAccessibility((View)this) == 0)
      ViewCompat.setImportantForAccessibility((View)this, 1); 
    this.mAccessibilityManager = (AccessibilityManager)getContext().getSystemService("accessibility");
    setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
    if (paramAttributeSet != null) {
      TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt, 0);
      String str = typedArray.getString(R.styleable.RecyclerView_layoutManager);
      if (typedArray.getInt(R.styleable.RecyclerView_android_descendantFocusability, -1) == -1)
        setDescendantFocusability(262144); 
      typedArray.recycle();
      createLayoutManager(paramContext, str, paramAttributeSet, paramInt, 0);
      bool1 = bool2;
      if (Build.VERSION.SDK_INT >= 21) {
        TypedArray typedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, NESTED_SCROLLING_ATTRS, paramInt, 0);
        bool1 = typedArray1.getBoolean(0, true);
        typedArray1.recycle();
      } 
    } else {
      setDescendantFocusability(262144);
      bool1 = bool2;
    } 
    setNestedScrollingEnabled(bool1);
  }
  
  private void addAnimatingView(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    boolean bool;
    View view = paramRecyclerView$ViewHolder.itemView;
    if (view.getParent() == this) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mRecycler.unscrapView(getChildViewHolder(view));
    if (paramRecyclerView$ViewHolder.isTmpDetached()) {
      this.mChildHelper.attachViewToParent(view, -1, view.getLayoutParams(), true);
      return;
    } 
    if (!bool) {
      this.mChildHelper.addView(view, true);
      return;
    } 
    this.mChildHelper.hide(view);
  }
  
  private void animateChange(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder1, @NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder2, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2, boolean paramBoolean1, boolean paramBoolean2) {
    paramRecyclerView$ViewHolder1.setIsRecyclable(false);
    if (paramBoolean1)
      addAnimatingView(paramRecyclerView$ViewHolder1); 
    if (paramRecyclerView$ViewHolder1 != paramRecyclerView$ViewHolder2) {
      if (paramBoolean2)
        addAnimatingView(paramRecyclerView$ViewHolder2); 
      paramRecyclerView$ViewHolder1.mShadowedHolder = paramRecyclerView$ViewHolder2;
      addAnimatingView(paramRecyclerView$ViewHolder1);
      this.mRecycler.unscrapView(paramRecyclerView$ViewHolder1);
      paramRecyclerView$ViewHolder2.setIsRecyclable(false);
      paramRecyclerView$ViewHolder2.mShadowingHolder = paramRecyclerView$ViewHolder1;
    } 
    if (this.mItemAnimator.animateChange(paramRecyclerView$ViewHolder1, paramRecyclerView$ViewHolder2, paramRecyclerView$ItemAnimator$ItemHolderInfo1, paramRecyclerView$ItemAnimator$ItemHolderInfo2))
      postAnimationRunner(); 
  }
  
  private void cancelTouch() {
    resetTouch();
    setScrollState(0);
  }
  
  static void clearNestedRecyclerViewIfNotNested(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    if (paramRecyclerView$ViewHolder.mNestedRecyclerView != null) {
      View view = (View)paramRecyclerView$ViewHolder.mNestedRecyclerView.get();
      while (view != null) {
        if (view != paramRecyclerView$ViewHolder.itemView) {
          ViewParent viewParent = view.getParent();
          if (viewParent instanceof View) {
            View view1 = (View)viewParent;
            continue;
          } 
          viewParent = null;
          continue;
        } 
        return;
      } 
    } else {
      return;
    } 
    paramRecyclerView$ViewHolder.mNestedRecyclerView = null;
  }
  
  private void createLayoutManager(Context paramContext, String paramString, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    if (paramString != null) {
      paramString = paramString.trim();
      if (paramString.length() != 0) {
        String str = getFullClassName(paramContext, paramString);
        try {
          ClassLoader classLoader;
          if (isInEditMode()) {
            classLoader = getClass().getClassLoader();
          } else {
            classLoader = paramContext.getClassLoader();
          } 
          Class<? extends RecyclerView$LayoutManager> clazz = classLoader.loadClass(str).asSubclass(RecyclerView$LayoutManager.class);
          try {
            Constructor<? extends RecyclerView$LayoutManager> constructor = clazz.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
            Object[] arrayOfObject2 = new Object[4];
            arrayOfObject2[0] = paramContext;
            arrayOfObject2[1] = paramAttributeSet;
            arrayOfObject2[2] = Integer.valueOf(paramInt1);
            arrayOfObject2[3] = Integer.valueOf(paramInt2);
            Object[] arrayOfObject1 = arrayOfObject2;
            constructor.setAccessible(true);
            setLayoutManager(constructor.newInstance(arrayOfObject1));
            return;
          } catch (NoSuchMethodException noSuchMethodException) {
            try {
              Constructor<? extends RecyclerView$LayoutManager> constructor = clazz.getConstructor(new Class[0]);
              noSuchMethodException = null;
              constructor.setAccessible(true);
              setLayoutManager(constructor.newInstance((Object[])noSuchMethodException));
              return;
            } catch (NoSuchMethodException noSuchMethodException1) {
              noSuchMethodException1.initCause(noSuchMethodException);
              throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, noSuchMethodException1);
            } 
          } 
        } catch (ClassNotFoundException classNotFoundException) {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, classNotFoundException);
        } catch (InvocationTargetException invocationTargetException) {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, invocationTargetException);
        } catch (InstantiationException instantiationException) {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, instantiationException);
        } catch (IllegalAccessException illegalAccessException) {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, illegalAccessException);
        } catch (ClassCastException classCastException) {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, classCastException);
        } 
      } 
    } 
  }
  
  private boolean didChildRangeChange(int paramInt1, int paramInt2) {
    boolean bool = false;
    findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
    if (this.mMinMaxLayoutPositions[0] != paramInt1 || this.mMinMaxLayoutPositions[1] != paramInt2)
      bool = true; 
    return bool;
  }
  
  private void dispatchContentChangedIfNecessary() {
    int i = this.mEatenAccessibilityChangeFlags;
    this.mEatenAccessibilityChangeFlags = 0;
    if (i != 0 && isAccessibilityEnabled()) {
      AccessibilityEvent accessibilityEvent = AccessibilityEvent.obtain();
      accessibilityEvent.setEventType(2048);
      AccessibilityEventCompat.setContentChangeTypes(accessibilityEvent, i);
      sendAccessibilityEventUnchecked(accessibilityEvent);
    } 
  }
  
  private void dispatchLayoutStep1() {
    boolean bool = true;
    this.mState.assertLayoutStep(1);
    this.mState.mIsMeasuring = false;
    eatRequestLayout();
    this.mViewInfoStore.clear();
    onEnterLayoutOrScroll();
    processAdapterUpdatesAndSetAnimationFlags();
    saveFocusInfo();
    RecyclerView$State recyclerView$State = this.mState;
    if (!this.mState.mRunSimpleAnimations || !this.mItemsChanged)
      bool = false; 
    recyclerView$State.mTrackOldChangeHolders = bool;
    this.mItemsChanged = false;
    this.mItemsAddedOrRemoved = false;
    this.mState.mInPreLayout = this.mState.mRunPredictiveAnimations;
    this.mState.mItemCount = this.mAdapter.getItemCount();
    findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
    if (this.mState.mRunSimpleAnimations) {
      int j = this.mChildHelper.getChildCount();
      for (int i = 0; i < j; i++) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
        if (!recyclerView$ViewHolder.shouldIgnore() && (!recyclerView$ViewHolder.isInvalid() || this.mAdapter.hasStableIds())) {
          RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo = this.mItemAnimator.recordPreLayoutInformation(this.mState, recyclerView$ViewHolder, RecyclerView$ItemAnimator.buildAdapterChangeFlagsForAnimations(recyclerView$ViewHolder), recyclerView$ViewHolder.getUnmodifiedPayloads());
          this.mViewInfoStore.addToPreLayout(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo);
          if (this.mState.mTrackOldChangeHolders && recyclerView$ViewHolder.isUpdated() && !recyclerView$ViewHolder.isRemoved() && !recyclerView$ViewHolder.shouldIgnore() && !recyclerView$ViewHolder.isInvalid()) {
            long l = getChangedHolderKey(recyclerView$ViewHolder);
            this.mViewInfoStore.addToOldChangeHolders(l, recyclerView$ViewHolder);
          } 
        } 
      } 
    } 
    if (this.mState.mRunPredictiveAnimations) {
      saveOldPositions();
      bool = this.mState.mStructureChanged;
      this.mState.mStructureChanged = false;
      this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
      this.mState.mStructureChanged = bool;
      for (int i = 0; i < this.mChildHelper.getChildCount(); i++) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
        if (!recyclerView$ViewHolder.shouldIgnore() && !this.mViewInfoStore.isInPreLayout(recyclerView$ViewHolder)) {
          int k = RecyclerView$ItemAnimator.buildAdapterChangeFlagsForAnimations(recyclerView$ViewHolder);
          bool = recyclerView$ViewHolder.hasAnyOfTheFlags(8192);
          int j = k;
          if (!bool)
            j = k | 0x1000; 
          RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo = this.mItemAnimator.recordPreLayoutInformation(this.mState, recyclerView$ViewHolder, j, recyclerView$ViewHolder.getUnmodifiedPayloads());
          if (bool) {
            recordAnimationInfoIfBouncedHiddenView(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo);
          } else {
            this.mViewInfoStore.addToAppearedInPreLayoutHolders(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo);
          } 
        } 
      } 
      clearOldPositions();
    } else {
      clearOldPositions();
    } 
    onExitLayoutOrScroll();
    resumeRequestLayout(false);
    this.mState.mLayoutStep = 2;
  }
  
  private void dispatchLayoutStep2() {
    boolean bool;
    eatRequestLayout();
    onEnterLayoutOrScroll();
    this.mState.assertLayoutStep(6);
    this.mAdapterHelper.consumeUpdatesInOnePass();
    this.mState.mItemCount = this.mAdapter.getItemCount();
    this.mState.mDeletedInvisibleItemCountSincePreviousLayout = 0;
    this.mState.mInPreLayout = false;
    this.mLayout.onLayoutChildren(this.mRecycler, this.mState);
    this.mState.mStructureChanged = false;
    this.mPendingSavedState = null;
    RecyclerView$State recyclerView$State = this.mState;
    if (this.mState.mRunSimpleAnimations && this.mItemAnimator != null) {
      bool = true;
    } else {
      bool = false;
    } 
    recyclerView$State.mRunSimpleAnimations = bool;
    this.mState.mLayoutStep = 4;
    onExitLayoutOrScroll();
    resumeRequestLayout(false);
  }
  
  private void dispatchLayoutStep3() {
    this.mState.assertLayoutStep(4);
    eatRequestLayout();
    onEnterLayoutOrScroll();
    this.mState.mLayoutStep = 1;
    if (this.mState.mRunSimpleAnimations) {
      for (int i = this.mChildHelper.getChildCount() - 1; i >= 0; i--) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
        if (!recyclerView$ViewHolder.shouldIgnore()) {
          long l = getChangedHolderKey(recyclerView$ViewHolder);
          RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo = this.mItemAnimator.recordPostLayoutInformation(this.mState, recyclerView$ViewHolder);
          RecyclerView$ViewHolder recyclerView$ViewHolder1 = this.mViewInfoStore.getFromOldChangeHolders(l);
          if (recyclerView$ViewHolder1 != null && !recyclerView$ViewHolder1.shouldIgnore()) {
            boolean bool1 = this.mViewInfoStore.isDisappearing(recyclerView$ViewHolder1);
            boolean bool2 = this.mViewInfoStore.isDisappearing(recyclerView$ViewHolder);
            if (bool1 && recyclerView$ViewHolder1 == recyclerView$ViewHolder) {
              this.mViewInfoStore.addToPostLayout(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo);
            } else {
              RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo1 = this.mViewInfoStore.popFromPreLayout(recyclerView$ViewHolder1);
              this.mViewInfoStore.addToPostLayout(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo);
              recyclerView$ItemAnimator$ItemHolderInfo = this.mViewInfoStore.popFromPostLayout(recyclerView$ViewHolder);
              if (recyclerView$ItemAnimator$ItemHolderInfo1 == null) {
                handleMissingPreInfoForChangeError(l, recyclerView$ViewHolder, recyclerView$ViewHolder1);
              } else {
                animateChange(recyclerView$ViewHolder1, recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo1, recyclerView$ItemAnimator$ItemHolderInfo, bool1, bool2);
              } 
            } 
          } else {
            this.mViewInfoStore.addToPostLayout(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo);
          } 
        } 
      } 
      this.mViewInfoStore.process(this.mViewInfoProcessCallback);
    } 
    this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
    this.mState.mPreviousLayoutItemCount = this.mState.mItemCount;
    this.mDataSetHasChangedAfterLayout = false;
    this.mState.mRunSimpleAnimations = false;
    this.mState.mRunPredictiveAnimations = false;
    this.mLayout.mRequestedSimpleAnimations = false;
    if (this.mRecycler.mChangedScrap != null)
      this.mRecycler.mChangedScrap.clear(); 
    if (this.mLayout.mPrefetchMaxObservedInInitialPrefetch) {
      this.mLayout.mPrefetchMaxCountObserved = 0;
      this.mLayout.mPrefetchMaxObservedInInitialPrefetch = false;
      this.mRecycler.updateViewCacheSize();
    } 
    this.mLayout.onLayoutCompleted(this.mState);
    onExitLayoutOrScroll();
    resumeRequestLayout(false);
    this.mViewInfoStore.clear();
    if (didChildRangeChange(this.mMinMaxLayoutPositions[0], this.mMinMaxLayoutPositions[1]))
      dispatchOnScrolled(0, 0); 
    recoverFocusFromState();
    resetFocusInfo();
  }
  
  private boolean dispatchOnItemTouch(MotionEvent paramMotionEvent) {
    int i = paramMotionEvent.getAction();
    if (this.mActiveOnItemTouchListener != null)
      if (i == 0) {
        this.mActiveOnItemTouchListener = null;
      } else {
        this.mActiveOnItemTouchListener.onTouchEvent(this, paramMotionEvent);
        if (i == 3 || i == 1)
          this.mActiveOnItemTouchListener = null; 
        return true;
      }  
    if (i != 0) {
      int j = this.mOnItemTouchListeners.size();
      for (i = 0; i < j; i++) {
        RecyclerView$OnItemTouchListener recyclerView$OnItemTouchListener = this.mOnItemTouchListeners.get(i);
        if (recyclerView$OnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent)) {
          this.mActiveOnItemTouchListener = recyclerView$OnItemTouchListener;
          return true;
        } 
      } 
    } 
    return false;
  }
  
  private boolean dispatchOnItemTouchIntercept(MotionEvent paramMotionEvent) {
    int j = paramMotionEvent.getAction();
    if (j == 3 || j == 0)
      this.mActiveOnItemTouchListener = null; 
    int k = this.mOnItemTouchListeners.size();
    for (int i = 0; i < k; i++) {
      RecyclerView$OnItemTouchListener recyclerView$OnItemTouchListener = this.mOnItemTouchListeners.get(i);
      if (recyclerView$OnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent) && j != 3) {
        this.mActiveOnItemTouchListener = recyclerView$OnItemTouchListener;
        return true;
      } 
    } 
    return false;
  }
  
  private void findMinMaxChildLayoutPositions(int[] paramArrayOfint) {
    int m = this.mChildHelper.getChildCount();
    if (m == 0) {
      paramArrayOfint[0] = -1;
      paramArrayOfint[1] = -1;
      return;
    } 
    int i = Integer.MAX_VALUE;
    int k = Integer.MIN_VALUE;
    int j = 0;
    while (true) {
      if (j < m) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getChildAt(j));
        if (!recyclerView$ViewHolder.shouldIgnore()) {
          int i1 = recyclerView$ViewHolder.getLayoutPosition();
          int n = i;
          if (i1 < i)
            n = i1; 
          if (i1 > k) {
            k = i1;
            i = n;
          } else {
            i = n;
          } 
        } 
        j++;
        continue;
      } 
      paramArrayOfint[0] = i;
      paramArrayOfint[1] = k;
      return;
    } 
  }
  
  @Nullable
  static RecyclerView findNestedRecyclerView(@NonNull View paramView) {
    if (!(paramView instanceof ViewGroup))
      return null; 
    if (paramView instanceof RecyclerView)
      return (RecyclerView)paramView; 
    ViewGroup viewGroup = (ViewGroup)paramView;
    int j = viewGroup.getChildCount();
    for (int i = 0; i < j; i++) {
      RecyclerView recyclerView = findNestedRecyclerView(viewGroup.getChildAt(i));
      if (recyclerView != null)
        return recyclerView; 
    } 
    return null;
  }
  
  @Nullable
  private View findNextViewToFocus() {
    int i;
    if (this.mState.mFocusedItemPosition != -1) {
      i = this.mState.mFocusedItemPosition;
    } else {
      i = 0;
    } 
    int k = this.mState.getItemCount();
    int j = i;
    while (true) {
      if (j < k) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = findViewHolderForAdapterPosition(j);
        if (recyclerView$ViewHolder != null) {
          if (recyclerView$ViewHolder.itemView.hasFocusable())
            return recyclerView$ViewHolder.itemView; 
          j++;
          continue;
        } 
      } 
      for (i = Math.min(k, i) - 1; i >= 0; i--) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = findViewHolderForAdapterPosition(i);
        if (recyclerView$ViewHolder == null)
          return null; 
        if (recyclerView$ViewHolder.itemView.hasFocusable())
          return recyclerView$ViewHolder.itemView; 
      } 
      return null;
    } 
  }
  
  static RecyclerView$ViewHolder getChildViewHolderInt(View paramView) {
    return (paramView == null) ? null : ((RecyclerView$LayoutParams)paramView.getLayoutParams()).mViewHolder;
  }
  
  static void getDecoratedBoundsWithMarginsInt(View paramView, Rect paramRect) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    Rect rect = recyclerView$LayoutParams.mDecorInsets;
    int i = paramView.getLeft();
    int j = rect.left;
    int k = recyclerView$LayoutParams.leftMargin;
    int m = paramView.getTop();
    int n = rect.top;
    int i1 = recyclerView$LayoutParams.topMargin;
    int i2 = paramView.getRight();
    int i3 = rect.right;
    int i4 = recyclerView$LayoutParams.rightMargin;
    int i5 = paramView.getBottom();
    int i6 = rect.bottom;
    paramRect.set(i - j - k, m - n - i1, i2 + i3 + i4, recyclerView$LayoutParams.bottomMargin + i6 + i5);
  }
  
  private int getDeepestFocusedViewWithId(View paramView) {
    int i = paramView.getId();
    while (!paramView.isFocused() && paramView instanceof ViewGroup && paramView.hasFocus()) {
      paramView = ((ViewGroup)paramView).getFocusedChild();
      if (paramView.getId() != -1)
        i = paramView.getId(); 
    } 
    return i;
  }
  
  private String getFullClassName(Context paramContext, String paramString) {
    if (paramString.charAt(0) == '.')
      return paramContext.getPackageName() + paramString; 
    String str = paramString;
    return !paramString.contains(".") ? (RecyclerView.class.getPackage().getName() + '.' + paramString) : str;
  }
  
  private float getScrollFactor() {
    if (this.mScrollFactor == Float.MIN_VALUE) {
      TypedValue typedValue = new TypedValue();
      if (getContext().getTheme().resolveAttribute(16842829, typedValue, true)) {
        this.mScrollFactor = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
        return this.mScrollFactor;
      } 
    } else {
      return this.mScrollFactor;
    } 
    return 0.0F;
  }
  
  private NestedScrollingChildHelper getScrollingChildHelper() {
    if (this.mScrollingChildHelper == null)
      this.mScrollingChildHelper = new NestedScrollingChildHelper((View)this); 
    return this.mScrollingChildHelper;
  }
  
  private void handleMissingPreInfoForChangeError(long paramLong, RecyclerView$ViewHolder paramRecyclerView$ViewHolder1, RecyclerView$ViewHolder paramRecyclerView$ViewHolder2) {
    int j = this.mChildHelper.getChildCount();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
      if (recyclerView$ViewHolder != paramRecyclerView$ViewHolder1 && getChangedHolderKey(recyclerView$ViewHolder) == paramLong) {
        if (this.mAdapter != null && this.mAdapter.hasStableIds())
          throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + recyclerView$ViewHolder + " \n View Holder 2:" + paramRecyclerView$ViewHolder1); 
        throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + recyclerView$ViewHolder + " \n View Holder 2:" + paramRecyclerView$ViewHolder1);
      } 
    } 
    Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + paramRecyclerView$ViewHolder2 + " cannot be found but it is necessary for " + paramRecyclerView$ViewHolder1);
  }
  
  private boolean hasUpdatedView() {
    boolean bool1;
    boolean bool2 = false;
    int j = this.mChildHelper.getChildCount();
    int i = 0;
    while (true) {
      bool1 = bool2;
      if (i < j) {
        RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getChildAt(i));
        if (recyclerView$ViewHolder != null && !recyclerView$ViewHolder.shouldIgnore() && recyclerView$ViewHolder.isUpdated()) {
          bool1 = true;
          break;
        } 
        i++;
        continue;
      } 
      break;
    } 
    return bool1;
  }
  
  private void initChildrenHelper() {
    this.mChildHelper = new ChildHelper(new RecyclerView$5(this));
  }
  
  private boolean isPreferredNextFocus(View paramView1, View paramView2, int paramInt) {
    byte b = 0;
    if (paramView2 == null || paramView2 == this)
      return false; 
    if (paramView1 == null)
      return true; 
    if (paramInt == 2 || paramInt == 1) {
      byte b1;
      if (this.mLayout.getLayoutDirection() == 1) {
        b1 = 1;
      } else {
        b1 = 0;
      } 
      if (paramInt == 2)
        b = 1; 
      if ((b ^ b1) != 0) {
        b1 = 66;
      } else {
        b1 = 17;
      } 
      return isPreferredNextFocusAbsolute(paramView1, paramView2, b1) ? true : ((paramInt == 2) ? isPreferredNextFocusAbsolute(paramView1, paramView2, 130) : isPreferredNextFocusAbsolute(paramView1, paramView2, 33));
    } 
    return isPreferredNextFocusAbsolute(paramView1, paramView2, paramInt);
  }
  
  private boolean isPreferredNextFocusAbsolute(View paramView1, View paramView2, int paramInt) {
    this.mTempRect.set(0, 0, paramView1.getWidth(), paramView1.getHeight());
    this.mTempRect2.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
    offsetDescendantRectToMyCoords(paramView1, this.mTempRect);
    offsetDescendantRectToMyCoords(paramView2, this.mTempRect2);
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("direction must be absolute. received:" + paramInt);
      case 17:
        return !((this.mTempRect.right <= this.mTempRect2.right && this.mTempRect.left < this.mTempRect2.right) || this.mTempRect.left <= this.mTempRect2.left);
      case 66:
        return !((this.mTempRect.left >= this.mTempRect2.left && this.mTempRect.right > this.mTempRect2.left) || this.mTempRect.right >= this.mTempRect2.right);
      case 33:
        return !((this.mTempRect.bottom <= this.mTempRect2.bottom && this.mTempRect.top < this.mTempRect2.bottom) || this.mTempRect.top <= this.mTempRect2.top);
      case 130:
        break;
    } 
    return !((this.mTempRect.top >= this.mTempRect2.top && this.mTempRect.bottom > this.mTempRect2.top) || this.mTempRect.bottom >= this.mTempRect2.bottom);
  }
  
  private void onPointerUp(MotionEvent paramMotionEvent) {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (paramMotionEvent.getPointerId(i) == this.mScrollPointerId) {
      if (i == 0) {
        i = 1;
      } else {
        i = 0;
      } 
      this.mScrollPointerId = paramMotionEvent.getPointerId(i);
      int j = (int)(paramMotionEvent.getX(i) + 0.5F);
      this.mLastTouchX = j;
      this.mInitialTouchX = j;
      i = (int)(paramMotionEvent.getY(i) + 0.5F);
      this.mLastTouchY = i;
      this.mInitialTouchY = i;
    } 
  }
  
  private boolean predictiveItemAnimationsEnabled() {
    return (this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations());
  }
  
  private void processAdapterUpdatesAndSetAnimationFlags() {
    boolean bool1;
    boolean bool2;
    boolean bool3 = true;
    if (this.mDataSetHasChangedAfterLayout) {
      this.mAdapterHelper.reset();
      this.mLayout.onItemsChanged(this);
    } 
    if (predictiveItemAnimationsEnabled()) {
      this.mAdapterHelper.preProcess();
    } else {
      this.mAdapterHelper.consumeUpdatesInOnePass();
    } 
    if (this.mItemsAddedOrRemoved || this.mItemsChanged) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    RecyclerView$State recyclerView$State = this.mState;
    if (this.mFirstLayoutComplete && this.mItemAnimator != null && (this.mDataSetHasChangedAfterLayout || bool1 || this.mLayout.mRequestedSimpleAnimations) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.hasStableIds())) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    recyclerView$State.mRunSimpleAnimations = bool2;
    recyclerView$State = this.mState;
    if (this.mState.mRunSimpleAnimations && bool1 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled()) {
      bool2 = bool3;
    } else {
      bool2 = false;
    } 
    recyclerView$State.mRunPredictiveAnimations = bool2;
  }
  
  private void pullGlows(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #6
    //   3: iconst_0
    //   4: istore #7
    //   6: fload_2
    //   7: fconst_0
    //   8: fcmpg
    //   9: ifge -> 110
    //   12: aload_0
    //   13: invokevirtual ensureLeftGlow : ()V
    //   16: iload #7
    //   18: istore #5
    //   20: aload_0
    //   21: getfield mLeftGlow : Landroid/support/v4/widget/EdgeEffectCompat;
    //   24: fload_2
    //   25: fneg
    //   26: aload_0
    //   27: invokevirtual getWidth : ()I
    //   30: i2f
    //   31: fdiv
    //   32: fconst_1
    //   33: fload_3
    //   34: aload_0
    //   35: invokevirtual getHeight : ()I
    //   38: i2f
    //   39: fdiv
    //   40: fsub
    //   41: invokevirtual onPull : (FF)Z
    //   44: ifeq -> 50
    //   47: iconst_1
    //   48: istore #5
    //   50: fload #4
    //   52: fconst_0
    //   53: fcmpg
    //   54: ifge -> 158
    //   57: aload_0
    //   58: invokevirtual ensureTopGlow : ()V
    //   61: aload_0
    //   62: getfield mTopGlow : Landroid/support/v4/widget/EdgeEffectCompat;
    //   65: fload #4
    //   67: fneg
    //   68: aload_0
    //   69: invokevirtual getHeight : ()I
    //   72: i2f
    //   73: fdiv
    //   74: fload_1
    //   75: aload_0
    //   76: invokevirtual getWidth : ()I
    //   79: i2f
    //   80: fdiv
    //   81: invokevirtual onPull : (FF)Z
    //   84: ifeq -> 196
    //   87: iload #6
    //   89: ifne -> 105
    //   92: fload_2
    //   93: fconst_0
    //   94: fcmpl
    //   95: ifne -> 105
    //   98: fload #4
    //   100: fconst_0
    //   101: fcmpl
    //   102: ifeq -> 109
    //   105: aload_0
    //   106: invokestatic postInvalidateOnAnimation : (Landroid/view/View;)V
    //   109: return
    //   110: iload #7
    //   112: istore #5
    //   114: fload_2
    //   115: fconst_0
    //   116: fcmpl
    //   117: ifle -> 50
    //   120: aload_0
    //   121: invokevirtual ensureRightGlow : ()V
    //   124: iload #7
    //   126: istore #5
    //   128: aload_0
    //   129: getfield mRightGlow : Landroid/support/v4/widget/EdgeEffectCompat;
    //   132: fload_2
    //   133: aload_0
    //   134: invokevirtual getWidth : ()I
    //   137: i2f
    //   138: fdiv
    //   139: fload_3
    //   140: aload_0
    //   141: invokevirtual getHeight : ()I
    //   144: i2f
    //   145: fdiv
    //   146: invokevirtual onPull : (FF)Z
    //   149: ifeq -> 50
    //   152: iconst_1
    //   153: istore #5
    //   155: goto -> 50
    //   158: fload #4
    //   160: fconst_0
    //   161: fcmpl
    //   162: ifle -> 196
    //   165: aload_0
    //   166: invokevirtual ensureBottomGlow : ()V
    //   169: aload_0
    //   170: getfield mBottomGlow : Landroid/support/v4/widget/EdgeEffectCompat;
    //   173: fload #4
    //   175: aload_0
    //   176: invokevirtual getHeight : ()I
    //   179: i2f
    //   180: fdiv
    //   181: fconst_1
    //   182: fload_1
    //   183: aload_0
    //   184: invokevirtual getWidth : ()I
    //   187: i2f
    //   188: fdiv
    //   189: fsub
    //   190: invokevirtual onPull : (FF)Z
    //   193: ifne -> 87
    //   196: iload #5
    //   198: istore #6
    //   200: goto -> 87
  }
  
  private void recoverFocusFromState() {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield mPreserveFocusAfterLayout : Z
    //   6: ifeq -> 50
    //   9: aload_0
    //   10: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   13: ifnull -> 50
    //   16: aload_0
    //   17: invokevirtual hasFocus : ()Z
    //   20: ifeq -> 50
    //   23: aload_0
    //   24: invokevirtual getDescendantFocusability : ()I
    //   27: ldc_w 393216
    //   30: if_icmpeq -> 50
    //   33: aload_0
    //   34: invokevirtual getDescendantFocusability : ()I
    //   37: ldc_w 131072
    //   40: if_icmpne -> 51
    //   43: aload_0
    //   44: invokevirtual isFocused : ()Z
    //   47: ifeq -> 51
    //   50: return
    //   51: aload_0
    //   52: invokevirtual isFocused : ()Z
    //   55: ifne -> 110
    //   58: aload_0
    //   59: invokevirtual getFocusedChild : ()Landroid/view/View;
    //   62: astore_1
    //   63: getstatic android/support/v7/widget/RecyclerView.IGNORE_DETACHED_FOCUSED_CHILD : Z
    //   66: ifeq -> 99
    //   69: aload_1
    //   70: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   73: ifnull -> 83
    //   76: aload_1
    //   77: invokevirtual hasFocus : ()Z
    //   80: ifne -> 99
    //   83: aload_0
    //   84: getfield mChildHelper : Landroid/support/v7/widget/ChildHelper;
    //   87: invokevirtual getChildCount : ()I
    //   90: ifne -> 110
    //   93: aload_0
    //   94: invokevirtual requestFocus : ()Z
    //   97: pop
    //   98: return
    //   99: aload_0
    //   100: getfield mChildHelper : Landroid/support/v7/widget/ChildHelper;
    //   103: aload_1
    //   104: invokevirtual isHidden : (Landroid/view/View;)Z
    //   107: ifeq -> 50
    //   110: aload_0
    //   111: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   114: getfield mFocusedItemId : J
    //   117: ldc2_w -1
    //   120: lcmp
    //   121: ifeq -> 252
    //   124: aload_0
    //   125: getfield mAdapter : Landroid/support/v7/widget/RecyclerView$Adapter;
    //   128: invokevirtual hasStableIds : ()Z
    //   131: ifeq -> 252
    //   134: aload_0
    //   135: aload_0
    //   136: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   139: getfield mFocusedItemId : J
    //   142: invokevirtual findViewHolderForItemId : (J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   145: astore_1
    //   146: aload_1
    //   147: ifnull -> 174
    //   150: aload_0
    //   151: getfield mChildHelper : Landroid/support/v7/widget/ChildHelper;
    //   154: aload_1
    //   155: getfield itemView : Landroid/view/View;
    //   158: invokevirtual isHidden : (Landroid/view/View;)Z
    //   161: ifne -> 174
    //   164: aload_1
    //   165: getfield itemView : Landroid/view/View;
    //   168: invokevirtual hasFocusable : ()Z
    //   171: ifne -> 241
    //   174: aload_2
    //   175: astore_1
    //   176: aload_0
    //   177: getfield mChildHelper : Landroid/support/v7/widget/ChildHelper;
    //   180: invokevirtual getChildCount : ()I
    //   183: ifle -> 191
    //   186: aload_0
    //   187: invokespecial findNextViewToFocus : ()Landroid/view/View;
    //   190: astore_1
    //   191: aload_1
    //   192: ifnull -> 50
    //   195: aload_0
    //   196: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   199: getfield mFocusedSubChildId : I
    //   202: i2l
    //   203: ldc2_w -1
    //   206: lcmp
    //   207: ifeq -> 249
    //   210: aload_1
    //   211: aload_0
    //   212: getfield mState : Landroid/support/v7/widget/RecyclerView$State;
    //   215: getfield mFocusedSubChildId : I
    //   218: invokevirtual findViewById : (I)Landroid/view/View;
    //   221: astore_2
    //   222: aload_2
    //   223: ifnull -> 249
    //   226: aload_2
    //   227: invokevirtual isFocusable : ()Z
    //   230: ifeq -> 249
    //   233: aload_2
    //   234: astore_1
    //   235: aload_1
    //   236: invokevirtual requestFocus : ()Z
    //   239: pop
    //   240: return
    //   241: aload_1
    //   242: getfield itemView : Landroid/view/View;
    //   245: astore_1
    //   246: goto -> 191
    //   249: goto -> 235
    //   252: aconst_null
    //   253: astore_1
    //   254: goto -> 146
  }
  
  private void releaseGlows() {
    boolean bool2 = false;
    if (this.mLeftGlow != null)
      bool2 = this.mLeftGlow.onRelease(); 
    boolean bool1 = bool2;
    if (this.mTopGlow != null)
      bool1 = bool2 | this.mTopGlow.onRelease(); 
    bool2 = bool1;
    if (this.mRightGlow != null)
      bool2 = bool1 | this.mRightGlow.onRelease(); 
    bool1 = bool2;
    if (this.mBottomGlow != null)
      bool1 = bool2 | this.mBottomGlow.onRelease(); 
    if (bool1)
      ViewCompat.postInvalidateOnAnimation((View)this); 
  }
  
  private void requestChildOnScreen(@NonNull View paramView1, @Nullable View paramView2) {
    boolean bool1;
    View view;
    boolean bool2 = true;
    if (paramView2 != null) {
      view = paramView2;
    } else {
      view = paramView1;
    } 
    this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
    if (layoutParams instanceof RecyclerView$LayoutParams) {
      RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)layoutParams;
      if (!recyclerView$LayoutParams.mInsetsDirty) {
        Rect rect1 = recyclerView$LayoutParams.mDecorInsets;
        Rect rect2 = this.mTempRect;
        rect2.left -= rect1.left;
        rect2 = this.mTempRect;
        rect2.right += rect1.right;
        rect2 = this.mTempRect;
        rect2.top -= rect1.top;
        rect2 = this.mTempRect;
        int i = rect2.bottom;
        rect1.bottom += i;
      } 
    } 
    if (paramView2 != null) {
      offsetDescendantRectToMyCoords(paramView2, this.mTempRect);
      offsetRectIntoDescendantCoords(paramView1, this.mTempRect);
    } 
    RecyclerView$LayoutManager recyclerView$LayoutManager = this.mLayout;
    Rect rect = this.mTempRect;
    if (!this.mFirstLayoutComplete) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (paramView2 != null)
      bool2 = false; 
    recyclerView$LayoutManager.requestChildRectangleOnScreen(this, paramView1, rect, bool1, bool2);
  }
  
  private void resetFocusInfo() {
    this.mState.mFocusedItemId = -1L;
    this.mState.mFocusedItemPosition = -1;
    this.mState.mFocusedSubChildId = -1;
  }
  
  private void resetTouch() {
    if (this.mVelocityTracker != null)
      this.mVelocityTracker.clear(); 
    stopNestedScroll();
    releaseGlows();
  }
  
  private void saveFocusInfo() {
    int i;
    long l;
    RecyclerView$ViewHolder recyclerView$ViewHolder;
    if (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) {
      recyclerView$ViewHolder = (RecyclerView$ViewHolder)getFocusedChild();
    } else {
      recyclerView$ViewHolder = null;
    } 
    if (recyclerView$ViewHolder == null) {
      recyclerView$ViewHolder = null;
    } else {
      recyclerView$ViewHolder = findContainingViewHolder((View)recyclerView$ViewHolder);
    } 
    if (recyclerView$ViewHolder == null) {
      resetFocusInfo();
      return;
    } 
    RecyclerView$State recyclerView$State = this.mState;
    if (this.mAdapter.hasStableIds()) {
      l = recyclerView$ViewHolder.getItemId();
    } else {
      l = -1L;
    } 
    recyclerView$State.mFocusedItemId = l;
    recyclerView$State = this.mState;
    if (this.mDataSetHasChangedAfterLayout) {
      i = -1;
    } else if (recyclerView$ViewHolder.isRemoved()) {
      i = recyclerView$ViewHolder.mOldPosition;
    } else {
      i = recyclerView$ViewHolder.getAdapterPosition();
    } 
    recyclerView$State.mFocusedItemPosition = i;
    this.mState.mFocusedSubChildId = getDeepestFocusedViewWithId(recyclerView$ViewHolder.itemView);
  }
  
  private void setAdapterInternal(RecyclerView$Adapter paramRecyclerView$Adapter, boolean paramBoolean1, boolean paramBoolean2) {
    if (this.mAdapter != null) {
      this.mAdapter.unregisterAdapterDataObserver(this.mObserver);
      this.mAdapter.onDetachedFromRecyclerView(this);
    } 
    if (!paramBoolean1 || paramBoolean2)
      removeAndRecycleViews(); 
    this.mAdapterHelper.reset();
    RecyclerView$Adapter recyclerView$Adapter = this.mAdapter;
    this.mAdapter = paramRecyclerView$Adapter;
    if (paramRecyclerView$Adapter != null) {
      paramRecyclerView$Adapter.registerAdapterDataObserver(this.mObserver);
      paramRecyclerView$Adapter.onAttachedToRecyclerView(this);
    } 
    if (this.mLayout != null)
      this.mLayout.onAdapterChanged(recyclerView$Adapter, this.mAdapter); 
    this.mRecycler.onAdapterChanged(recyclerView$Adapter, this.mAdapter, paramBoolean1);
    this.mState.mStructureChanged = true;
    markKnownViewsInvalid();
  }
  
  private void stopScrollersInternal() {
    this.mViewFlinger.stop();
    if (this.mLayout != null)
      this.mLayout.stopSmoothScroller(); 
  }
  
  void absorbGlows(int paramInt1, int paramInt2) {
    if (paramInt1 < 0) {
      ensureLeftGlow();
      this.mLeftGlow.onAbsorb(-paramInt1);
    } else if (paramInt1 > 0) {
      ensureRightGlow();
      this.mRightGlow.onAbsorb(paramInt1);
    } 
    if (paramInt2 < 0) {
      ensureTopGlow();
      this.mTopGlow.onAbsorb(-paramInt2);
    } else if (paramInt2 > 0) {
      ensureBottomGlow();
      this.mBottomGlow.onAbsorb(paramInt2);
    } 
    if (paramInt1 != 0 || paramInt2 != 0)
      ViewCompat.postInvalidateOnAnimation((View)this); 
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2) {
    if (this.mLayout == null || !this.mLayout.onAddFocusables(this, paramArrayList, paramInt1, paramInt2))
      super.addFocusables(paramArrayList, paramInt1, paramInt2); 
  }
  
  public void addItemDecoration(RecyclerView$ItemDecoration paramRecyclerView$ItemDecoration) {
    addItemDecoration(paramRecyclerView$ItemDecoration, -1);
  }
  
  public void addItemDecoration(RecyclerView$ItemDecoration paramRecyclerView$ItemDecoration, int paramInt) {
    if (this.mLayout != null)
      this.mLayout.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout"); 
    if (this.mItemDecorations.isEmpty())
      setWillNotDraw(false); 
    if (paramInt < 0) {
      this.mItemDecorations.add(paramRecyclerView$ItemDecoration);
    } else {
      this.mItemDecorations.add(paramInt, paramRecyclerView$ItemDecoration);
    } 
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  public void addOnChildAttachStateChangeListener(RecyclerView$OnChildAttachStateChangeListener paramRecyclerView$OnChildAttachStateChangeListener) {
    if (this.mOnChildAttachStateListeners == null)
      this.mOnChildAttachStateListeners = new ArrayList<RecyclerView$OnChildAttachStateChangeListener>(); 
    this.mOnChildAttachStateListeners.add(paramRecyclerView$OnChildAttachStateChangeListener);
  }
  
  public void addOnItemTouchListener(RecyclerView$OnItemTouchListener paramRecyclerView$OnItemTouchListener) {
    this.mOnItemTouchListeners.add(paramRecyclerView$OnItemTouchListener);
  }
  
  public void addOnScrollListener(RecyclerView$OnScrollListener paramRecyclerView$OnScrollListener) {
    if (this.mScrollListeners == null)
      this.mScrollListeners = new ArrayList<RecyclerView$OnScrollListener>(); 
    this.mScrollListeners.add(paramRecyclerView$OnScrollListener);
  }
  
  void animateAppearance(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    paramRecyclerView$ViewHolder.setIsRecyclable(false);
    if (this.mItemAnimator.animateAppearance(paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo1, paramRecyclerView$ItemAnimator$ItemHolderInfo2))
      postAnimationRunner(); 
  }
  
  void animateDisappearance(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2) {
    addAnimatingView(paramRecyclerView$ViewHolder);
    paramRecyclerView$ViewHolder.setIsRecyclable(false);
    if (this.mItemAnimator.animateDisappearance(paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo1, paramRecyclerView$ItemAnimator$ItemHolderInfo2))
      postAnimationRunner(); 
  }
  
  void assertInLayoutOrScroll(String paramString) {
    if (!isComputingLayout()) {
      if (paramString == null)
        throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling"); 
      throw new IllegalStateException(paramString);
    } 
  }
  
  void assertNotInLayoutOrScroll(String paramString) {
    if (isComputingLayout()) {
      if (paramString == null)
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling"); 
      throw new IllegalStateException(paramString);
    } 
    if (this.mDispatchScrollCounter > 0)
      Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("")); 
  }
  
  boolean canReuseUpdatedViewHolder(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return (this.mItemAnimator == null || this.mItemAnimator.canReuseUpdatedViewHolder(paramRecyclerView$ViewHolder, paramRecyclerView$ViewHolder.getUnmodifiedPayloads()));
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams instanceof RecyclerView$LayoutParams && this.mLayout.checkLayoutParams((RecyclerView$LayoutParams)paramLayoutParams));
  }
  
  void clearOldPositions() {
    int j = this.mChildHelper.getUnfilteredChildCount();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
      if (!recyclerView$ViewHolder.shouldIgnore())
        recyclerView$ViewHolder.clearOldPosition(); 
    } 
    this.mRecycler.clearOldPositions();
  }
  
  public void clearOnChildAttachStateChangeListeners() {
    if (this.mOnChildAttachStateListeners != null)
      this.mOnChildAttachStateListeners.clear(); 
  }
  
  public void clearOnScrollListeners() {
    if (this.mScrollListeners != null)
      this.mScrollListeners.clear(); 
  }
  
  public int computeHorizontalScrollExtent() {
    return (this.mLayout != null && this.mLayout.canScrollHorizontally()) ? this.mLayout.computeHorizontalScrollExtent(this.mState) : 0;
  }
  
  public int computeHorizontalScrollOffset() {
    return (this.mLayout != null && this.mLayout.canScrollHorizontally()) ? this.mLayout.computeHorizontalScrollOffset(this.mState) : 0;
  }
  
  public int computeHorizontalScrollRange() {
    return (this.mLayout != null && this.mLayout.canScrollHorizontally()) ? this.mLayout.computeHorizontalScrollRange(this.mState) : 0;
  }
  
  public int computeVerticalScrollExtent() {
    return (this.mLayout != null && this.mLayout.canScrollVertically()) ? this.mLayout.computeVerticalScrollExtent(this.mState) : 0;
  }
  
  public int computeVerticalScrollOffset() {
    return (this.mLayout != null && this.mLayout.canScrollVertically()) ? this.mLayout.computeVerticalScrollOffset(this.mState) : 0;
  }
  
  public int computeVerticalScrollRange() {
    return (this.mLayout != null && this.mLayout.canScrollVertically()) ? this.mLayout.computeVerticalScrollRange(this.mState) : 0;
  }
  
  void considerReleasingGlowsOnScroll(int paramInt1, int paramInt2) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.mLeftGlow != null) {
      bool1 = bool2;
      if (!this.mLeftGlow.isFinished()) {
        bool1 = bool2;
        if (paramInt1 > 0)
          bool1 = this.mLeftGlow.onRelease(); 
      } 
    } 
    bool2 = bool1;
    if (this.mRightGlow != null) {
      bool2 = bool1;
      if (!this.mRightGlow.isFinished()) {
        bool2 = bool1;
        if (paramInt1 < 0)
          bool2 = bool1 | this.mRightGlow.onRelease(); 
      } 
    } 
    bool1 = bool2;
    if (this.mTopGlow != null) {
      bool1 = bool2;
      if (!this.mTopGlow.isFinished()) {
        bool1 = bool2;
        if (paramInt2 > 0)
          bool1 = bool2 | this.mTopGlow.onRelease(); 
      } 
    } 
    bool2 = bool1;
    if (this.mBottomGlow != null) {
      bool2 = bool1;
      if (!this.mBottomGlow.isFinished()) {
        bool2 = bool1;
        if (paramInt2 < 0)
          bool2 = bool1 | this.mBottomGlow.onRelease(); 
      } 
    } 
    if (bool2)
      ViewCompat.postInvalidateOnAnimation((View)this); 
  }
  
  void consumePendingUpdateOperations() {
    if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
      TraceCompat.beginSection("RV FullInvalidate");
      dispatchLayout();
      TraceCompat.endSection();
      return;
    } 
    if (this.mAdapterHelper.hasPendingUpdates()) {
      if (this.mAdapterHelper.hasAnyUpdateTypes(4) && !this.mAdapterHelper.hasAnyUpdateTypes(11)) {
        TraceCompat.beginSection("RV PartialInvalidate");
        eatRequestLayout();
        onEnterLayoutOrScroll();
        this.mAdapterHelper.preProcess();
        if (!this.mLayoutRequestEaten)
          if (hasUpdatedView()) {
            dispatchLayout();
          } else {
            this.mAdapterHelper.consumePostponedUpdates();
          }  
        resumeRequestLayout(true);
        onExitLayoutOrScroll();
        TraceCompat.endSection();
        return;
      } 
      if (this.mAdapterHelper.hasPendingUpdates()) {
        TraceCompat.beginSection("RV FullInvalidate");
        dispatchLayout();
        TraceCompat.endSection();
        return;
      } 
    } 
  }
  
  void defaultOnMeasure(int paramInt1, int paramInt2) {
    setMeasuredDimension(RecyclerView$LayoutManager.chooseSize(paramInt1, getPaddingLeft() + getPaddingRight(), ViewCompat.getMinimumWidth((View)this)), RecyclerView$LayoutManager.chooseSize(paramInt2, getPaddingTop() + getPaddingBottom(), ViewCompat.getMinimumHeight((View)this)));
  }
  
  void dispatchChildAttached(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(paramView);
    onChildAttachedToWindow(paramView);
    if (this.mAdapter != null && recyclerView$ViewHolder != null)
      this.mAdapter.onViewAttachedToWindow(recyclerView$ViewHolder); 
    if (this.mOnChildAttachStateListeners != null)
      for (int i = this.mOnChildAttachStateListeners.size() - 1; i >= 0; i--)
        ((RecyclerView$OnChildAttachStateChangeListener)this.mOnChildAttachStateListeners.get(i)).onChildViewAttachedToWindow(paramView);  
  }
  
  void dispatchChildDetached(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(paramView);
    onChildDetachedFromWindow(paramView);
    if (this.mAdapter != null && recyclerView$ViewHolder != null)
      this.mAdapter.onViewDetachedFromWindow(recyclerView$ViewHolder); 
    if (this.mOnChildAttachStateListeners != null)
      for (int i = this.mOnChildAttachStateListeners.size() - 1; i >= 0; i--)
        ((RecyclerView$OnChildAttachStateChangeListener)this.mOnChildAttachStateListeners.get(i)).onChildViewDetachedFromWindow(paramView);  
  }
  
  void dispatchLayout() {
    if (this.mAdapter == null) {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    } 
    if (this.mLayout == null) {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    } 
    this.mState.mIsMeasuring = false;
    if (this.mState.mLayoutStep == 1) {
      dispatchLayoutStep1();
      this.mLayout.setExactMeasureSpecsFrom(this);
      dispatchLayoutStep2();
    } else if (this.mAdapterHelper.hasUpdates() || this.mLayout.getWidth() != getWidth() || this.mLayout.getHeight() != getHeight()) {
      this.mLayout.setExactMeasureSpecsFrom(this);
      dispatchLayoutStep2();
    } else {
      this.mLayout.setExactMeasureSpecsFrom(this);
    } 
    dispatchLayoutStep3();
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean) {
    return getScrollingChildHelper().dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2) {
    return getScrollingChildHelper().dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfint1, int[] paramArrayOfint2) {
    return getScrollingChildHelper().dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfint1, paramArrayOfint2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint) {
    return getScrollingChildHelper().dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfint);
  }
  
  void dispatchOnScrollStateChanged(int paramInt) {
    if (this.mLayout != null)
      this.mLayout.onScrollStateChanged(paramInt); 
    onScrollStateChanged(paramInt);
    if (this.mScrollListener != null)
      this.mScrollListener.onScrollStateChanged(this, paramInt); 
    if (this.mScrollListeners != null)
      for (int i = this.mScrollListeners.size() - 1; i >= 0; i--)
        ((RecyclerView$OnScrollListener)this.mScrollListeners.get(i)).onScrollStateChanged(this, paramInt);  
  }
  
  void dispatchOnScrolled(int paramInt1, int paramInt2) {
    this.mDispatchScrollCounter++;
    int i = getScrollX();
    int j = getScrollY();
    onScrollChanged(i, j, i, j);
    onScrolled(paramInt1, paramInt2);
    if (this.mScrollListener != null)
      this.mScrollListener.onScrolled(this, paramInt1, paramInt2); 
    if (this.mScrollListeners != null)
      for (i = this.mScrollListeners.size() - 1; i >= 0; i--)
        ((RecyclerView$OnScrollListener)this.mScrollListeners.get(i)).onScrolled(this, paramInt1, paramInt2);  
    this.mDispatchScrollCounter--;
  }
  
  void dispatchPendingImportantForAccessibilityChanges() {
    for (int i = this.mPendingAccessibilityImportanceChange.size() - 1; i >= 0; i--) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mPendingAccessibilityImportanceChange.get(i);
      if (recyclerView$ViewHolder.itemView.getParent() == this && !recyclerView$ViewHolder.shouldIgnore()) {
        int j = recyclerView$ViewHolder.mPendingAccessibilityState;
        if (j != -1) {
          ViewCompat.setImportantForAccessibility(recyclerView$ViewHolder.itemView, j);
          recyclerView$ViewHolder.mPendingAccessibilityState = -1;
        } 
      } 
    } 
    this.mPendingAccessibilityImportanceChange.clear();
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray) {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray) {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas) {
    boolean bool1 = true;
    boolean bool2 = false;
    super.draw(paramCanvas);
    int j = this.mItemDecorations.size();
    int i;
    for (i = 0; i < j; i++)
      ((RecyclerView$ItemDecoration)this.mItemDecorations.get(i)).onDrawOver(paramCanvas, this, this.mState); 
    if (this.mLeftGlow != null && !this.mLeftGlow.isFinished()) {
      int k = paramCanvas.save();
      if (this.mClipToPadding) {
        i = getPaddingBottom();
      } else {
        i = 0;
      } 
      paramCanvas.rotate(270.0F);
      paramCanvas.translate((i + -getHeight()), 0.0F);
      if (this.mLeftGlow != null && this.mLeftGlow.draw(paramCanvas)) {
        j = 1;
      } else {
        j = 0;
      } 
      paramCanvas.restoreToCount(k);
    } else {
      j = 0;
    } 
    i = j;
    if (this.mTopGlow != null) {
      i = j;
      if (!this.mTopGlow.isFinished()) {
        int k = paramCanvas.save();
        if (this.mClipToPadding)
          paramCanvas.translate(getPaddingLeft(), getPaddingTop()); 
        if (this.mTopGlow != null && this.mTopGlow.draw(paramCanvas)) {
          i = 1;
        } else {
          i = 0;
        } 
        i = j | i;
        paramCanvas.restoreToCount(k);
      } 
    } 
    j = i;
    if (this.mRightGlow != null) {
      j = i;
      if (!this.mRightGlow.isFinished()) {
        int k = paramCanvas.save();
        int m = getWidth();
        if (this.mClipToPadding) {
          j = getPaddingTop();
        } else {
          j = 0;
        } 
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-j, -m);
        if (this.mRightGlow != null && this.mRightGlow.draw(paramCanvas)) {
          j = 1;
        } else {
          j = 0;
        } 
        j = i | j;
        paramCanvas.restoreToCount(k);
      } 
    } 
    i = j;
    if (this.mBottomGlow != null) {
      i = j;
      if (!this.mBottomGlow.isFinished()) {
        int k = paramCanvas.save();
        paramCanvas.rotate(180.0F);
        if (this.mClipToPadding) {
          paramCanvas.translate((-getWidth() + getPaddingRight()), (-getHeight() + getPaddingBottom()));
        } else {
          paramCanvas.translate(-getWidth(), -getHeight());
        } 
        i = bool2;
        if (this.mBottomGlow != null) {
          i = bool2;
          if (this.mBottomGlow.draw(paramCanvas))
            i = 1; 
        } 
        i = j | i;
        paramCanvas.restoreToCount(k);
      } 
    } 
    if (i == 0 && this.mItemAnimator != null && this.mItemDecorations.size() > 0 && this.mItemAnimator.isRunning())
      i = bool1; 
    if (i != 0)
      ViewCompat.postInvalidateOnAnimation((View)this); 
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong) {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  void eatRequestLayout() {
    this.mEatRequestLayout++;
    if (this.mEatRequestLayout == 1 && !this.mLayoutFrozen)
      this.mLayoutRequestEaten = false; 
  }
  
  void ensureBottomGlow() {
    if (this.mBottomGlow != null)
      return; 
    this.mBottomGlow = new EdgeEffectCompat(getContext());
    if (this.mClipToPadding) {
      this.mBottomGlow.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    } 
    this.mBottomGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void ensureLeftGlow() {
    if (this.mLeftGlow != null)
      return; 
    this.mLeftGlow = new EdgeEffectCompat(getContext());
    if (this.mClipToPadding) {
      this.mLeftGlow.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    } 
    this.mLeftGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ensureRightGlow() {
    if (this.mRightGlow != null)
      return; 
    this.mRightGlow = new EdgeEffectCompat(getContext());
    if (this.mClipToPadding) {
      this.mRightGlow.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    } 
    this.mRightGlow.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ensureTopGlow() {
    if (this.mTopGlow != null)
      return; 
    this.mTopGlow = new EdgeEffectCompat(getContext());
    if (this.mClipToPadding) {
      this.mTopGlow.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    } 
    this.mTopGlow.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public View findChildViewUnder(float paramFloat1, float paramFloat2) {
    int i;
    for (i = this.mChildHelper.getChildCount() - 1; i >= 0; i--) {
      View view = this.mChildHelper.getChildAt(i);
      float f1 = ViewCompat.getTranslationX(view);
      float f2 = ViewCompat.getTranslationY(view);
      if (paramFloat1 >= view.getLeft() + f1 && paramFloat1 <= f1 + view.getRight() && paramFloat2 >= view.getTop() + f2 && paramFloat2 <= view.getBottom() + f2)
        return view; 
    } 
    return null;
  }
  
  @Nullable
  public View findContainingItemView(View paramView) {
    ViewParent viewParent;
    for (viewParent = paramView.getParent(); viewParent != null && viewParent != this && viewParent instanceof View; viewParent = paramView.getParent())
      paramView = (View)viewParent; 
    return (viewParent == this) ? paramView : null;
  }
  
  @Nullable
  public RecyclerView$ViewHolder findContainingViewHolder(View paramView) {
    paramView = findContainingItemView(paramView);
    return (paramView == null) ? null : getChildViewHolder(paramView);
  }
  
  public RecyclerView$ViewHolder findViewHolderForAdapterPosition(int paramInt) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = null;
    if (!this.mDataSetHasChangedAfterLayout) {
      int j = this.mChildHelper.getUnfilteredChildCount();
      int i = 0;
      recyclerView$ViewHolder = null;
      while (i < j) {
        RecyclerView$ViewHolder recyclerView$ViewHolder1 = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
        if (recyclerView$ViewHolder1 != null && !recyclerView$ViewHolder1.isRemoved() && getAdapterPositionFor(recyclerView$ViewHolder1) == paramInt) {
          recyclerView$ViewHolder = recyclerView$ViewHolder1;
          if (this.mChildHelper.isHidden(recyclerView$ViewHolder1.itemView)) {
            recyclerView$ViewHolder = recyclerView$ViewHolder1;
          } else {
            return recyclerView$ViewHolder;
          } 
        } 
        i++;
      } 
      return recyclerView$ViewHolder;
    } 
    return recyclerView$ViewHolder;
  }
  
  public RecyclerView$ViewHolder findViewHolderForItemId(long paramLong) {
    RecyclerView$ViewHolder recyclerView$ViewHolder2 = null;
    RecyclerView$ViewHolder recyclerView$ViewHolder1 = recyclerView$ViewHolder2;
    if (this.mAdapter != null) {
      if (!this.mAdapter.hasStableIds())
        return recyclerView$ViewHolder2; 
    } else {
      return recyclerView$ViewHolder1;
    } 
    int j = this.mChildHelper.getUnfilteredChildCount();
    int i = 0;
    recyclerView$ViewHolder1 = null;
    while (i < j) {
      recyclerView$ViewHolder2 = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
      if (recyclerView$ViewHolder2 != null && !recyclerView$ViewHolder2.isRemoved() && recyclerView$ViewHolder2.getItemId() == paramLong) {
        recyclerView$ViewHolder1 = recyclerView$ViewHolder2;
        if (this.mChildHelper.isHidden(recyclerView$ViewHolder2.itemView)) {
          recyclerView$ViewHolder1 = recyclerView$ViewHolder2;
        } else {
          return recyclerView$ViewHolder1;
        } 
      } 
      i++;
    } 
    return recyclerView$ViewHolder1;
  }
  
  public RecyclerView$ViewHolder findViewHolderForLayoutPosition(int paramInt) {
    return findViewHolderForPosition(paramInt, false);
  }
  
  @Deprecated
  public RecyclerView$ViewHolder findViewHolderForPosition(int paramInt) {
    return findViewHolderForPosition(paramInt, false);
  }
  
  RecyclerView$ViewHolder findViewHolderForPosition(int paramInt, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mChildHelper : Landroid/support/v7/widget/ChildHelper;
    //   4: invokevirtual getUnfilteredChildCount : ()I
    //   7: istore #4
    //   9: iconst_0
    //   10: istore_3
    //   11: aconst_null
    //   12: astore #5
    //   14: iload_3
    //   15: iload #4
    //   17: if_icmpge -> 121
    //   20: aload_0
    //   21: getfield mChildHelper : Landroid/support/v7/widget/ChildHelper;
    //   24: iload_3
    //   25: invokevirtual getUnfilteredChildAt : (I)Landroid/view/View;
    //   28: invokestatic getChildViewHolderInt : (Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    //   31: astore #6
    //   33: aload #5
    //   35: astore #7
    //   37: aload #6
    //   39: ifnull -> 71
    //   42: aload #5
    //   44: astore #7
    //   46: aload #6
    //   48: invokevirtual isRemoved : ()Z
    //   51: ifne -> 71
    //   54: iload_2
    //   55: ifeq -> 82
    //   58: aload #6
    //   60: getfield mPosition : I
    //   63: iload_1
    //   64: if_icmpeq -> 95
    //   67: aload #5
    //   69: astore #7
    //   71: iload_3
    //   72: iconst_1
    //   73: iadd
    //   74: istore_3
    //   75: aload #7
    //   77: astore #5
    //   79: goto -> 14
    //   82: aload #5
    //   84: astore #7
    //   86: aload #6
    //   88: invokevirtual getLayoutPosition : ()I
    //   91: iload_1
    //   92: if_icmpne -> 71
    //   95: aload #6
    //   97: astore #5
    //   99: aload_0
    //   100: getfield mChildHelper : Landroid/support/v7/widget/ChildHelper;
    //   103: aload #6
    //   105: getfield itemView : Landroid/view/View;
    //   108: invokevirtual isHidden : (Landroid/view/View;)Z
    //   111: ifeq -> 121
    //   114: aload #6
    //   116: astore #7
    //   118: goto -> 71
    //   121: aload #5
    //   123: areturn
  }
  
  public boolean fling(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   4: ifnonnull -> 18
    //   7: ldc 'RecyclerView'
    //   9: ldc_w 'Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.'
    //   12: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   15: pop
    //   16: iconst_0
    //   17: ireturn
    //   18: aload_0
    //   19: getfield mLayoutFrozen : Z
    //   22: ifne -> 16
    //   25: aload_0
    //   26: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   29: invokevirtual canScrollHorizontally : ()Z
    //   32: istore #4
    //   34: aload_0
    //   35: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   38: invokevirtual canScrollVertically : ()Z
    //   41: istore #5
    //   43: iload #4
    //   45: ifeq -> 61
    //   48: iload_1
    //   49: istore_3
    //   50: iload_1
    //   51: invokestatic abs : (I)I
    //   54: aload_0
    //   55: getfield mMinFlingVelocity : I
    //   58: if_icmpge -> 63
    //   61: iconst_0
    //   62: istore_3
    //   63: iload #5
    //   65: ifeq -> 81
    //   68: iload_2
    //   69: istore_1
    //   70: iload_2
    //   71: invokestatic abs : (I)I
    //   74: aload_0
    //   75: getfield mMinFlingVelocity : I
    //   78: if_icmpge -> 83
    //   81: iconst_0
    //   82: istore_1
    //   83: iload_3
    //   84: ifne -> 91
    //   87: iload_1
    //   88: ifeq -> 16
    //   91: aload_0
    //   92: iload_3
    //   93: i2f
    //   94: iload_1
    //   95: i2f
    //   96: invokevirtual dispatchNestedPreFling : (FF)Z
    //   99: ifne -> 16
    //   102: iload #4
    //   104: ifne -> 112
    //   107: iload #5
    //   109: ifeq -> 147
    //   112: iconst_1
    //   113: istore #4
    //   115: aload_0
    //   116: iload_3
    //   117: i2f
    //   118: iload_1
    //   119: i2f
    //   120: iload #4
    //   122: invokevirtual dispatchNestedFling : (FFZ)Z
    //   125: pop
    //   126: aload_0
    //   127: getfield mOnFlingListener : Landroid/support/v7/widget/RecyclerView$OnFlingListener;
    //   130: ifnull -> 153
    //   133: aload_0
    //   134: getfield mOnFlingListener : Landroid/support/v7/widget/RecyclerView$OnFlingListener;
    //   137: iload_3
    //   138: iload_1
    //   139: invokevirtual onFling : (II)Z
    //   142: ifeq -> 153
    //   145: iconst_1
    //   146: ireturn
    //   147: iconst_0
    //   148: istore #4
    //   150: goto -> 115
    //   153: iload #4
    //   155: ifeq -> 16
    //   158: aload_0
    //   159: getfield mMaxFlingVelocity : I
    //   162: ineg
    //   163: iload_3
    //   164: aload_0
    //   165: getfield mMaxFlingVelocity : I
    //   168: invokestatic min : (II)I
    //   171: invokestatic max : (II)I
    //   174: istore_2
    //   175: aload_0
    //   176: getfield mMaxFlingVelocity : I
    //   179: ineg
    //   180: iload_1
    //   181: aload_0
    //   182: getfield mMaxFlingVelocity : I
    //   185: invokestatic min : (II)I
    //   188: invokestatic max : (II)I
    //   191: istore_1
    //   192: aload_0
    //   193: getfield mViewFlinger : Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    //   196: iload_2
    //   197: iload_1
    //   198: invokevirtual fling : (II)V
    //   201: iconst_1
    //   202: ireturn
  }
  
  public View focusSearch(View paramView, int paramInt) {
    byte b1;
    View view1;
    byte b2 = 1;
    View view2 = this.mLayout.onInterceptFocusSearch(paramView, paramInt);
    if (view2 != null)
      return view2; 
    if (this.mAdapter != null && this.mLayout != null && !isComputingLayout() && !this.mLayoutFrozen) {
      b1 = 1;
    } else {
      b1 = 0;
    } 
    FocusFinder focusFinder = FocusFinder.getInstance();
    if (b1 && (paramInt == 2 || paramInt == 1)) {
      if (this.mLayout.canScrollVertically()) {
        byte b;
        if (paramInt == 2) {
          b = 130;
        } else {
          b = 33;
        } 
        if (focusFinder.findNextFocus(this, paramView, b) == null) {
          b1 = 1;
        } else {
          b1 = 0;
        } 
        if (FORCE_ABS_FOCUS_SEARCH_DIRECTION)
          paramInt = b; 
      } else {
        b1 = 0;
      } 
      if (!b1 && this.mLayout.canScrollHorizontally()) {
        byte b;
        if (this.mLayout.getLayoutDirection() == 1) {
          b1 = 1;
        } else {
          b1 = 0;
        } 
        if (paramInt == 2) {
          b = 1;
        } else {
          b = 0;
        } 
        if ((b ^ b1) != 0) {
          b1 = 66;
        } else {
          b1 = 17;
        } 
        if (focusFinder.findNextFocus(this, paramView, b1) == null) {
          b = b2;
        } else {
          b = 0;
        } 
        b2 = b;
        if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
          paramInt = b1;
          b2 = b;
        } 
      } else {
        b2 = b1;
      } 
      if (b2 != 0) {
        consumePendingUpdateOperations();
        if (findContainingItemView(paramView) == null)
          return null; 
        eatRequestLayout();
        this.mLayout.onFocusSearchFailed(paramView, paramInt, this.mRecycler, this.mState);
        resumeRequestLayout(false);
      } 
      view1 = focusFinder.findNextFocus(this, paramView, paramInt);
    } else {
      view1 = view1.findNextFocus(this, paramView, paramInt);
      if (view1 == null && b1 != 0) {
        consumePendingUpdateOperations();
        if (findContainingItemView(paramView) == null)
          return null; 
        eatRequestLayout();
        view1 = this.mLayout.onFocusSearchFailed(paramView, paramInt, this.mRecycler, this.mState);
        resumeRequestLayout(false);
      } 
    } 
    if (view1 != null && !view1.hasFocusable()) {
      if (getFocusedChild() == null)
        return super.focusSearch(paramView, paramInt); 
      requestChildOnScreen(view1, (View)null);
      return paramView;
    } 
    if (!isPreferredNextFocus(paramView, view1, paramInt))
      view1 = super.focusSearch(paramView, paramInt); 
    return view1;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
    if (this.mLayout == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager"); 
    return (ViewGroup.LayoutParams)this.mLayout.generateDefaultLayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    if (this.mLayout == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager"); 
    return (ViewGroup.LayoutParams)this.mLayout.generateLayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    if (this.mLayout == null)
      throw new IllegalStateException("RecyclerView has no LayoutManager"); 
    return (ViewGroup.LayoutParams)this.mLayout.generateLayoutParams(paramLayoutParams);
  }
  
  public RecyclerView$Adapter getAdapter() {
    return this.mAdapter;
  }
  
  int getAdapterPositionFor(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return (paramRecyclerView$ViewHolder.hasAnyOfTheFlags(524) || !paramRecyclerView$ViewHolder.isBound()) ? -1 : this.mAdapterHelper.applyPendingUpdatesToPosition(paramRecyclerView$ViewHolder.mPosition);
  }
  
  public int getBaseline() {
    return (this.mLayout != null) ? this.mLayout.getBaseline() : super.getBaseline();
  }
  
  long getChangedHolderKey(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return this.mAdapter.hasStableIds() ? paramRecyclerView$ViewHolder.getItemId() : paramRecyclerView$ViewHolder.mPosition;
  }
  
  public int getChildAdapterPosition(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(paramView);
    return (recyclerView$ViewHolder != null) ? recyclerView$ViewHolder.getAdapterPosition() : -1;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2) {
    return (this.mChildDrawingOrderCallback == null) ? super.getChildDrawingOrder(paramInt1, paramInt2) : this.mChildDrawingOrderCallback.onGetChildDrawingOrder(paramInt1, paramInt2);
  }
  
  public long getChildItemId(View paramView) {
    if (this.mAdapter != null && this.mAdapter.hasStableIds()) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(paramView);
      if (recyclerView$ViewHolder != null)
        return recyclerView$ViewHolder.getItemId(); 
    } 
    return -1L;
  }
  
  public int getChildLayoutPosition(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(paramView);
    return (recyclerView$ViewHolder != null) ? recyclerView$ViewHolder.getLayoutPosition() : -1;
  }
  
  @Deprecated
  public int getChildPosition(View paramView) {
    return getChildAdapterPosition(paramView);
  }
  
  public RecyclerView$ViewHolder getChildViewHolder(View paramView) {
    ViewParent viewParent = paramView.getParent();
    if (viewParent != null && viewParent != this)
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this); 
    return getChildViewHolderInt(paramView);
  }
  
  public boolean getClipToPadding() {
    return this.mClipToPadding;
  }
  
  public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
    return this.mAccessibilityDelegate;
  }
  
  public void getDecoratedBoundsWithMargins(View paramView, Rect paramRect) {
    getDecoratedBoundsWithMarginsInt(paramView, paramRect);
  }
  
  public RecyclerView$ItemAnimator getItemAnimator() {
    return this.mItemAnimator;
  }
  
  Rect getItemDecorInsetsForChild(View paramView) {
    RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)paramView.getLayoutParams();
    if (!recyclerView$LayoutParams.mInsetsDirty)
      return recyclerView$LayoutParams.mDecorInsets; 
    if (this.mState.isPreLayout() && (recyclerView$LayoutParams.isItemChanged() || recyclerView$LayoutParams.isViewInvalid()))
      return recyclerView$LayoutParams.mDecorInsets; 
    Rect rect = recyclerView$LayoutParams.mDecorInsets;
    rect.set(0, 0, 0, 0);
    int j = this.mItemDecorations.size();
    for (int i = 0; i < j; i++) {
      this.mTempRect.set(0, 0, 0, 0);
      ((RecyclerView$ItemDecoration)this.mItemDecorations.get(i)).getItemOffsets(this.mTempRect, paramView, this, this.mState);
      rect.left += this.mTempRect.left;
      rect.top += this.mTempRect.top;
      rect.right += this.mTempRect.right;
      rect.bottom += this.mTempRect.bottom;
    } 
    recyclerView$LayoutParams.mInsetsDirty = false;
    return rect;
  }
  
  public RecyclerView$LayoutManager getLayoutManager() {
    return this.mLayout;
  }
  
  public int getMaxFlingVelocity() {
    return this.mMaxFlingVelocity;
  }
  
  public int getMinFlingVelocity() {
    return this.mMinFlingVelocity;
  }
  
  long getNanoTime() {
    return ALLOW_THREAD_GAP_WORK ? System.nanoTime() : 0L;
  }
  
  @Nullable
  public RecyclerView$OnFlingListener getOnFlingListener() {
    return this.mOnFlingListener;
  }
  
  public boolean getPreserveFocusAfterLayout() {
    return this.mPreserveFocusAfterLayout;
  }
  
  public RecyclerView$RecycledViewPool getRecycledViewPool() {
    return this.mRecycler.getRecycledViewPool();
  }
  
  public int getScrollState() {
    return this.mScrollState;
  }
  
  public boolean hasFixedSize() {
    return this.mHasFixedSize;
  }
  
  public boolean hasNestedScrollingParent() {
    return getScrollingChildHelper().hasNestedScrollingParent();
  }
  
  public boolean hasPendingAdapterUpdates() {
    return (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.hasPendingUpdates());
  }
  
  void initAdapterManager() {
    this.mAdapterHelper = new AdapterHelper(new RecyclerView$6(this));
  }
  
  void invalidateGlows() {
    this.mBottomGlow = null;
    this.mTopGlow = null;
    this.mRightGlow = null;
    this.mLeftGlow = null;
  }
  
  public void invalidateItemDecorations() {
    if (this.mItemDecorations.size() == 0)
      return; 
    if (this.mLayout != null)
      this.mLayout.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout"); 
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  boolean isAccessibilityEnabled() {
    return (this.mAccessibilityManager != null && this.mAccessibilityManager.isEnabled());
  }
  
  public boolean isAnimating() {
    return (this.mItemAnimator != null && this.mItemAnimator.isRunning());
  }
  
  public boolean isAttachedToWindow() {
    return this.mIsAttached;
  }
  
  public boolean isComputingLayout() {
    return (this.mLayoutOrScrollCounter > 0);
  }
  
  public boolean isLayoutFrozen() {
    return this.mLayoutFrozen;
  }
  
  public boolean isNestedScrollingEnabled() {
    return getScrollingChildHelper().isNestedScrollingEnabled();
  }
  
  void jumpToPositionForSmoothScroller(int paramInt) {
    if (this.mLayout == null)
      return; 
    this.mLayout.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  void markItemDecorInsetsDirty() {
    int j = this.mChildHelper.getUnfilteredChildCount();
    for (int i = 0; i < j; i++)
      ((RecyclerView$LayoutParams)this.mChildHelper.getUnfilteredChildAt(i).getLayoutParams()).mInsetsDirty = true; 
    this.mRecycler.markItemDecorInsetsDirty();
  }
  
  void markKnownViewsInvalid() {
    int j = this.mChildHelper.getUnfilteredChildCount();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
      if (recyclerView$ViewHolder != null && !recyclerView$ViewHolder.shouldIgnore())
        recyclerView$ViewHolder.addFlags(6); 
    } 
    markItemDecorInsetsDirty();
    this.mRecycler.markKnownViewsInvalid();
  }
  
  public void offsetChildrenHorizontal(int paramInt) {
    int j = this.mChildHelper.getChildCount();
    for (int i = 0; i < j; i++)
      this.mChildHelper.getChildAt(i).offsetLeftAndRight(paramInt); 
  }
  
  public void offsetChildrenVertical(int paramInt) {
    int j = this.mChildHelper.getChildCount();
    for (int i = 0; i < j; i++)
      this.mChildHelper.getChildAt(i).offsetTopAndBottom(paramInt); 
  }
  
  void offsetPositionRecordsForInsert(int paramInt1, int paramInt2) {
    int j = this.mChildHelper.getUnfilteredChildCount();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
      if (recyclerView$ViewHolder != null && !recyclerView$ViewHolder.shouldIgnore() && recyclerView$ViewHolder.mPosition >= paramInt1) {
        recyclerView$ViewHolder.offsetPosition(paramInt2, false);
        this.mState.mStructureChanged = true;
      } 
    } 
    this.mRecycler.offsetPositionRecordsForInsert(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForMove(int paramInt1, int paramInt2) {
    boolean bool;
    int i;
    int j;
    int m = this.mChildHelper.getUnfilteredChildCount();
    if (paramInt1 < paramInt2) {
      bool = true;
      i = paramInt2;
      j = paramInt1;
    } else {
      bool = true;
      i = paramInt1;
      j = paramInt2;
    } 
    for (int k = 0; k < m; k++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(k));
      if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.mPosition >= j && recyclerView$ViewHolder.mPosition <= i) {
        if (recyclerView$ViewHolder.mPosition == paramInt1) {
          recyclerView$ViewHolder.offsetPosition(paramInt2 - paramInt1, false);
        } else {
          recyclerView$ViewHolder.offsetPosition(bool, false);
        } 
        this.mState.mStructureChanged = true;
      } 
    } 
    this.mRecycler.offsetPositionRecordsForMove(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForRemove(int paramInt1, int paramInt2, boolean paramBoolean) {
    int j = this.mChildHelper.getUnfilteredChildCount();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
      if (recyclerView$ViewHolder != null && !recyclerView$ViewHolder.shouldIgnore())
        if (recyclerView$ViewHolder.mPosition >= paramInt1 + paramInt2) {
          recyclerView$ViewHolder.offsetPosition(-paramInt2, paramBoolean);
          this.mState.mStructureChanged = true;
        } else if (recyclerView$ViewHolder.mPosition >= paramInt1) {
          recyclerView$ViewHolder.flagRemovedAndOffsetPosition(paramInt1 - 1, -paramInt2, paramBoolean);
          this.mState.mStructureChanged = true;
        }  
    } 
    this.mRecycler.offsetPositionRecordsForRemove(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  protected void onAttachedToWindow() {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: invokespecial onAttachedToWindow : ()V
    //   6: aload_0
    //   7: iconst_0
    //   8: putfield mLayoutOrScrollCounter : I
    //   11: aload_0
    //   12: iconst_1
    //   13: putfield mIsAttached : Z
    //   16: aload_0
    //   17: getfield mFirstLayoutComplete : Z
    //   20: ifeq -> 153
    //   23: aload_0
    //   24: invokevirtual isLayoutRequested : ()Z
    //   27: ifne -> 153
    //   30: aload_0
    //   31: iload_2
    //   32: putfield mFirstLayoutComplete : Z
    //   35: aload_0
    //   36: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   39: ifnull -> 50
    //   42: aload_0
    //   43: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   46: aload_0
    //   47: invokevirtual dispatchAttachedToWindow : (Landroid/support/v7/widget/RecyclerView;)V
    //   50: aload_0
    //   51: iconst_0
    //   52: putfield mPostedAnimatorRunner : Z
    //   55: getstatic android/support/v7/widget/RecyclerView.ALLOW_THREAD_GAP_WORK : Z
    //   58: ifeq -> 152
    //   61: aload_0
    //   62: getstatic android/support/v7/widget/GapWorker.sGapWorker : Ljava/lang/ThreadLocal;
    //   65: invokevirtual get : ()Ljava/lang/Object;
    //   68: checkcast android/support/v7/widget/GapWorker
    //   71: putfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   74: aload_0
    //   75: getfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   78: ifnonnull -> 144
    //   81: aload_0
    //   82: new android/support/v7/widget/GapWorker
    //   85: dup
    //   86: invokespecial <init> : ()V
    //   89: putfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   92: aload_0
    //   93: invokestatic getDisplay : (Landroid/view/View;)Landroid/view/Display;
    //   96: astore_3
    //   97: aload_0
    //   98: invokevirtual isInEditMode : ()Z
    //   101: ifne -> 158
    //   104: aload_3
    //   105: ifnull -> 158
    //   108: aload_3
    //   109: invokevirtual getRefreshRate : ()F
    //   112: fstore_1
    //   113: fload_1
    //   114: ldc_w 30.0
    //   117: fcmpl
    //   118: iflt -> 158
    //   121: aload_0
    //   122: getfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   125: ldc_w 1.0E9
    //   128: fload_1
    //   129: fdiv
    //   130: f2l
    //   131: putfield mFrameIntervalNs : J
    //   134: getstatic android/support/v7/widget/GapWorker.sGapWorker : Ljava/lang/ThreadLocal;
    //   137: aload_0
    //   138: getfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   141: invokevirtual set : (Ljava/lang/Object;)V
    //   144: aload_0
    //   145: getfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   148: aload_0
    //   149: invokevirtual add : (Landroid/support/v7/widget/RecyclerView;)V
    //   152: return
    //   153: iconst_0
    //   154: istore_2
    //   155: goto -> 30
    //   158: ldc_w 60.0
    //   161: fstore_1
    //   162: goto -> 121
  }
  
  public void onChildAttachedToWindow(View paramView) {}
  
  public void onChildDetachedFromWindow(View paramView) {}
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.mItemAnimator != null)
      this.mItemAnimator.endAnimations(); 
    stopScroll();
    this.mIsAttached = false;
    if (this.mLayout != null)
      this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler); 
    this.mPendingAccessibilityImportanceChange.clear();
    removeCallbacks(this.mItemAnimatorRunner);
    this.mViewInfoStore.onDetach();
    if (ALLOW_THREAD_GAP_WORK) {
      this.mGapWorker.remove(this);
      this.mGapWorker = null;
    } 
  }
  
  public void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    int j = this.mItemDecorations.size();
    for (int i = 0; i < j; i++)
      ((RecyclerView$ItemDecoration)this.mItemDecorations.get(i)).onDraw(paramCanvas, this, this.mState); 
  }
  
  void onEnterLayoutOrScroll() {
    this.mLayoutOrScrollCounter++;
  }
  
  void onExitLayoutOrScroll() {
    this.mLayoutOrScrollCounter--;
    if (this.mLayoutOrScrollCounter < 1) {
      this.mLayoutOrScrollCounter = 0;
      dispatchContentChangedIfNecessary();
      dispatchPendingImportantForAccessibilityChanges();
    } 
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent) {
    if (this.mLayout != null && !this.mLayoutFrozen && (paramMotionEvent.getSource() & 0x2) != 0 && paramMotionEvent.getAction() == 8) {
      float f1;
      float f2;
      if (this.mLayout.canScrollVertically()) {
        f1 = -MotionEventCompat.getAxisValue(paramMotionEvent, 9);
      } else {
        f1 = 0.0F;
      } 
      if (this.mLayout.canScrollHorizontally()) {
        f2 = MotionEventCompat.getAxisValue(paramMotionEvent, 10);
      } else {
        f2 = 0.0F;
      } 
      if (f1 != 0.0F || f2 != 0.0F) {
        float f = getScrollFactor();
        scrollByInternal((int)(f2 * f), (int)(f1 * f), paramMotionEvent);
        return false;
      } 
    } 
    return false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: iconst_m1
    //   1: istore #4
    //   3: iconst_1
    //   4: istore #7
    //   6: aload_0
    //   7: getfield mLayoutFrozen : Z
    //   10: ifeq -> 15
    //   13: iconst_0
    //   14: ireturn
    //   15: aload_0
    //   16: aload_1
    //   17: invokespecial dispatchOnItemTouchIntercept : (Landroid/view/MotionEvent;)Z
    //   20: ifeq -> 29
    //   23: aload_0
    //   24: invokespecial cancelTouch : ()V
    //   27: iconst_1
    //   28: ireturn
    //   29: aload_0
    //   30: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   33: ifnull -> 13
    //   36: aload_0
    //   37: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   40: invokevirtual canScrollHorizontally : ()Z
    //   43: istore #8
    //   45: aload_0
    //   46: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   49: invokevirtual canScrollVertically : ()Z
    //   52: istore #9
    //   54: aload_0
    //   55: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   58: ifnonnull -> 68
    //   61: aload_0
    //   62: invokestatic obtain : ()Landroid/view/VelocityTracker;
    //   65: putfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   68: aload_0
    //   69: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   72: aload_1
    //   73: invokevirtual addMovement : (Landroid/view/MotionEvent;)V
    //   76: aload_1
    //   77: invokestatic getActionMasked : (Landroid/view/MotionEvent;)I
    //   80: istore_3
    //   81: aload_1
    //   82: invokestatic getActionIndex : (Landroid/view/MotionEvent;)I
    //   85: istore_2
    //   86: iload_3
    //   87: tableswitch default -> 128, 0 -> 139, 1 -> 542, 2 -> 320, 3 -> 556, 4 -> 128, 5 -> 266, 6 -> 534
    //   128: aload_0
    //   129: getfield mScrollState : I
    //   132: iconst_1
    //   133: if_icmpne -> 563
    //   136: iload #7
    //   138: ireturn
    //   139: aload_0
    //   140: getfield mIgnoreMotionEventTillDown : Z
    //   143: ifeq -> 151
    //   146: aload_0
    //   147: iconst_0
    //   148: putfield mIgnoreMotionEventTillDown : Z
    //   151: aload_0
    //   152: aload_1
    //   153: iconst_0
    //   154: invokevirtual getPointerId : (I)I
    //   157: putfield mScrollPointerId : I
    //   160: aload_1
    //   161: invokevirtual getX : ()F
    //   164: ldc_w 0.5
    //   167: fadd
    //   168: f2i
    //   169: istore_2
    //   170: aload_0
    //   171: iload_2
    //   172: putfield mLastTouchX : I
    //   175: aload_0
    //   176: iload_2
    //   177: putfield mInitialTouchX : I
    //   180: aload_1
    //   181: invokevirtual getY : ()F
    //   184: ldc_w 0.5
    //   187: fadd
    //   188: f2i
    //   189: istore_2
    //   190: aload_0
    //   191: iload_2
    //   192: putfield mLastTouchY : I
    //   195: aload_0
    //   196: iload_2
    //   197: putfield mInitialTouchY : I
    //   200: aload_0
    //   201: getfield mScrollState : I
    //   204: iconst_2
    //   205: if_icmpne -> 223
    //   208: aload_0
    //   209: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   212: iconst_1
    //   213: invokeinterface requestDisallowInterceptTouchEvent : (Z)V
    //   218: aload_0
    //   219: iconst_1
    //   220: invokevirtual setScrollState : (I)V
    //   223: aload_0
    //   224: getfield mNestedOffsets : [I
    //   227: astore_1
    //   228: aload_0
    //   229: getfield mNestedOffsets : [I
    //   232: iconst_1
    //   233: iconst_0
    //   234: iastore
    //   235: aload_1
    //   236: iconst_0
    //   237: iconst_0
    //   238: iastore
    //   239: iload #8
    //   241: ifeq -> 574
    //   244: iconst_1
    //   245: istore_2
    //   246: iload_2
    //   247: istore_3
    //   248: iload #9
    //   250: ifeq -> 257
    //   253: iload_2
    //   254: iconst_2
    //   255: ior
    //   256: istore_3
    //   257: aload_0
    //   258: iload_3
    //   259: invokevirtual startNestedScroll : (I)Z
    //   262: pop
    //   263: goto -> 128
    //   266: aload_0
    //   267: aload_1
    //   268: iload_2
    //   269: invokevirtual getPointerId : (I)I
    //   272: putfield mScrollPointerId : I
    //   275: aload_1
    //   276: iload_2
    //   277: invokevirtual getX : (I)F
    //   280: ldc_w 0.5
    //   283: fadd
    //   284: f2i
    //   285: istore_3
    //   286: aload_0
    //   287: iload_3
    //   288: putfield mLastTouchX : I
    //   291: aload_0
    //   292: iload_3
    //   293: putfield mInitialTouchX : I
    //   296: aload_1
    //   297: iload_2
    //   298: invokevirtual getY : (I)F
    //   301: ldc_w 0.5
    //   304: fadd
    //   305: f2i
    //   306: istore_2
    //   307: aload_0
    //   308: iload_2
    //   309: putfield mLastTouchY : I
    //   312: aload_0
    //   313: iload_2
    //   314: putfield mInitialTouchY : I
    //   317: goto -> 128
    //   320: aload_1
    //   321: aload_0
    //   322: getfield mScrollPointerId : I
    //   325: invokevirtual findPointerIndex : (I)I
    //   328: istore_3
    //   329: iload_3
    //   330: ifge -> 370
    //   333: ldc 'RecyclerView'
    //   335: new java/lang/StringBuilder
    //   338: dup
    //   339: invokespecial <init> : ()V
    //   342: ldc_w 'Error processing scroll; pointer index for id '
    //   345: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: aload_0
    //   349: getfield mScrollPointerId : I
    //   352: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   355: ldc_w ' not found. Did any MotionEvents get skipped?'
    //   358: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: invokevirtual toString : ()Ljava/lang/String;
    //   364: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   367: pop
    //   368: iconst_0
    //   369: ireturn
    //   370: aload_1
    //   371: iload_3
    //   372: invokevirtual getX : (I)F
    //   375: ldc_w 0.5
    //   378: fadd
    //   379: f2i
    //   380: istore_2
    //   381: aload_1
    //   382: iload_3
    //   383: invokevirtual getY : (I)F
    //   386: ldc_w 0.5
    //   389: fadd
    //   390: f2i
    //   391: istore_3
    //   392: aload_0
    //   393: getfield mScrollState : I
    //   396: iconst_1
    //   397: if_icmpeq -> 128
    //   400: iload_2
    //   401: aload_0
    //   402: getfield mInitialTouchX : I
    //   405: isub
    //   406: istore_2
    //   407: iload_3
    //   408: aload_0
    //   409: getfield mInitialTouchY : I
    //   412: isub
    //   413: istore #5
    //   415: iload #8
    //   417: ifeq -> 569
    //   420: iload_2
    //   421: invokestatic abs : (I)I
    //   424: aload_0
    //   425: getfield mTouchSlop : I
    //   428: if_icmple -> 569
    //   431: aload_0
    //   432: getfield mInitialTouchX : I
    //   435: istore_3
    //   436: aload_0
    //   437: getfield mTouchSlop : I
    //   440: istore #6
    //   442: iload_2
    //   443: ifge -> 524
    //   446: iconst_m1
    //   447: istore_2
    //   448: aload_0
    //   449: iload_2
    //   450: iload #6
    //   452: imul
    //   453: iload_3
    //   454: iadd
    //   455: putfield mLastTouchX : I
    //   458: iconst_1
    //   459: istore_2
    //   460: iload_2
    //   461: istore_3
    //   462: iload #9
    //   464: ifeq -> 512
    //   467: iload_2
    //   468: istore_3
    //   469: iload #5
    //   471: invokestatic abs : (I)I
    //   474: aload_0
    //   475: getfield mTouchSlop : I
    //   478: if_icmple -> 512
    //   481: aload_0
    //   482: getfield mInitialTouchY : I
    //   485: istore_3
    //   486: aload_0
    //   487: getfield mTouchSlop : I
    //   490: istore #6
    //   492: iload #5
    //   494: ifge -> 529
    //   497: iload #4
    //   499: istore_2
    //   500: aload_0
    //   501: iload_3
    //   502: iload_2
    //   503: iload #6
    //   505: imul
    //   506: iadd
    //   507: putfield mLastTouchY : I
    //   510: iconst_1
    //   511: istore_3
    //   512: iload_3
    //   513: ifeq -> 128
    //   516: aload_0
    //   517: iconst_1
    //   518: invokevirtual setScrollState : (I)V
    //   521: goto -> 128
    //   524: iconst_1
    //   525: istore_2
    //   526: goto -> 448
    //   529: iconst_1
    //   530: istore_2
    //   531: goto -> 500
    //   534: aload_0
    //   535: aload_1
    //   536: invokespecial onPointerUp : (Landroid/view/MotionEvent;)V
    //   539: goto -> 128
    //   542: aload_0
    //   543: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   546: invokevirtual clear : ()V
    //   549: aload_0
    //   550: invokevirtual stopNestedScroll : ()V
    //   553: goto -> 128
    //   556: aload_0
    //   557: invokespecial cancelTouch : ()V
    //   560: goto -> 128
    //   563: iconst_0
    //   564: istore #7
    //   566: goto -> 136
    //   569: iconst_0
    //   570: istore_2
    //   571: goto -> 460
    //   574: iconst_0
    //   575: istore_2
    //   576: goto -> 246
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    TraceCompat.beginSection("RV OnLayout");
    dispatchLayout();
    TraceCompat.endSection();
    this.mFirstLayoutComplete = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    boolean bool = false;
    if (this.mLayout == null) {
      defaultOnMeasure(paramInt1, paramInt2);
      return;
    } 
    if (this.mLayout.mAutoMeasure) {
      int i = View.MeasureSpec.getMode(paramInt1);
      int j = View.MeasureSpec.getMode(paramInt2);
      boolean bool1 = bool;
      if (i == 1073741824) {
        bool1 = bool;
        if (j == 1073741824)
          bool1 = true; 
      } 
      this.mLayout.onMeasure(this.mRecycler, this.mState, paramInt1, paramInt2);
      if (!bool1 && this.mAdapter != null) {
        if (this.mState.mLayoutStep == 1)
          dispatchLayoutStep1(); 
        this.mLayout.setMeasureSpecs(paramInt1, paramInt2);
        this.mState.mIsMeasuring = true;
        dispatchLayoutStep2();
        this.mLayout.setMeasuredDimensionFromChildren(paramInt1, paramInt2);
        if (this.mLayout.shouldMeasureTwice()) {
          this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
          this.mState.mIsMeasuring = true;
          dispatchLayoutStep2();
          this.mLayout.setMeasuredDimensionFromChildren(paramInt1, paramInt2);
          return;
        } 
      } 
      return;
    } 
    if (this.mHasFixedSize) {
      this.mLayout.onMeasure(this.mRecycler, this.mState, paramInt1, paramInt2);
      return;
    } 
    if (this.mAdapterUpdateDuringMeasure) {
      eatRequestLayout();
      onEnterLayoutOrScroll();
      processAdapterUpdatesAndSetAnimationFlags();
      onExitLayoutOrScroll();
      if (this.mState.mRunPredictiveAnimations) {
        this.mState.mInPreLayout = true;
      } else {
        this.mAdapterHelper.consumeUpdatesInOnePass();
        this.mState.mInPreLayout = false;
      } 
      this.mAdapterUpdateDuringMeasure = false;
      resumeRequestLayout(false);
    } 
    if (this.mAdapter != null) {
      this.mState.mItemCount = this.mAdapter.getItemCount();
    } else {
      this.mState.mItemCount = 0;
    } 
    eatRequestLayout();
    this.mLayout.onMeasure(this.mRecycler, this.mState, paramInt1, paramInt2);
    resumeRequestLayout(false);
    this.mState.mInPreLayout = false;
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect) {
    return isComputingLayout() ? false : super.onRequestFocusInDescendants(paramInt, paramRect);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof RecyclerView$SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    this.mPendingSavedState = (RecyclerView$SavedState)paramParcelable;
    super.onRestoreInstanceState(this.mPendingSavedState.getSuperState());
    if (this.mLayout != null && this.mPendingSavedState.mLayoutState != null) {
      this.mLayout.onRestoreInstanceState(this.mPendingSavedState.mLayoutState);
      return;
    } 
  }
  
  protected Parcelable onSaveInstanceState() {
    RecyclerView$SavedState recyclerView$SavedState = new RecyclerView$SavedState(super.onSaveInstanceState());
    if (this.mPendingSavedState != null) {
      recyclerView$SavedState.copyFrom(this.mPendingSavedState);
      return (Parcelable)recyclerView$SavedState;
    } 
    if (this.mLayout != null) {
      recyclerView$SavedState.mLayoutState = this.mLayout.onSaveInstanceState();
      return (Parcelable)recyclerView$SavedState;
    } 
    recyclerView$SavedState.mLayoutState = null;
    return (Parcelable)recyclerView$SavedState;
  }
  
  public void onScrollStateChanged(int paramInt) {}
  
  public void onScrolled(int paramInt1, int paramInt2) {}
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3 || paramInt2 != paramInt4)
      invalidateGlows(); 
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #10
    //   3: aload_0
    //   4: getfield mLayoutFrozen : Z
    //   7: ifne -> 17
    //   10: aload_0
    //   11: getfield mIgnoreMotionEventTillDown : Z
    //   14: ifeq -> 19
    //   17: iconst_0
    //   18: ireturn
    //   19: aload_0
    //   20: aload_1
    //   21: invokespecial dispatchOnItemTouch : (Landroid/view/MotionEvent;)Z
    //   24: ifeq -> 33
    //   27: aload_0
    //   28: invokespecial cancelTouch : ()V
    //   31: iconst_1
    //   32: ireturn
    //   33: aload_0
    //   34: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   37: ifnull -> 17
    //   40: aload_0
    //   41: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   44: invokevirtual canScrollHorizontally : ()Z
    //   47: istore #13
    //   49: aload_0
    //   50: getfield mLayout : Landroid/support/v7/widget/RecyclerView$LayoutManager;
    //   53: invokevirtual canScrollVertically : ()Z
    //   56: istore #14
    //   58: aload_0
    //   59: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   62: ifnonnull -> 72
    //   65: aload_0
    //   66: invokestatic obtain : ()Landroid/view/VelocityTracker;
    //   69: putfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   72: aload_1
    //   73: invokestatic obtain : (Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    //   76: astore #15
    //   78: aload_1
    //   79: invokestatic getActionMasked : (Landroid/view/MotionEvent;)I
    //   82: istore #6
    //   84: aload_1
    //   85: invokestatic getActionIndex : (Landroid/view/MotionEvent;)I
    //   88: istore #5
    //   90: iload #6
    //   92: ifne -> 113
    //   95: aload_0
    //   96: getfield mNestedOffsets : [I
    //   99: astore #16
    //   101: aload_0
    //   102: getfield mNestedOffsets : [I
    //   105: iconst_1
    //   106: iconst_0
    //   107: iastore
    //   108: aload #16
    //   110: iconst_0
    //   111: iconst_0
    //   112: iastore
    //   113: aload #15
    //   115: aload_0
    //   116: getfield mNestedOffsets : [I
    //   119: iconst_0
    //   120: iaload
    //   121: i2f
    //   122: aload_0
    //   123: getfield mNestedOffsets : [I
    //   126: iconst_1
    //   127: iaload
    //   128: i2f
    //   129: invokevirtual offsetLocation : (FF)V
    //   132: iload #10
    //   134: istore #4
    //   136: iload #6
    //   138: tableswitch default -> 180, 0 -> 205, 1 -> 861, 2 -> 364, 3 -> 969, 4 -> 184, 5 -> 297, 6 -> 849
    //   180: iload #10
    //   182: istore #4
    //   184: iload #4
    //   186: ifne -> 198
    //   189: aload_0
    //   190: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   193: aload #15
    //   195: invokevirtual addMovement : (Landroid/view/MotionEvent;)V
    //   198: aload #15
    //   200: invokevirtual recycle : ()V
    //   203: iconst_1
    //   204: ireturn
    //   205: aload_0
    //   206: aload_1
    //   207: iconst_0
    //   208: invokevirtual getPointerId : (I)I
    //   211: putfield mScrollPointerId : I
    //   214: aload_1
    //   215: invokevirtual getX : ()F
    //   218: ldc_w 0.5
    //   221: fadd
    //   222: f2i
    //   223: istore #4
    //   225: aload_0
    //   226: iload #4
    //   228: putfield mLastTouchX : I
    //   231: aload_0
    //   232: iload #4
    //   234: putfield mInitialTouchX : I
    //   237: aload_1
    //   238: invokevirtual getY : ()F
    //   241: ldc_w 0.5
    //   244: fadd
    //   245: f2i
    //   246: istore #4
    //   248: aload_0
    //   249: iload #4
    //   251: putfield mLastTouchY : I
    //   254: aload_0
    //   255: iload #4
    //   257: putfield mInitialTouchY : I
    //   260: iload #13
    //   262: ifeq -> 986
    //   265: iconst_1
    //   266: istore #4
    //   268: iload #4
    //   270: istore #5
    //   272: iload #14
    //   274: ifeq -> 283
    //   277: iload #4
    //   279: iconst_2
    //   280: ior
    //   281: istore #5
    //   283: aload_0
    //   284: iload #5
    //   286: invokevirtual startNestedScroll : (I)Z
    //   289: pop
    //   290: iload #10
    //   292: istore #4
    //   294: goto -> 184
    //   297: aload_0
    //   298: aload_1
    //   299: iload #5
    //   301: invokevirtual getPointerId : (I)I
    //   304: putfield mScrollPointerId : I
    //   307: aload_1
    //   308: iload #5
    //   310: invokevirtual getX : (I)F
    //   313: ldc_w 0.5
    //   316: fadd
    //   317: f2i
    //   318: istore #4
    //   320: aload_0
    //   321: iload #4
    //   323: putfield mLastTouchX : I
    //   326: aload_0
    //   327: iload #4
    //   329: putfield mInitialTouchX : I
    //   332: aload_1
    //   333: iload #5
    //   335: invokevirtual getY : (I)F
    //   338: ldc_w 0.5
    //   341: fadd
    //   342: f2i
    //   343: istore #4
    //   345: aload_0
    //   346: iload #4
    //   348: putfield mLastTouchY : I
    //   351: aload_0
    //   352: iload #4
    //   354: putfield mInitialTouchY : I
    //   357: iload #10
    //   359: istore #4
    //   361: goto -> 184
    //   364: aload_1
    //   365: aload_0
    //   366: getfield mScrollPointerId : I
    //   369: invokevirtual findPointerIndex : (I)I
    //   372: istore #4
    //   374: iload #4
    //   376: ifge -> 416
    //   379: ldc 'RecyclerView'
    //   381: new java/lang/StringBuilder
    //   384: dup
    //   385: invokespecial <init> : ()V
    //   388: ldc_w 'Error processing scroll; pointer index for id '
    //   391: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   394: aload_0
    //   395: getfield mScrollPointerId : I
    //   398: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   401: ldc_w ' not found. Did any MotionEvents get skipped?'
    //   404: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: invokevirtual toString : ()Ljava/lang/String;
    //   410: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   413: pop
    //   414: iconst_0
    //   415: ireturn
    //   416: aload_1
    //   417: iload #4
    //   419: invokevirtual getX : (I)F
    //   422: ldc_w 0.5
    //   425: fadd
    //   426: f2i
    //   427: istore #11
    //   429: aload_1
    //   430: iload #4
    //   432: invokevirtual getY : (I)F
    //   435: ldc_w 0.5
    //   438: fadd
    //   439: f2i
    //   440: istore #12
    //   442: aload_0
    //   443: getfield mLastTouchX : I
    //   446: iload #11
    //   448: isub
    //   449: istore #7
    //   451: aload_0
    //   452: getfield mLastTouchY : I
    //   455: iload #12
    //   457: isub
    //   458: istore #6
    //   460: iload #6
    //   462: istore #4
    //   464: iload #7
    //   466: istore #5
    //   468: aload_0
    //   469: iload #7
    //   471: iload #6
    //   473: aload_0
    //   474: getfield mScrollConsumed : [I
    //   477: aload_0
    //   478: getfield mScrollOffset : [I
    //   481: invokevirtual dispatchNestedPreScroll : (II[I[I)Z
    //   484: ifeq -> 564
    //   487: iload #7
    //   489: aload_0
    //   490: getfield mScrollConsumed : [I
    //   493: iconst_0
    //   494: iaload
    //   495: isub
    //   496: istore #5
    //   498: iload #6
    //   500: aload_0
    //   501: getfield mScrollConsumed : [I
    //   504: iconst_1
    //   505: iaload
    //   506: isub
    //   507: istore #4
    //   509: aload #15
    //   511: aload_0
    //   512: getfield mScrollOffset : [I
    //   515: iconst_0
    //   516: iaload
    //   517: i2f
    //   518: aload_0
    //   519: getfield mScrollOffset : [I
    //   522: iconst_1
    //   523: iaload
    //   524: i2f
    //   525: invokevirtual offsetLocation : (FF)V
    //   528: aload_0
    //   529: getfield mNestedOffsets : [I
    //   532: astore_1
    //   533: aload_1
    //   534: iconst_0
    //   535: aload_1
    //   536: iconst_0
    //   537: iaload
    //   538: aload_0
    //   539: getfield mScrollOffset : [I
    //   542: iconst_0
    //   543: iaload
    //   544: iadd
    //   545: iastore
    //   546: aload_0
    //   547: getfield mNestedOffsets : [I
    //   550: astore_1
    //   551: aload_1
    //   552: iconst_1
    //   553: aload_1
    //   554: iconst_1
    //   555: iaload
    //   556: aload_0
    //   557: getfield mScrollOffset : [I
    //   560: iconst_1
    //   561: iaload
    //   562: iadd
    //   563: iastore
    //   564: iload #4
    //   566: istore #6
    //   568: iload #5
    //   570: istore #7
    //   572: aload_0
    //   573: getfield mScrollState : I
    //   576: iconst_1
    //   577: if_icmpeq -> 690
    //   580: iload #13
    //   582: ifeq -> 980
    //   585: iload #5
    //   587: invokestatic abs : (I)I
    //   590: aload_0
    //   591: getfield mTouchSlop : I
    //   594: if_icmple -> 980
    //   597: iload #5
    //   599: ifle -> 813
    //   602: iload #5
    //   604: aload_0
    //   605: getfield mTouchSlop : I
    //   608: isub
    //   609: istore #5
    //   611: iconst_1
    //   612: istore #6
    //   614: iload #4
    //   616: istore #8
    //   618: iload #6
    //   620: istore #9
    //   622: iload #14
    //   624: ifeq -> 664
    //   627: iload #4
    //   629: istore #8
    //   631: iload #6
    //   633: istore #9
    //   635: iload #4
    //   637: invokestatic abs : (I)I
    //   640: aload_0
    //   641: getfield mTouchSlop : I
    //   644: if_icmple -> 664
    //   647: iload #4
    //   649: ifle -> 825
    //   652: iload #4
    //   654: aload_0
    //   655: getfield mTouchSlop : I
    //   658: isub
    //   659: istore #8
    //   661: iconst_1
    //   662: istore #9
    //   664: iload #8
    //   666: istore #6
    //   668: iload #5
    //   670: istore #7
    //   672: iload #9
    //   674: ifeq -> 690
    //   677: aload_0
    //   678: iconst_1
    //   679: invokevirtual setScrollState : (I)V
    //   682: iload #5
    //   684: istore #7
    //   686: iload #8
    //   688: istore #6
    //   690: iload #10
    //   692: istore #4
    //   694: aload_0
    //   695: getfield mScrollState : I
    //   698: iconst_1
    //   699: if_icmpne -> 184
    //   702: aload_0
    //   703: iload #11
    //   705: aload_0
    //   706: getfield mScrollOffset : [I
    //   709: iconst_0
    //   710: iaload
    //   711: isub
    //   712: putfield mLastTouchX : I
    //   715: aload_0
    //   716: iload #12
    //   718: aload_0
    //   719: getfield mScrollOffset : [I
    //   722: iconst_1
    //   723: iaload
    //   724: isub
    //   725: putfield mLastTouchY : I
    //   728: iload #13
    //   730: ifeq -> 837
    //   733: iload #7
    //   735: istore #4
    //   737: iload #14
    //   739: ifeq -> 843
    //   742: iload #6
    //   744: istore #5
    //   746: aload_0
    //   747: iload #4
    //   749: iload #5
    //   751: aload #15
    //   753: invokevirtual scrollByInternal : (IILandroid/view/MotionEvent;)Z
    //   756: ifeq -> 769
    //   759: aload_0
    //   760: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   763: iconst_1
    //   764: invokeinterface requestDisallowInterceptTouchEvent : (Z)V
    //   769: iload #10
    //   771: istore #4
    //   773: aload_0
    //   774: getfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   777: ifnull -> 184
    //   780: iload #7
    //   782: ifne -> 794
    //   785: iload #10
    //   787: istore #4
    //   789: iload #6
    //   791: ifeq -> 184
    //   794: aload_0
    //   795: getfield mGapWorker : Landroid/support/v7/widget/GapWorker;
    //   798: aload_0
    //   799: iload #7
    //   801: iload #6
    //   803: invokevirtual postFromTraversal : (Landroid/support/v7/widget/RecyclerView;II)V
    //   806: iload #10
    //   808: istore #4
    //   810: goto -> 184
    //   813: iload #5
    //   815: aload_0
    //   816: getfield mTouchSlop : I
    //   819: iadd
    //   820: istore #5
    //   822: goto -> 611
    //   825: iload #4
    //   827: aload_0
    //   828: getfield mTouchSlop : I
    //   831: iadd
    //   832: istore #8
    //   834: goto -> 661
    //   837: iconst_0
    //   838: istore #4
    //   840: goto -> 737
    //   843: iconst_0
    //   844: istore #5
    //   846: goto -> 746
    //   849: aload_0
    //   850: aload_1
    //   851: invokespecial onPointerUp : (Landroid/view/MotionEvent;)V
    //   854: iload #10
    //   856: istore #4
    //   858: goto -> 184
    //   861: aload_0
    //   862: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   865: aload #15
    //   867: invokevirtual addMovement : (Landroid/view/MotionEvent;)V
    //   870: aload_0
    //   871: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   874: sipush #1000
    //   877: aload_0
    //   878: getfield mMaxFlingVelocity : I
    //   881: i2f
    //   882: invokevirtual computeCurrentVelocity : (IF)V
    //   885: iload #13
    //   887: ifeq -> 959
    //   890: aload_0
    //   891: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   894: aload_0
    //   895: getfield mScrollPointerId : I
    //   898: invokestatic getXVelocity : (Landroid/view/VelocityTracker;I)F
    //   901: fneg
    //   902: fstore_2
    //   903: iload #14
    //   905: ifeq -> 964
    //   908: aload_0
    //   909: getfield mVelocityTracker : Landroid/view/VelocityTracker;
    //   912: aload_0
    //   913: getfield mScrollPointerId : I
    //   916: invokestatic getYVelocity : (Landroid/view/VelocityTracker;I)F
    //   919: fneg
    //   920: fstore_3
    //   921: fload_2
    //   922: fconst_0
    //   923: fcmpl
    //   924: ifne -> 933
    //   927: fload_3
    //   928: fconst_0
    //   929: fcmpl
    //   930: ifeq -> 944
    //   933: aload_0
    //   934: fload_2
    //   935: f2i
    //   936: fload_3
    //   937: f2i
    //   938: invokevirtual fling : (II)Z
    //   941: ifne -> 949
    //   944: aload_0
    //   945: iconst_0
    //   946: invokevirtual setScrollState : (I)V
    //   949: aload_0
    //   950: invokespecial resetTouch : ()V
    //   953: iconst_1
    //   954: istore #4
    //   956: goto -> 184
    //   959: fconst_0
    //   960: fstore_2
    //   961: goto -> 903
    //   964: fconst_0
    //   965: fstore_3
    //   966: goto -> 921
    //   969: aload_0
    //   970: invokespecial cancelTouch : ()V
    //   973: iload #10
    //   975: istore #4
    //   977: goto -> 184
    //   980: iconst_0
    //   981: istore #6
    //   983: goto -> 614
    //   986: iconst_0
    //   987: istore #4
    //   989: goto -> 268
  }
  
  void postAnimationRunner() {
    if (!this.mPostedAnimatorRunner && this.mIsAttached) {
      ViewCompat.postOnAnimation((View)this, this.mItemAnimatorRunner);
      this.mPostedAnimatorRunner = true;
    } 
  }
  
  void recordAnimationInfoIfBouncedHiddenView(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo) {
    paramRecyclerView$ViewHolder.setFlags(0, 8192);
    if (this.mState.mTrackOldChangeHolders && paramRecyclerView$ViewHolder.isUpdated() && !paramRecyclerView$ViewHolder.isRemoved() && !paramRecyclerView$ViewHolder.shouldIgnore()) {
      long l = getChangedHolderKey(paramRecyclerView$ViewHolder);
      this.mViewInfoStore.addToOldChangeHolders(l, paramRecyclerView$ViewHolder);
    } 
    this.mViewInfoStore.addToPreLayout(paramRecyclerView$ViewHolder, paramRecyclerView$ItemAnimator$ItemHolderInfo);
  }
  
  void removeAndRecycleViews() {
    if (this.mItemAnimator != null)
      this.mItemAnimator.endAnimations(); 
    if (this.mLayout != null) {
      this.mLayout.removeAndRecycleAllViews(this.mRecycler);
      this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
    } 
    this.mRecycler.clear();
  }
  
  boolean removeAnimatingView(View paramView) {
    eatRequestLayout();
    boolean bool1 = this.mChildHelper.removeViewIfHidden(paramView);
    if (bool1) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(paramView);
      this.mRecycler.unscrapView(recyclerView$ViewHolder);
      this.mRecycler.recycleViewHolderInternal(recyclerView$ViewHolder);
    } 
    if (!bool1) {
      boolean bool2 = true;
      resumeRequestLayout(bool2);
      return bool1;
    } 
    boolean bool = false;
    resumeRequestLayout(bool);
    return bool1;
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder != null)
      if (recyclerView$ViewHolder.isTmpDetached()) {
        recyclerView$ViewHolder.clearTmpDetachFlag();
      } else if (!recyclerView$ViewHolder.shouldIgnore()) {
        throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + recyclerView$ViewHolder);
      }  
    dispatchChildDetached(paramView);
    super.removeDetachedView(paramView, paramBoolean);
  }
  
  public void removeItemDecoration(RecyclerView$ItemDecoration paramRecyclerView$ItemDecoration) {
    if (this.mLayout != null)
      this.mLayout.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout"); 
    this.mItemDecorations.remove(paramRecyclerView$ItemDecoration);
    if (this.mItemDecorations.isEmpty()) {
      boolean bool;
      if (getOverScrollMode() == 2) {
        bool = true;
      } else {
        bool = false;
      } 
      setWillNotDraw(bool);
    } 
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  public void removeOnChildAttachStateChangeListener(RecyclerView$OnChildAttachStateChangeListener paramRecyclerView$OnChildAttachStateChangeListener) {
    if (this.mOnChildAttachStateListeners == null)
      return; 
    this.mOnChildAttachStateListeners.remove(paramRecyclerView$OnChildAttachStateChangeListener);
  }
  
  public void removeOnItemTouchListener(RecyclerView$OnItemTouchListener paramRecyclerView$OnItemTouchListener) {
    this.mOnItemTouchListeners.remove(paramRecyclerView$OnItemTouchListener);
    if (this.mActiveOnItemTouchListener == paramRecyclerView$OnItemTouchListener)
      this.mActiveOnItemTouchListener = null; 
  }
  
  public void removeOnScrollListener(RecyclerView$OnScrollListener paramRecyclerView$OnScrollListener) {
    if (this.mScrollListeners != null)
      this.mScrollListeners.remove(paramRecyclerView$OnScrollListener); 
  }
  
  void repositionShadowingViews() {
    int j = this.mChildHelper.getChildCount();
    for (int i = 0; i < j; i++) {
      View view = this.mChildHelper.getChildAt(i);
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolder(view);
      if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.mShadowingHolder != null) {
        View view1 = recyclerView$ViewHolder.mShadowingHolder.itemView;
        int k = view.getLeft();
        int m = view.getTop();
        if (k != view1.getLeft() || m != view1.getTop())
          view1.layout(k, m, view1.getWidth() + k, view1.getHeight() + m); 
      } 
    } 
  }
  
  public void requestChildFocus(View paramView1, View paramView2) {
    if (!this.mLayout.onRequestChildFocus(this, this.mState, paramView1, paramView2) && paramView2 != null)
      requestChildOnScreen(paramView1, paramView2); 
    super.requestChildFocus(paramView1, paramView2);
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean) {
    return this.mLayout.requestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean) {
    int j = this.mOnItemTouchListeners.size();
    for (int i = 0; i < j; i++)
      ((RecyclerView$OnItemTouchListener)this.mOnItemTouchListeners.get(i)).onRequestDisallowInterceptTouchEvent(paramBoolean); 
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout() {
    if (this.mEatRequestLayout == 0 && !this.mLayoutFrozen) {
      super.requestLayout();
      return;
    } 
    this.mLayoutRequestEaten = true;
  }
  
  void resumeRequestLayout(boolean paramBoolean) {
    if (this.mEatRequestLayout < 1)
      this.mEatRequestLayout = 1; 
    if (!paramBoolean)
      this.mLayoutRequestEaten = false; 
    if (this.mEatRequestLayout == 1) {
      if (paramBoolean && this.mLayoutRequestEaten && !this.mLayoutFrozen && this.mLayout != null && this.mAdapter != null)
        dispatchLayout(); 
      if (!this.mLayoutFrozen)
        this.mLayoutRequestEaten = false; 
    } 
    this.mEatRequestLayout--;
  }
  
  void saveOldPositions() {
    int j = this.mChildHelper.getUnfilteredChildCount();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
      if (!recyclerView$ViewHolder.shouldIgnore())
        recyclerView$ViewHolder.saveOldPosition(); 
    } 
  }
  
  public void scrollBy(int paramInt1, int paramInt2) {
    if (this.mLayout == null) {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    } 
    if (!this.mLayoutFrozen) {
      boolean bool1 = this.mLayout.canScrollHorizontally();
      boolean bool2 = this.mLayout.canScrollVertically();
      if (bool1 || bool2) {
        if (!bool1)
          paramInt1 = 0; 
        if (!bool2)
          paramInt2 = 0; 
        scrollByInternal(paramInt1, paramInt2, (MotionEvent)null);
        return;
      } 
    } 
  }
  
  boolean scrollByInternal(int paramInt1, int paramInt2, MotionEvent paramMotionEvent) {
    int[] arrayOfInt;
    boolean bool1;
    boolean bool2;
    boolean bool3;
    boolean bool4;
    boolean bool5 = false;
    consumePendingUpdateOperations();
    if (this.mAdapter != null) {
      eatRequestLayout();
      onEnterLayoutOrScroll();
      TraceCompat.beginSection("RV Scroll");
      if (paramInt1 != 0) {
        bool2 = this.mLayout.scrollHorizontallyBy(paramInt1, this.mRecycler, this.mState);
        bool1 = paramInt1 - bool2;
      } else {
        bool2 = false;
        bool1 = false;
      } 
      if (paramInt2 != 0) {
        bool3 = this.mLayout.scrollVerticallyBy(paramInt2, this.mRecycler, this.mState);
        bool4 = paramInt2 - bool3;
      } else {
        bool3 = false;
        bool4 = false;
      } 
      TraceCompat.endSection();
      repositionShadowingViews();
      onExitLayoutOrScroll();
      resumeRequestLayout(false);
      boolean bool = bool3;
      bool3 = bool1;
      bool1 = bool;
    } else {
      bool1 = false;
      bool2 = false;
      bool4 = false;
      bool3 = false;
    } 
    if (!this.mItemDecorations.isEmpty())
      invalidate(); 
    if (dispatchNestedScroll(bool2, bool1, bool3, bool4, this.mScrollOffset)) {
      this.mLastTouchX -= this.mScrollOffset[0];
      this.mLastTouchY -= this.mScrollOffset[1];
      if (paramMotionEvent != null)
        paramMotionEvent.offsetLocation(this.mScrollOffset[0], this.mScrollOffset[1]); 
      arrayOfInt = this.mNestedOffsets;
      arrayOfInt[0] = arrayOfInt[0] + this.mScrollOffset[0];
      arrayOfInt = this.mNestedOffsets;
      arrayOfInt[1] = arrayOfInt[1] + this.mScrollOffset[1];
    } else if (getOverScrollMode() != 2) {
      if (arrayOfInt != null)
        pullGlows(arrayOfInt.getX(), bool3, arrayOfInt.getY(), bool4); 
      considerReleasingGlowsOnScroll(paramInt1, paramInt2);
    } 
    if (bool2 || bool1)
      dispatchOnScrolled(bool2, bool1); 
    if (!awakenScrollBars())
      invalidate(); 
    if (bool2 || bool1)
      bool5 = true; 
    return bool5;
  }
  
  public void scrollTo(int paramInt1, int paramInt2) {
    Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
  }
  
  public void scrollToPosition(int paramInt) {
    if (this.mLayoutFrozen)
      return; 
    stopScroll();
    if (this.mLayout == null) {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    } 
    this.mLayout.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent) {
    if (shouldDeferAccessibilityEvent(paramAccessibilityEvent))
      return; 
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate) {
    this.mAccessibilityDelegate = paramRecyclerViewAccessibilityDelegate;
    ViewCompat.setAccessibilityDelegate((View)this, this.mAccessibilityDelegate);
  }
  
  public void setAdapter(RecyclerView$Adapter paramRecyclerView$Adapter) {
    setLayoutFrozen(false);
    setAdapterInternal(paramRecyclerView$Adapter, false, true);
    requestLayout();
  }
  
  public void setChildDrawingOrderCallback(RecyclerView$ChildDrawingOrderCallback paramRecyclerView$ChildDrawingOrderCallback) {
    boolean bool;
    if (paramRecyclerView$ChildDrawingOrderCallback == this.mChildDrawingOrderCallback)
      return; 
    this.mChildDrawingOrderCallback = paramRecyclerView$ChildDrawingOrderCallback;
    if (this.mChildDrawingOrderCallback != null) {
      bool = true;
    } else {
      bool = false;
    } 
    setChildrenDrawingOrderEnabled(bool);
  }
  
  @VisibleForTesting
  boolean setChildImportantForAccessibilityInternal(RecyclerView$ViewHolder paramRecyclerView$ViewHolder, int paramInt) {
    if (isComputingLayout()) {
      paramRecyclerView$ViewHolder.mPendingAccessibilityState = paramInt;
      this.mPendingAccessibilityImportanceChange.add(paramRecyclerView$ViewHolder);
      return false;
    } 
    ViewCompat.setImportantForAccessibility(paramRecyclerView$ViewHolder.itemView, paramInt);
    return true;
  }
  
  public void setClipToPadding(boolean paramBoolean) {
    if (paramBoolean != this.mClipToPadding)
      invalidateGlows(); 
    this.mClipToPadding = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (this.mFirstLayoutComplete)
      requestLayout(); 
  }
  
  void setDataSetChangedAfterLayout() {
    if (this.mDataSetHasChangedAfterLayout)
      return; 
    this.mDataSetHasChangedAfterLayout = true;
    int j = this.mChildHelper.getUnfilteredChildCount();
    for (int i = 0; i < j; i++) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(this.mChildHelper.getUnfilteredChildAt(i));
      if (recyclerView$ViewHolder != null && !recyclerView$ViewHolder.shouldIgnore())
        recyclerView$ViewHolder.addFlags(512); 
    } 
    this.mRecycler.setAdapterPositionsAsUnknown();
    markKnownViewsInvalid();
  }
  
  public void setHasFixedSize(boolean paramBoolean) {
    this.mHasFixedSize = paramBoolean;
  }
  
  public void setItemAnimator(RecyclerView$ItemAnimator paramRecyclerView$ItemAnimator) {
    if (this.mItemAnimator != null) {
      this.mItemAnimator.endAnimations();
      this.mItemAnimator.setListener(null);
    } 
    this.mItemAnimator = paramRecyclerView$ItemAnimator;
    if (this.mItemAnimator != null)
      this.mItemAnimator.setListener(this.mItemAnimatorListener); 
  }
  
  public void setItemViewCacheSize(int paramInt) {
    this.mRecycler.setViewCacheSize(paramInt);
  }
  
  public void setLayoutFrozen(boolean paramBoolean) {
    if (paramBoolean != this.mLayoutFrozen) {
      assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
      if (!paramBoolean) {
        this.mLayoutFrozen = false;
        if (this.mLayoutRequestEaten && this.mLayout != null && this.mAdapter != null)
          requestLayout(); 
        this.mLayoutRequestEaten = false;
        return;
      } 
    } else {
      return;
    } 
    long l = SystemClock.uptimeMillis();
    onTouchEvent(MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0));
    this.mLayoutFrozen = true;
    this.mIgnoreMotionEventTillDown = true;
    stopScroll();
  }
  
  public void setLayoutManager(RecyclerView$LayoutManager paramRecyclerView$LayoutManager) {
    if (paramRecyclerView$LayoutManager == this.mLayout)
      return; 
    stopScroll();
    if (this.mLayout != null) {
      if (this.mItemAnimator != null)
        this.mItemAnimator.endAnimations(); 
      this.mLayout.removeAndRecycleAllViews(this.mRecycler);
      this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
      this.mRecycler.clear();
      if (this.mIsAttached)
        this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler); 
      this.mLayout.setRecyclerView(null);
      this.mLayout = null;
    } else {
      this.mRecycler.clear();
    } 
    this.mChildHelper.removeAllViewsUnfiltered();
    this.mLayout = paramRecyclerView$LayoutManager;
    if (paramRecyclerView$LayoutManager != null) {
      if (paramRecyclerView$LayoutManager.mRecyclerView != null)
        throw new IllegalArgumentException("LayoutManager " + paramRecyclerView$LayoutManager + " is already attached to a RecyclerView: " + paramRecyclerView$LayoutManager.mRecyclerView); 
      this.mLayout.setRecyclerView(this);
      if (this.mIsAttached)
        this.mLayout.dispatchAttachedToWindow(this); 
    } 
    this.mRecycler.updateViewCacheSize();
    requestLayout();
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean) {
    getScrollingChildHelper().setNestedScrollingEnabled(paramBoolean);
  }
  
  public void setOnFlingListener(@Nullable RecyclerView$OnFlingListener paramRecyclerView$OnFlingListener) {
    this.mOnFlingListener = paramRecyclerView$OnFlingListener;
  }
  
  @Deprecated
  public void setOnScrollListener(RecyclerView$OnScrollListener paramRecyclerView$OnScrollListener) {
    this.mScrollListener = paramRecyclerView$OnScrollListener;
  }
  
  public void setPreserveFocusAfterLayout(boolean paramBoolean) {
    this.mPreserveFocusAfterLayout = paramBoolean;
  }
  
  public void setRecycledViewPool(RecyclerView$RecycledViewPool paramRecyclerView$RecycledViewPool) {
    this.mRecycler.setRecycledViewPool(paramRecyclerView$RecycledViewPool);
  }
  
  public void setRecyclerListener(RecyclerView$RecyclerListener paramRecyclerView$RecyclerListener) {
    this.mRecyclerListener = paramRecyclerView$RecyclerListener;
  }
  
  void setScrollState(int paramInt) {
    if (paramInt == this.mScrollState)
      return; 
    this.mScrollState = paramInt;
    if (paramInt != 2)
      stopScrollersInternal(); 
    dispatchOnScrollStateChanged(paramInt);
  }
  
  public void setScrollingTouchSlop(int paramInt) {
    ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt) {
      default:
        Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
      case 0:
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        return;
      case 1:
        break;
    } 
    this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
  }
  
  public void setViewCacheExtension(RecyclerView$ViewCacheExtension paramRecyclerView$ViewCacheExtension) {
    this.mRecycler.setViewCacheExtension(paramRecyclerView$ViewCacheExtension);
  }
  
  boolean shouldDeferAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    boolean bool2 = false;
    boolean bool1 = false;
    if (isComputingLayout()) {
      boolean bool;
      if (paramAccessibilityEvent != null) {
        bool = AccessibilityEventCompat.getContentChangeTypes(paramAccessibilityEvent);
      } else {
        bool = false;
      } 
      if (!bool)
        bool = bool1; 
      this.mEatenAccessibilityChangeFlags = bool | this.mEatenAccessibilityChangeFlags;
      bool2 = true;
    } 
    return bool2;
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2) {
    smoothScrollBy(paramInt1, paramInt2, (Interpolator)null);
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, Interpolator paramInterpolator) {
    boolean bool = false;
    if (this.mLayout == null) {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    } 
    if (!this.mLayoutFrozen) {
      if (!this.mLayout.canScrollHorizontally())
        paramInt1 = 0; 
      if (!this.mLayout.canScrollVertically())
        paramInt2 = bool; 
      if (paramInt1 != 0 || paramInt2 != 0) {
        this.mViewFlinger.smoothScrollBy(paramInt1, paramInt2, paramInterpolator);
        return;
      } 
    } 
  }
  
  public void smoothScrollToPosition(int paramInt) {
    if (this.mLayoutFrozen)
      return; 
    if (this.mLayout == null) {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    } 
    this.mLayout.smoothScrollToPosition(this, this.mState, paramInt);
  }
  
  public boolean startNestedScroll(int paramInt) {
    return getScrollingChildHelper().startNestedScroll(paramInt);
  }
  
  public void stopNestedScroll() {
    getScrollingChildHelper().stopNestedScroll();
  }
  
  public void stopScroll() {
    setScrollState(0);
    stopScrollersInternal();
  }
  
  public void swapAdapter(RecyclerView$Adapter paramRecyclerView$Adapter, boolean paramBoolean) {
    setLayoutFrozen(false);
    setAdapterInternal(paramRecyclerView$Adapter, true, paramBoolean);
    setDataSetChangedAfterLayout();
    requestLayout();
  }
  
  void viewRangeUpdate(int paramInt1, int paramInt2, Object paramObject) {
    int j = this.mChildHelper.getUnfilteredChildCount();
    for (int i = 0; i < j; i++) {
      View view = this.mChildHelper.getUnfilteredChildAt(i);
      RecyclerView$ViewHolder recyclerView$ViewHolder = getChildViewHolderInt(view);
      if (recyclerView$ViewHolder != null && !recyclerView$ViewHolder.shouldIgnore() && recyclerView$ViewHolder.mPosition >= paramInt1 && recyclerView$ViewHolder.mPosition < paramInt1 + paramInt2) {
        recyclerView$ViewHolder.addFlags(2);
        recyclerView$ViewHolder.addChangePayload(paramObject);
        ((RecyclerView$LayoutParams)view.getLayoutParams()).mInsetsDirty = true;
      } 
    } 
    this.mRecycler.viewRangeUpdate(paramInt1, paramInt2);
  }
  
  static {
    boolean bool;
  }
  
  static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
  
  private static final boolean ALLOW_THREAD_GAP_WORK;
  
  private static final int[] CLIP_TO_PADDING_ATTR;
  
  static final boolean DEBUG = false;
  
  static final boolean DISPATCH_TEMP_DETACH = false;
  
  private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
  
  static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
  
  static final long FOREVER_NS = 9223372036854775807L;
  
  public static final int HORIZONTAL = 0;
  
  private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
  
  private static final int INVALID_POINTER = -1;
  
  public static final int INVALID_TYPE = -1;
  
  private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
  
  static final int MAX_SCROLL_DURATION = 2000;
  
  private static final int[] NESTED_SCROLLING_ATTRS = new int[] { 16843830 };
  
  public static final long NO_ID = -1L;
  
  public static final int NO_POSITION = -1;
  
  static final boolean POST_UPDATES_ON_ANIMATION;
  
  public static final int SCROLL_STATE_DRAGGING = 1;
  
  public static final int SCROLL_STATE_IDLE = 0;
  
  public static final int SCROLL_STATE_SETTLING = 2;
  
  static final String TAG = "RecyclerView";
  
  public static final int TOUCH_SLOP_DEFAULT = 0;
  
  public static final int TOUCH_SLOP_PAGING = 1;
  
  static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
  
  static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
  
  private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
  
  static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
  
  private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
  
  private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
  
  static final String TRACE_PREFETCH_TAG = "RV Prefetch";
  
  static final String TRACE_SCROLL_TAG = "RV Scroll";
  
  static final boolean VERBOSE_TRACING = false;
  
  public static final int VERTICAL = 1;
  
  static final Interpolator sQuinticInterpolator;
  
  RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
  
  private final AccessibilityManager mAccessibilityManager;
  
  private RecyclerView$OnItemTouchListener mActiveOnItemTouchListener;
  
  RecyclerView$Adapter mAdapter;
  
  AdapterHelper mAdapterHelper;
  
  boolean mAdapterUpdateDuringMeasure;
  
  private EdgeEffectCompat mBottomGlow;
  
  private RecyclerView$ChildDrawingOrderCallback mChildDrawingOrderCallback;
  
  ChildHelper mChildHelper;
  
  boolean mClipToPadding;
  
  boolean mDataSetHasChangedAfterLayout;
  
  private int mDispatchScrollCounter;
  
  private int mEatRequestLayout;
  
  private int mEatenAccessibilityChangeFlags;
  
  @VisibleForTesting
  boolean mFirstLayoutComplete;
  
  GapWorker mGapWorker;
  
  boolean mHasFixedSize;
  
  private boolean mIgnoreMotionEventTillDown;
  
  private int mInitialTouchX;
  
  private int mInitialTouchY;
  
  boolean mIsAttached;
  
  RecyclerView$ItemAnimator mItemAnimator;
  
  private RecyclerView$ItemAnimator$ItemAnimatorListener mItemAnimatorListener;
  
  private Runnable mItemAnimatorRunner;
  
  final ArrayList<RecyclerView$ItemDecoration> mItemDecorations;
  
  boolean mItemsAddedOrRemoved;
  
  boolean mItemsChanged;
  
  private int mLastTouchX;
  
  private int mLastTouchY;
  
  @VisibleForTesting
  RecyclerView$LayoutManager mLayout;
  
  boolean mLayoutFrozen;
  
  private int mLayoutOrScrollCounter;
  
  boolean mLayoutRequestEaten;
  
  private EdgeEffectCompat mLeftGlow;
  
  private final int mMaxFlingVelocity;
  
  private final int mMinFlingVelocity;
  
  private final int[] mMinMaxLayoutPositions;
  
  private final int[] mNestedOffsets;
  
  private final RecyclerView$RecyclerViewDataObserver mObserver;
  
  private List<RecyclerView$OnChildAttachStateChangeListener> mOnChildAttachStateListeners;
  
  private RecyclerView$OnFlingListener mOnFlingListener;
  
  private final ArrayList<RecyclerView$OnItemTouchListener> mOnItemTouchListeners;
  
  @VisibleForTesting
  final List<RecyclerView$ViewHolder> mPendingAccessibilityImportanceChange;
  
  private RecyclerView$SavedState mPendingSavedState;
  
  boolean mPostedAnimatorRunner;
  
  GapWorker$LayoutPrefetchRegistryImpl mPrefetchRegistry;
  
  private boolean mPreserveFocusAfterLayout;
  
  final RecyclerView$Recycler mRecycler;
  
  RecyclerView$RecyclerListener mRecyclerListener;
  
  private EdgeEffectCompat mRightGlow;
  
  private final int[] mScrollConsumed;
  
  private float mScrollFactor;
  
  private RecyclerView$OnScrollListener mScrollListener;
  
  private List<RecyclerView$OnScrollListener> mScrollListeners;
  
  private final int[] mScrollOffset;
  
  private int mScrollPointerId;
  
  private int mScrollState;
  
  private NestedScrollingChildHelper mScrollingChildHelper;
  
  final RecyclerView$State mState;
  
  final Rect mTempRect;
  
  private final Rect mTempRect2;
  
  final RectF mTempRectF;
  
  private EdgeEffectCompat mTopGlow;
  
  private int mTouchSlop;
  
  final Runnable mUpdateChildViewsRunnable;
  
  private VelocityTracker mVelocityTracker;
  
  final RecyclerView$ViewFlinger mViewFlinger;
  
  private final ViewInfoStore$ProcessCallback mViewInfoProcessCallback;
  
  final ViewInfoStore mViewInfoStore;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */