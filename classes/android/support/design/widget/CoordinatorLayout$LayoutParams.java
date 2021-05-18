package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

public class CoordinatorLayout$LayoutParams extends ViewGroup.MarginLayoutParams {
  public int anchorGravity = 0;
  
  public int dodgeInsetEdges = 0;
  
  public int gravity = 0;
  
  public int insetEdge = 0;
  
  public int keyline = -1;
  
  View mAnchorDirectChild;
  
  int mAnchorId = -1;
  
  View mAnchorView;
  
  CoordinatorLayout$Behavior mBehavior;
  
  boolean mBehaviorResolved = false;
  
  Object mBehaviorTag;
  
  private boolean mDidAcceptNestedScroll;
  
  private boolean mDidBlockInteraction;
  
  private boolean mDidChangeAfterNestedScroll;
  
  int mInsetOffsetX;
  
  int mInsetOffsetY;
  
  final Rect mLastChildRect = new Rect();
  
  public CoordinatorLayout$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  CoordinatorLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout_Layout);
    this.gravity = typedArray.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
    this.mAnchorId = typedArray.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
    this.anchorGravity = typedArray.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
    this.keyline = typedArray.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
    this.insetEdge = typedArray.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
    this.dodgeInsetEdges = typedArray.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
    this.mBehaviorResolved = typedArray.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
    if (this.mBehaviorResolved)
      this.mBehavior = CoordinatorLayout.parseBehavior(paramContext, paramAttributeSet, typedArray.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior)); 
    typedArray.recycle();
    if (this.mBehavior != null)
      this.mBehavior.onAttachedToLayoutParams(this); 
  }
  
  public CoordinatorLayout$LayoutParams(CoordinatorLayout$LayoutParams paramCoordinatorLayout$LayoutParams) {
    super(paramCoordinatorLayout$LayoutParams);
  }
  
  public CoordinatorLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public CoordinatorLayout$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
  
  private void resolveAnchorView(View paramView, CoordinatorLayout paramCoordinatorLayout) {
    this.mAnchorView = paramCoordinatorLayout.findViewById(this.mAnchorId);
    if (this.mAnchorView != null) {
      if (this.mAnchorView == paramCoordinatorLayout) {
        if (paramCoordinatorLayout.isInEditMode()) {
          this.mAnchorDirectChild = null;
          this.mAnchorView = null;
          return;
        } 
        throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
      } 
      View view = this.mAnchorView;
      for (ViewParent viewParent = this.mAnchorView.getParent(); viewParent != paramCoordinatorLayout && viewParent != null; viewParent = viewParent.getParent()) {
        if (viewParent == paramView) {
          if (paramCoordinatorLayout.isInEditMode()) {
            this.mAnchorDirectChild = null;
            this.mAnchorView = null;
            return;
          } 
          throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
        } 
        if (viewParent instanceof View)
          view = (View)viewParent; 
      } 
      this.mAnchorDirectChild = view;
      return;
    } 
    if (paramCoordinatorLayout.isInEditMode()) {
      this.mAnchorDirectChild = null;
      this.mAnchorView = null;
      return;
    } 
    throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + paramCoordinatorLayout.getResources().getResourceName(this.mAnchorId) + " to anchor view " + paramView);
  }
  
  private boolean shouldDodge(View paramView, int paramInt) {
    int i = GravityCompat.getAbsoluteGravity(((CoordinatorLayout$LayoutParams)paramView.getLayoutParams()).insetEdge, paramInt);
    return (i != 0 && (GravityCompat.getAbsoluteGravity(this.dodgeInsetEdges, paramInt) & i) == i);
  }
  
  private boolean verifyAnchorView(View paramView, CoordinatorLayout paramCoordinatorLayout) {
    if (this.mAnchorView.getId() != this.mAnchorId)
      return false; 
    View view = this.mAnchorView;
    for (ViewParent viewParent = this.mAnchorView.getParent(); viewParent != paramCoordinatorLayout; viewParent = viewParent.getParent()) {
      if (viewParent == null || viewParent == paramView) {
        this.mAnchorDirectChild = null;
        this.mAnchorView = null;
        return false;
      } 
      if (viewParent instanceof View)
        view = (View)viewParent; 
    } 
    this.mAnchorDirectChild = view;
    return true;
  }
  
  void acceptNestedScroll(boolean paramBoolean) {
    this.mDidAcceptNestedScroll = paramBoolean;
  }
  
  boolean checkAnchorChanged() {
    return (this.mAnchorView == null && this.mAnchorId != -1);
  }
  
  boolean dependsOn(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2) {
    return (paramView2 == this.mAnchorDirectChild || shouldDodge(paramView2, ViewCompat.getLayoutDirection((View)paramCoordinatorLayout)) || (this.mBehavior != null && this.mBehavior.layoutDependsOn(paramCoordinatorLayout, paramView1, paramView2)));
  }
  
  boolean didBlockInteraction() {
    if (this.mBehavior == null)
      this.mDidBlockInteraction = false; 
    return this.mDidBlockInteraction;
  }
  
  View findAnchorView(CoordinatorLayout paramCoordinatorLayout, View paramView) {
    if (this.mAnchorId == -1) {
      this.mAnchorDirectChild = null;
      this.mAnchorView = null;
      return null;
    } 
    if (this.mAnchorView == null || !verifyAnchorView(paramView, paramCoordinatorLayout))
      resolveAnchorView(paramView, paramCoordinatorLayout); 
    return this.mAnchorView;
  }
  
  @IdRes
  public int getAnchorId() {
    return this.mAnchorId;
  }
  
  @Nullable
  public CoordinatorLayout$Behavior getBehavior() {
    return this.mBehavior;
  }
  
  boolean getChangedAfterNestedScroll() {
    return this.mDidChangeAfterNestedScroll;
  }
  
  Rect getLastChildRect() {
    return this.mLastChildRect;
  }
  
  void invalidateAnchor() {
    this.mAnchorDirectChild = null;
    this.mAnchorView = null;
  }
  
  boolean isBlockingInteractionBelow(CoordinatorLayout paramCoordinatorLayout, View paramView) {
    if (this.mDidBlockInteraction)
      return true; 
    boolean bool2 = this.mDidBlockInteraction;
    if (this.mBehavior != null) {
      boolean bool = this.mBehavior.blocksInteractionBelow(paramCoordinatorLayout, paramView);
      bool |= bool2;
      this.mDidBlockInteraction = bool;
      return bool;
    } 
    boolean bool1 = false;
    bool1 |= bool2;
    this.mDidBlockInteraction = bool1;
    return bool1;
  }
  
  boolean isNestedScrollAccepted() {
    return this.mDidAcceptNestedScroll;
  }
  
  void resetChangedAfterNestedScroll() {
    this.mDidChangeAfterNestedScroll = false;
  }
  
  void resetNestedScroll() {
    this.mDidAcceptNestedScroll = false;
  }
  
  void resetTouchBehaviorTracking() {
    this.mDidBlockInteraction = false;
  }
  
  public void setAnchorId(@IdRes int paramInt) {
    invalidateAnchor();
    this.mAnchorId = paramInt;
  }
  
  public void setBehavior(@Nullable CoordinatorLayout$Behavior paramCoordinatorLayout$Behavior) {
    if (this.mBehavior != paramCoordinatorLayout$Behavior) {
      if (this.mBehavior != null)
        this.mBehavior.onDetachedFromLayoutParams(); 
      this.mBehavior = paramCoordinatorLayout$Behavior;
      this.mBehaviorTag = null;
      this.mBehaviorResolved = true;
      if (paramCoordinatorLayout$Behavior != null)
        paramCoordinatorLayout$Behavior.onAttachedToLayoutParams(this); 
    } 
  }
  
  void setChangedAfterNestedScroll(boolean paramBoolean) {
    this.mDidChangeAfterNestedScroll = paramBoolean;
  }
  
  void setLastChildRect(Rect paramRect) {
    this.mLastChildRect.set(paramRect);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CoordinatorLayout$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */