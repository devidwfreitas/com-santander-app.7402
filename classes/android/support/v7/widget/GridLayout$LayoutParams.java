package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.gridlayout.R;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class GridLayout$LayoutParams extends ViewGroup.MarginLayoutParams {
  private static final int BOTTOM_MARGIN;
  
  private static final int COLUMN;
  
  private static final int COLUMN_SPAN;
  
  private static final int COLUMN_WEIGHT;
  
  private static final int DEFAULT_COLUMN = -2147483648;
  
  private static final int DEFAULT_HEIGHT = -2;
  
  private static final int DEFAULT_MARGIN = -2147483648;
  
  private static final int DEFAULT_ROW = -2147483648;
  
  private static final GridLayout$Interval DEFAULT_SPAN = new GridLayout$Interval(-2147483648, -2147483647);
  
  private static final int DEFAULT_SPAN_SIZE = DEFAULT_SPAN.size();
  
  private static final int DEFAULT_WIDTH = -2;
  
  private static final int GRAVITY;
  
  private static final int LEFT_MARGIN;
  
  private static final int MARGIN = R.styleable.GridLayout_Layout_android_layout_margin;
  
  private static final int RIGHT_MARGIN;
  
  private static final int ROW;
  
  private static final int ROW_SPAN;
  
  private static final int ROW_WEIGHT;
  
  private static final int TOP_MARGIN;
  
  public GridLayout$Spec columnSpec = GridLayout$Spec.UNDEFINED;
  
  public GridLayout$Spec rowSpec = GridLayout$Spec.UNDEFINED;
  
  static {
    LEFT_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginLeft;
    TOP_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginTop;
    RIGHT_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginRight;
    BOTTOM_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginBottom;
    COLUMN = R.styleable.GridLayout_Layout_layout_column;
    COLUMN_SPAN = R.styleable.GridLayout_Layout_layout_columnSpan;
    COLUMN_WEIGHT = R.styleable.GridLayout_Layout_layout_columnWeight;
    ROW = R.styleable.GridLayout_Layout_layout_row;
    ROW_SPAN = R.styleable.GridLayout_Layout_layout_rowSpan;
    ROW_WEIGHT = R.styleable.GridLayout_Layout_layout_rowWeight;
    GRAVITY = R.styleable.GridLayout_Layout_layout_gravity;
  }
  
  public GridLayout$LayoutParams() {
    this(GridLayout$Spec.UNDEFINED, GridLayout$Spec.UNDEFINED);
  }
  
  private GridLayout$LayoutParams(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, GridLayout$Spec paramGridLayout$Spec1, GridLayout$Spec paramGridLayout$Spec2) {
    super(paramInt1, paramInt2);
    setMargins(paramInt3, paramInt4, paramInt5, paramInt6);
    this.rowSpec = paramGridLayout$Spec1;
    this.columnSpec = paramGridLayout$Spec2;
  }
  
  public GridLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    reInitSuper(paramContext, paramAttributeSet);
    init(paramContext, paramAttributeSet);
  }
  
  public GridLayout$LayoutParams(GridLayout$LayoutParams paramGridLayout$LayoutParams) {
    super(paramGridLayout$LayoutParams);
    this.rowSpec = paramGridLayout$LayoutParams.rowSpec;
    this.columnSpec = paramGridLayout$LayoutParams.columnSpec;
  }
  
  public GridLayout$LayoutParams(GridLayout$Spec paramGridLayout$Spec1, GridLayout$Spec paramGridLayout$Spec2) {
    this(-2, -2, -2147483648, -2147483648, -2147483648, -2147483648, paramGridLayout$Spec1, paramGridLayout$Spec2);
  }
  
  public GridLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public GridLayout$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
  
  private void init(Context paramContext, AttributeSet paramAttributeSet) {
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.GridLayout_Layout);
    try {
      int i = typedArray.getInt(GRAVITY, 0);
      int j = typedArray.getInt(COLUMN, -2147483648);
      int k = typedArray.getInt(COLUMN_SPAN, DEFAULT_SPAN_SIZE);
      float f = typedArray.getFloat(COLUMN_WEIGHT, 0.0F);
      this.columnSpec = GridLayout.spec(j, k, GridLayout.getAlignment(i, true), f);
      j = typedArray.getInt(ROW, -2147483648);
      k = typedArray.getInt(ROW_SPAN, DEFAULT_SPAN_SIZE);
      f = typedArray.getFloat(ROW_WEIGHT, 0.0F);
      this.rowSpec = GridLayout.spec(j, k, GridLayout.getAlignment(i, false), f);
      return;
    } finally {
      typedArray.recycle();
    } 
  }
  
  private void reInitSuper(Context paramContext, AttributeSet paramAttributeSet) {
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.GridLayout_Layout);
    try {
      int i = typedArray.getDimensionPixelSize(MARGIN, -2147483648);
      this.leftMargin = typedArray.getDimensionPixelSize(LEFT_MARGIN, i);
      this.topMargin = typedArray.getDimensionPixelSize(TOP_MARGIN, i);
      this.rightMargin = typedArray.getDimensionPixelSize(RIGHT_MARGIN, i);
      this.bottomMargin = typedArray.getDimensionPixelSize(BOTTOM_MARGIN, i);
      return;
    } finally {
      typedArray.recycle();
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (!this.columnSpec.equals(((GridLayout$LayoutParams)paramObject).columnSpec))
        return false; 
      if (!this.rowSpec.equals(((GridLayout$LayoutParams)paramObject).rowSpec))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return this.rowSpec.hashCode() * 31 + this.columnSpec.hashCode();
  }
  
  protected void setBaseAttributes(TypedArray paramTypedArray, int paramInt1, int paramInt2) {
    this.width = paramTypedArray.getLayoutDimension(paramInt1, -2);
    this.height = paramTypedArray.getLayoutDimension(paramInt2, -2);
  }
  
  final void setColumnSpecSpan(GridLayout$Interval paramGridLayout$Interval) {
    this.columnSpec = this.columnSpec.copyWriteSpan(paramGridLayout$Interval);
  }
  
  public void setGravity(int paramInt) {
    this.rowSpec = this.rowSpec.copyWriteAlignment(GridLayout.getAlignment(paramInt, false));
    this.columnSpec = this.columnSpec.copyWriteAlignment(GridLayout.getAlignment(paramInt, true));
  }
  
  final void setRowSpecSpan(GridLayout$Interval paramGridLayout$Interval) {
    this.rowSpec = this.rowSpec.copyWriteSpan(paramGridLayout$Interval);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */