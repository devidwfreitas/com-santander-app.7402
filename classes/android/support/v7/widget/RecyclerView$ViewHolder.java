package android.support.v7.widget;

import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class RecyclerView$ViewHolder {
  static final int FLAG_ADAPTER_FULLUPDATE = 1024;
  
  static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
  
  static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
  
  static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
  
  static final int FLAG_BOUND = 1;
  
  static final int FLAG_IGNORE = 128;
  
  static final int FLAG_INVALID = 4;
  
  static final int FLAG_MOVED = 2048;
  
  static final int FLAG_NOT_RECYCLABLE = 16;
  
  static final int FLAG_REMOVED = 8;
  
  static final int FLAG_RETURNED_FROM_SCRAP = 32;
  
  static final int FLAG_TMP_DETACHED = 256;
  
  static final int FLAG_UPDATE = 2;
  
  private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
  
  static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
  
  public final View itemView;
  
  private int mFlags;
  
  private boolean mInChangeScrap = false;
  
  private int mIsRecyclableCount = 0;
  
  long mItemId = -1L;
  
  int mItemViewType = -1;
  
  WeakReference<RecyclerView> mNestedRecyclerView;
  
  int mOldPosition = -1;
  
  RecyclerView mOwnerRecyclerView;
  
  List<Object> mPayloads = null;
  
  @VisibleForTesting
  int mPendingAccessibilityState = -1;
  
  int mPosition = -1;
  
  int mPreLayoutPosition = -1;
  
  private RecyclerView$Recycler mScrapContainer = null;
  
  RecyclerView$ViewHolder mShadowedHolder = null;
  
  RecyclerView$ViewHolder mShadowingHolder = null;
  
  List<Object> mUnmodifiedPayloads = null;
  
  private int mWasImportantForAccessibilityBeforeHidden = 0;
  
  public RecyclerView$ViewHolder(View paramView) {
    if (paramView == null)
      throw new IllegalArgumentException("itemView may not be null"); 
    this.itemView = paramView;
  }
  
  private void createPayloadsIfNeeded() {
    if (this.mPayloads == null) {
      this.mPayloads = new ArrayList();
      this.mUnmodifiedPayloads = Collections.unmodifiableList(this.mPayloads);
    } 
  }
  
  private boolean doesTransientStatePreventRecycling() {
    return ((this.mFlags & 0x10) == 0 && ViewCompat.hasTransientState(this.itemView));
  }
  
  private void onEnteredHiddenState(RecyclerView paramRecyclerView) {
    this.mWasImportantForAccessibilityBeforeHidden = ViewCompat.getImportantForAccessibility(this.itemView);
    paramRecyclerView.setChildImportantForAccessibilityInternal(this, 4);
  }
  
  private void onLeftHiddenState(RecyclerView paramRecyclerView) {
    paramRecyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
    this.mWasImportantForAccessibilityBeforeHidden = 0;
  }
  
  private boolean shouldBeKeptAsChild() {
    return ((this.mFlags & 0x10) != 0);
  }
  
  void addChangePayload(Object paramObject) {
    if (paramObject == null) {
      addFlags(1024);
      return;
    } 
    if ((this.mFlags & 0x400) == 0) {
      createPayloadsIfNeeded();
      this.mPayloads.add(paramObject);
      return;
    } 
  }
  
  void addFlags(int paramInt) {
    this.mFlags |= paramInt;
  }
  
  void clearOldPosition() {
    this.mOldPosition = -1;
    this.mPreLayoutPosition = -1;
  }
  
  void clearPayload() {
    if (this.mPayloads != null)
      this.mPayloads.clear(); 
    this.mFlags &= 0xFFFFFBFF;
  }
  
  void clearReturnedFromScrapFlag() {
    this.mFlags &= 0xFFFFFFDF;
  }
  
  void clearTmpDetachFlag() {
    this.mFlags &= 0xFFFFFEFF;
  }
  
  void flagRemovedAndOffsetPosition(int paramInt1, int paramInt2, boolean paramBoolean) {
    addFlags(8);
    offsetPosition(paramInt2, paramBoolean);
    this.mPosition = paramInt1;
  }
  
  public final int getAdapterPosition() {
    return (this.mOwnerRecyclerView == null) ? -1 : this.mOwnerRecyclerView.getAdapterPositionFor(this);
  }
  
  public final long getItemId() {
    return this.mItemId;
  }
  
  public final int getItemViewType() {
    return this.mItemViewType;
  }
  
  public final int getLayoutPosition() {
    return (this.mPreLayoutPosition == -1) ? this.mPosition : this.mPreLayoutPosition;
  }
  
  public final int getOldPosition() {
    return this.mOldPosition;
  }
  
  @Deprecated
  public final int getPosition() {
    return (this.mPreLayoutPosition == -1) ? this.mPosition : this.mPreLayoutPosition;
  }
  
  List<Object> getUnmodifiedPayloads() {
    return ((this.mFlags & 0x400) == 0) ? ((this.mPayloads == null || this.mPayloads.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads) : FULLUPDATE_PAYLOADS;
  }
  
  boolean hasAnyOfTheFlags(int paramInt) {
    return ((this.mFlags & paramInt) != 0);
  }
  
  boolean isAdapterPositionUnknown() {
    return ((this.mFlags & 0x200) != 0 || isInvalid());
  }
  
  boolean isBound() {
    return ((this.mFlags & 0x1) != 0);
  }
  
  boolean isInvalid() {
    return ((this.mFlags & 0x4) != 0);
  }
  
  public final boolean isRecyclable() {
    return ((this.mFlags & 0x10) == 0 && !ViewCompat.hasTransientState(this.itemView));
  }
  
  boolean isRemoved() {
    return ((this.mFlags & 0x8) != 0);
  }
  
  boolean isScrap() {
    return (this.mScrapContainer != null);
  }
  
  boolean isTmpDetached() {
    return ((this.mFlags & 0x100) != 0);
  }
  
  boolean isUpdated() {
    return ((this.mFlags & 0x2) != 0);
  }
  
  boolean needsUpdate() {
    return ((this.mFlags & 0x2) != 0);
  }
  
  void offsetPosition(int paramInt, boolean paramBoolean) {
    if (this.mOldPosition == -1)
      this.mOldPosition = this.mPosition; 
    if (this.mPreLayoutPosition == -1)
      this.mPreLayoutPosition = this.mPosition; 
    if (paramBoolean)
      this.mPreLayoutPosition += paramInt; 
    this.mPosition += paramInt;
    if (this.itemView.getLayoutParams() != null)
      ((RecyclerView$LayoutParams)this.itemView.getLayoutParams()).mInsetsDirty = true; 
  }
  
  void resetInternal() {
    this.mFlags = 0;
    this.mPosition = -1;
    this.mOldPosition = -1;
    this.mItemId = -1L;
    this.mPreLayoutPosition = -1;
    this.mIsRecyclableCount = 0;
    this.mShadowedHolder = null;
    this.mShadowingHolder = null;
    clearPayload();
    this.mWasImportantForAccessibilityBeforeHidden = 0;
    this.mPendingAccessibilityState = -1;
    RecyclerView.clearNestedRecyclerViewIfNotNested(this);
  }
  
  void saveOldPosition() {
    if (this.mOldPosition == -1)
      this.mOldPosition = this.mPosition; 
  }
  
  void setFlags(int paramInt1, int paramInt2) {
    this.mFlags = this.mFlags & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2;
  }
  
  public final void setIsRecyclable(boolean paramBoolean) {
    int i;
    if (paramBoolean) {
      i = this.mIsRecyclableCount - 1;
    } else {
      i = this.mIsRecyclableCount + 1;
    } 
    this.mIsRecyclableCount = i;
    if (this.mIsRecyclableCount < 0) {
      this.mIsRecyclableCount = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
      return;
    } 
    if (!paramBoolean && this.mIsRecyclableCount == 1) {
      this.mFlags |= 0x10;
      return;
    } 
    if (paramBoolean && this.mIsRecyclableCount == 0) {
      this.mFlags &= 0xFFFFFFEF;
      return;
    } 
  }
  
  void setScrapContainer(RecyclerView$Recycler paramRecyclerView$Recycler, boolean paramBoolean) {
    this.mScrapContainer = paramRecyclerView$Recycler;
    this.mInChangeScrap = paramBoolean;
  }
  
  boolean shouldIgnore() {
    return ((this.mFlags & 0x80) != 0);
  }
  
  void stopIgnoring() {
    this.mFlags &= 0xFFFFFF7F;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
    if (isScrap()) {
      String str;
      StringBuilder stringBuilder1 = stringBuilder.append(" scrap ");
      if (this.mInChangeScrap) {
        str = "[changeScrap]";
      } else {
        str = "[attachedScrap]";
      } 
      stringBuilder1.append(str);
    } 
    if (isInvalid())
      stringBuilder.append(" invalid"); 
    if (!isBound())
      stringBuilder.append(" unbound"); 
    if (needsUpdate())
      stringBuilder.append(" update"); 
    if (isRemoved())
      stringBuilder.append(" removed"); 
    if (shouldIgnore())
      stringBuilder.append(" ignored"); 
    if (isTmpDetached())
      stringBuilder.append(" tmpDetached"); 
    if (!isRecyclable())
      stringBuilder.append(" not recyclable(" + this.mIsRecyclableCount + ")"); 
    if (isAdapterPositionUnknown())
      stringBuilder.append(" undefined adapter position"); 
    if (this.itemView.getParent() == null)
      stringBuilder.append(" no parent"); 
    stringBuilder.append("}");
    return stringBuilder.toString();
  }
  
  void unScrap() {
    this.mScrapContainer.unscrapView(this);
  }
  
  boolean wasReturnedFromScrap() {
    return ((this.mFlags & 0x20) != 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$ViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */