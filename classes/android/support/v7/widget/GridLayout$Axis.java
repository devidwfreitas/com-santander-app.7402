package android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class GridLayout$Axis {
  static final int COMPLETE = 2;
  
  static final int NEW = 0;
  
  static final int PENDING = 1;
  
  public GridLayout$Arc[] arcs;
  
  public boolean arcsValid = false;
  
  GridLayout$PackedMap<GridLayout$Interval, GridLayout$MutableInt> backwardLinks;
  
  public boolean backwardLinksValid = false;
  
  public int definedCount = Integer.MIN_VALUE;
  
  public int[] deltas;
  
  GridLayout$PackedMap<GridLayout$Interval, GridLayout$MutableInt> forwardLinks;
  
  public boolean forwardLinksValid = false;
  
  GridLayout$PackedMap<GridLayout$Spec, GridLayout$Bounds> groupBounds;
  
  public boolean groupBoundsValid = false;
  
  public boolean hasWeights;
  
  public boolean hasWeightsValid = false;
  
  public final boolean horizontal;
  
  public int[] leadingMargins;
  
  public boolean leadingMarginsValid = false;
  
  public int[] locations;
  
  public boolean locationsValid = false;
  
  private int maxIndex = Integer.MIN_VALUE;
  
  boolean orderPreserved = true;
  
  private GridLayout$MutableInt parentMax = new GridLayout$MutableInt(-100000);
  
  private GridLayout$MutableInt parentMin = new GridLayout$MutableInt(0);
  
  public int[] trailingMargins;
  
  public boolean trailingMarginsValid = false;
  
  static {
    boolean bool;
    if (!GridLayout.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    $assertionsDisabled = bool;
  }
  
  GridLayout$Axis(boolean paramBoolean) {
    this.horizontal = paramBoolean;
  }
  
  private void addComponentSizes(List<GridLayout$Arc> paramList, GridLayout$PackedMap<GridLayout$Interval, GridLayout$MutableInt> paramGridLayout$PackedMap) {
    for (int i = 0; i < ((GridLayout$Interval[])paramGridLayout$PackedMap.keys).length; i++)
      include(paramList, ((GridLayout$Interval[])paramGridLayout$PackedMap.keys)[i], ((GridLayout$MutableInt[])paramGridLayout$PackedMap.values)[i], false); 
  }
  
  private String arcsToString(List<GridLayout$Arc> paramList) {
    String str;
    if (this.horizontal) {
      str = "x";
    } else {
      str = "y";
    } 
    StringBuilder stringBuilder2 = new StringBuilder();
    Iterator<GridLayout$Arc> iterator = paramList.iterator();
    StringBuilder stringBuilder1 = stringBuilder2;
    boolean bool = true;
    while (iterator.hasNext()) {
      String str1;
      GridLayout$Arc gridLayout$Arc = iterator.next();
      if (bool) {
        bool = false;
      } else {
        stringBuilder1 = stringBuilder1.append(", ");
      } 
      int i = gridLayout$Arc.span.min;
      int j = gridLayout$Arc.span.max;
      int k = gridLayout$Arc.value.value;
      if (i < j) {
        str1 = str + j + "-" + str + i + ">=" + k;
      } else {
        str1 = str + i + "-" + str + j + "<=" + -k;
      } 
      stringBuilder1.append(str1);
    } 
    return stringBuilder1.toString();
  }
  
  private int calculateMaxIndex() {
    int k = GridLayout.this.getChildCount();
    int i = 0;
    int j = -1;
    while (i < k) {
      GridLayout$Spec gridLayout$Spec;
      View view = GridLayout.this.getChildAt(i);
      GridLayout$LayoutParams gridLayout$LayoutParams = GridLayout.this.getLayoutParams(view);
      if (this.horizontal) {
        gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
      } else {
        gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
      } 
      GridLayout$Interval gridLayout$Interval = gridLayout$Spec.span;
      j = Math.max(Math.max(Math.max(j, gridLayout$Interval.min), gridLayout$Interval.max), gridLayout$Interval.size());
      i++;
    } 
    return (j == -1) ? Integer.MIN_VALUE : j;
  }
  
  private float calculateTotalWeight() {
    float f = 0.0F;
    int j = GridLayout.this.getChildCount();
    for (int i = 0; i < j; i++) {
      View view = GridLayout.this.getChildAt(i);
      if (view.getVisibility() != 8) {
        GridLayout$Spec gridLayout$Spec;
        GridLayout$LayoutParams gridLayout$LayoutParams = GridLayout.this.getLayoutParams(view);
        if (this.horizontal) {
          gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
        } else {
          gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
        } 
        f = gridLayout$Spec.weight + f;
      } 
    } 
    return f;
  }
  
  private void computeArcs() {
    getForwardLinks();
    getBackwardLinks();
  }
  
  private void computeGroupBounds() {
    GridLayout$Bounds[] arrayOfGridLayout$Bounds = (GridLayout$Bounds[])this.groupBounds.values;
    int i;
    for (i = 0; i < arrayOfGridLayout$Bounds.length; i++)
      arrayOfGridLayout$Bounds[i].reset(); 
    int j = GridLayout.this.getChildCount();
    for (i = 0; i < j; i++) {
      int k;
      GridLayout$Spec gridLayout$Spec;
      View view = GridLayout.this.getChildAt(i);
      GridLayout$LayoutParams gridLayout$LayoutParams = GridLayout.this.getLayoutParams(view);
      if (this.horizontal) {
        gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
      } else {
        gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
      } 
      int m = GridLayout.this.getMeasurementIncludingMargin(view, this.horizontal);
      if (gridLayout$Spec.weight == 0.0F) {
        k = 0;
      } else {
        k = getDeltas()[i];
      } 
      ((GridLayout$Bounds)this.groupBounds.getValue(i)).include(GridLayout.this, view, gridLayout$Spec, this, m + k);
    } 
  }
  
  private boolean computeHasWeights() {
    int j = GridLayout.this.getChildCount();
    for (int i = 0; i < j; i++) {
      View view = GridLayout.this.getChildAt(i);
      if (view.getVisibility() != 8) {
        GridLayout$Spec gridLayout$Spec;
        GridLayout$LayoutParams gridLayout$LayoutParams = GridLayout.this.getLayoutParams(view);
        if (this.horizontal) {
          gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
        } else {
          gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
        } 
        if (gridLayout$Spec.weight != 0.0F)
          return true; 
      } 
    } 
    return false;
  }
  
  private void computeLinks(GridLayout$PackedMap<GridLayout$Interval, GridLayout$MutableInt> paramGridLayout$PackedMap, boolean paramBoolean) {
    int j = 0;
    GridLayout$MutableInt[] arrayOfGridLayout$MutableInt = (GridLayout$MutableInt[])paramGridLayout$PackedMap.values;
    int i;
    for (i = 0; i < arrayOfGridLayout$MutableInt.length; i++)
      arrayOfGridLayout$MutableInt[i].reset(); 
    GridLayout$Bounds[] arrayOfGridLayout$Bounds = (GridLayout$Bounds[])(getGroupBounds()).values;
    for (i = j; i < arrayOfGridLayout$Bounds.length; i++) {
      j = arrayOfGridLayout$Bounds[i].size(paramBoolean);
      GridLayout$MutableInt gridLayout$MutableInt = paramGridLayout$PackedMap.getValue(i);
      int k = gridLayout$MutableInt.value;
      if (!paramBoolean)
        j = -j; 
      gridLayout$MutableInt.value = Math.max(k, j);
    } 
  }
  
  private void computeLocations(int[] paramArrayOfint) {
    int i = 0;
    if (!hasWeights()) {
      solve(paramArrayOfint);
    } else {
      solveAndDistributeSpace(paramArrayOfint);
    } 
    if (!this.orderPreserved) {
      int j = paramArrayOfint[0];
      int k = paramArrayOfint.length;
      while (i < k) {
        paramArrayOfint[i] = paramArrayOfint[i] - j;
        i++;
      } 
    } 
  }
  
  private void computeMargins(boolean paramBoolean) {
    int[] arrayOfInt;
    if (paramBoolean) {
      arrayOfInt = this.leadingMargins;
    } else {
      arrayOfInt = this.trailingMargins;
    } 
    int j = GridLayout.this.getChildCount();
    for (int i = 0; i < j; i++) {
      View view = GridLayout.this.getChildAt(i);
      if (view.getVisibility() != 8) {
        int k;
        GridLayout$Spec gridLayout$Spec;
        GridLayout$LayoutParams gridLayout$LayoutParams = GridLayout.this.getLayoutParams(view);
        if (this.horizontal) {
          gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
        } else {
          gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
        } 
        GridLayout$Interval gridLayout$Interval = gridLayout$Spec.span;
        if (paramBoolean) {
          k = gridLayout$Interval.min;
        } else {
          k = gridLayout$Interval.max;
        } 
        arrayOfInt[k] = Math.max(arrayOfInt[k], GridLayout.this.getMargin1(view, this.horizontal, paramBoolean));
      } 
    } 
  }
  
  private GridLayout$Arc[] createArcs() {
    ArrayList<GridLayout$Arc> arrayList1 = new ArrayList();
    ArrayList<GridLayout$Arc> arrayList2 = new ArrayList();
    addComponentSizes(arrayList1, getForwardLinks());
    addComponentSizes(arrayList2, getBackwardLinks());
    if (this.orderPreserved)
      for (int j = 0; j < getCount(); j++)
        include(arrayList1, new GridLayout$Interval(j, j + 1), new GridLayout$MutableInt(0));  
    int i = getCount();
    include(arrayList1, new GridLayout$Interval(0, i), this.parentMin, false);
    include(arrayList2, new GridLayout$Interval(i, 0), this.parentMax, false);
    return GridLayout.<GridLayout$Arc>append(topologicalSort(arrayList1), topologicalSort(arrayList2));
  }
  
  private GridLayout$PackedMap<GridLayout$Spec, GridLayout$Bounds> createGroupBounds() {
    GridLayout$Assoc<GridLayout$Spec, GridLayout$Bounds> gridLayout$Assoc = GridLayout$Assoc.of(GridLayout$Spec.class, GridLayout$Bounds.class);
    int j = GridLayout.this.getChildCount();
    for (int i = 0; i < j; i++) {
      GridLayout$Spec gridLayout$Spec;
      View view = GridLayout.this.getChildAt(i);
      GridLayout$LayoutParams gridLayout$LayoutParams = GridLayout.this.getLayoutParams(view);
      if (this.horizontal) {
        gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
      } else {
        gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
      } 
      gridLayout$Assoc.put(gridLayout$Spec, gridLayout$Spec.getAbsoluteAlignment(this.horizontal).getBounds());
    } 
    return gridLayout$Assoc.pack();
  }
  
  private GridLayout$PackedMap<GridLayout$Interval, GridLayout$MutableInt> createLinks(boolean paramBoolean) {
    GridLayout$Assoc<GridLayout$Interval, GridLayout$MutableInt> gridLayout$Assoc = GridLayout$Assoc.of(GridLayout$Interval.class, GridLayout$MutableInt.class);
    GridLayout$Spec[] arrayOfGridLayout$Spec = (GridLayout$Spec[])(getGroupBounds()).keys;
    int j = arrayOfGridLayout$Spec.length;
    for (int i = 0; i < j; i++) {
      GridLayout$Interval gridLayout$Interval;
      if (paramBoolean) {
        gridLayout$Interval = (arrayOfGridLayout$Spec[i]).span;
      } else {
        gridLayout$Interval = (arrayOfGridLayout$Spec[i]).span.inverse();
      } 
      gridLayout$Assoc.put(gridLayout$Interval, new GridLayout$MutableInt());
    } 
    return gridLayout$Assoc.pack();
  }
  
  private GridLayout$PackedMap<GridLayout$Interval, GridLayout$MutableInt> getBackwardLinks() {
    if (this.backwardLinks == null)
      this.backwardLinks = createLinks(false); 
    if (!this.backwardLinksValid) {
      computeLinks(this.backwardLinks, false);
      this.backwardLinksValid = true;
    } 
    return this.backwardLinks;
  }
  
  private GridLayout$PackedMap<GridLayout$Interval, GridLayout$MutableInt> getForwardLinks() {
    if (this.forwardLinks == null)
      this.forwardLinks = createLinks(true); 
    if (!this.forwardLinksValid) {
      computeLinks(this.forwardLinks, true);
      this.forwardLinksValid = true;
    } 
    return this.forwardLinks;
  }
  
  private int getMaxIndex() {
    if (this.maxIndex == Integer.MIN_VALUE)
      this.maxIndex = Math.max(0, calculateMaxIndex()); 
    return this.maxIndex;
  }
  
  private int getMeasure(int paramInt1, int paramInt2) {
    setParentConstraints(paramInt1, paramInt2);
    return size(getLocations());
  }
  
  private boolean hasWeights() {
    if (!this.hasWeightsValid) {
      this.hasWeights = computeHasWeights();
      this.hasWeightsValid = true;
    } 
    return this.hasWeights;
  }
  
  private void include(List<GridLayout$Arc> paramList, GridLayout$Interval paramGridLayout$Interval, GridLayout$MutableInt paramGridLayout$MutableInt) {
    include(paramList, paramGridLayout$Interval, paramGridLayout$MutableInt, true);
  }
  
  private void include(List<GridLayout$Arc> paramList, GridLayout$Interval paramGridLayout$Interval, GridLayout$MutableInt paramGridLayout$MutableInt, boolean paramBoolean) {
    if (paramGridLayout$Interval.size() == 0)
      return; 
    if (paramBoolean) {
      Iterator<GridLayout$Arc> iterator = paramList.iterator();
      while (iterator.hasNext()) {
        if (((GridLayout$Arc)iterator.next()).span.equals(paramGridLayout$Interval))
          return; 
      } 
    } 
    paramList.add(new GridLayout$Arc(paramGridLayout$Interval, paramGridLayout$MutableInt));
  }
  
  private void init(int[] paramArrayOfint) {
    Arrays.fill(paramArrayOfint, 0);
  }
  
  private void logError(String paramString, GridLayout$Arc[] paramArrayOfGridLayout$Arc, boolean[] paramArrayOfboolean) {
    ArrayList<GridLayout$Arc> arrayList1 = new ArrayList();
    ArrayList<GridLayout$Arc> arrayList2 = new ArrayList();
    int i;
    for (i = 0; i < paramArrayOfGridLayout$Arc.length; i++) {
      GridLayout$Arc gridLayout$Arc = paramArrayOfGridLayout$Arc[i];
      if (paramArrayOfboolean[i])
        arrayList1.add(gridLayout$Arc); 
      if (!gridLayout$Arc.valid)
        arrayList2.add(gridLayout$Arc); 
    } 
    GridLayout.this.mPrinter.println(paramString + " constraints: " + arcsToString(arrayList1) + " are inconsistent; permanently removing: " + arcsToString(arrayList2) + ". ");
  }
  
  private boolean relax(int[] paramArrayOfint, GridLayout$Arc paramGridLayout$Arc) {
    if (paramGridLayout$Arc.valid) {
      GridLayout$Interval gridLayout$Interval = paramGridLayout$Arc.span;
      int j = gridLayout$Interval.min;
      int i = gridLayout$Interval.max;
      int k = paramGridLayout$Arc.value.value;
      j = paramArrayOfint[j] + k;
      if (j > paramArrayOfint[i]) {
        paramArrayOfint[i] = j;
        return true;
      } 
    } 
    return false;
  }
  
  private void setParentConstraints(int paramInt1, int paramInt2) {
    this.parentMin.value = paramInt1;
    this.parentMax.value = -paramInt2;
    this.locationsValid = false;
  }
  
  private void shareOutDelta(int paramInt, float paramFloat) {
    Arrays.fill(this.deltas, 0);
    int j = GridLayout.this.getChildCount();
    for (int i = 0; i < j; i++) {
      View view = GridLayout.this.getChildAt(i);
      if (view.getVisibility() != 8) {
        GridLayout$Spec gridLayout$Spec;
        GridLayout$LayoutParams gridLayout$LayoutParams = GridLayout.this.getLayoutParams(view);
        if (this.horizontal) {
          gridLayout$Spec = gridLayout$LayoutParams.columnSpec;
        } else {
          gridLayout$Spec = ((GridLayout$LayoutParams)gridLayout$Spec).rowSpec;
        } 
        float f = gridLayout$Spec.weight;
        if (f != 0.0F) {
          int k = Math.round(paramInt * f / paramFloat);
          this.deltas[i] = k;
          paramFloat -= f;
          paramInt -= k;
        } 
      } 
    } 
  }
  
  private int size(int[] paramArrayOfint) {
    return paramArrayOfint[getCount()];
  }
  
  private boolean solve(int[] paramArrayOfint) {
    return solve(getArcs(), paramArrayOfint);
  }
  
  private boolean solve(GridLayout$Arc[] paramArrayOfGridLayout$Arc, int[] paramArrayOfint) {
    return solve(paramArrayOfGridLayout$Arc, paramArrayOfint, true);
  }
  
  private boolean solve(GridLayout$Arc[] paramArrayOfGridLayout$Arc, int[] paramArrayOfint, boolean paramBoolean) {
    String str;
    boolean bool = false;
    if (this.horizontal) {
      str = "horizontal";
    } else {
      str = "vertical";
    } 
    int j = getCount() + 1;
    boolean[] arrayOfBoolean = null;
    int i = 0;
    while (i < paramArrayOfGridLayout$Arc.length) {
      init(paramArrayOfint);
      int k;
      for (k = 0; k < j; k++) {
        int n = paramArrayOfGridLayout$Arc.length;
        int m = 0;
        boolean bool2 = false;
        while (m < n) {
          bool2 |= relax(paramArrayOfint, paramArrayOfGridLayout$Arc[m]);
          m++;
        } 
        if (!bool2) {
          if (arrayOfBoolean != null)
            logError(str, paramArrayOfGridLayout$Arc, arrayOfBoolean); 
          return true;
        } 
      } 
      boolean bool1 = bool;
      if (paramBoolean) {
        boolean[] arrayOfBoolean1 = new boolean[paramArrayOfGridLayout$Arc.length];
        for (k = 0; k < j; k++) {
          int n = paramArrayOfGridLayout$Arc.length;
          int m;
          for (m = 0; m < n; m++)
            arrayOfBoolean1[m] = arrayOfBoolean1[m] | relax(paramArrayOfint, paramArrayOfGridLayout$Arc[m]); 
        } 
        if (i == 0)
          arrayOfBoolean = arrayOfBoolean1; 
        for (k = 0; k < paramArrayOfGridLayout$Arc.length; k++) {
          if (arrayOfBoolean1[k]) {
            GridLayout$Arc gridLayout$Arc = paramArrayOfGridLayout$Arc[k];
            if (gridLayout$Arc.span.min >= gridLayout$Arc.span.max) {
              gridLayout$Arc.valid = false;
              break;
            } 
          } 
        } 
        i++;
        continue;
      } 
      continue;
    } 
    return true;
  }
  
  private void solveAndDistributeSpace(int[] paramArrayOfint) {
    Arrays.fill(getDeltas(), 0);
    solve(paramArrayOfint);
    int i = this.parentMin.value * GridLayout.this.getChildCount() + 1;
    if (i >= 2) {
      float f = calculateTotalWeight();
      int j = -1;
      boolean bool = true;
      int k = 0;
      while (k < i) {
        int m = (int)((k + i) / 2L);
        invalidateValues();
        shareOutDelta(m, f);
        bool = solve(getArcs(), paramArrayOfint, false);
        if (bool) {
          j = m + 1;
          k = i;
          i = j;
          j = m;
        } else {
          i = k;
          k = m;
        } 
        m = k;
        k = i;
        i = m;
      } 
      if (j > 0 && !bool) {
        invalidateValues();
        shareOutDelta(j, f);
        solve(paramArrayOfint);
        return;
      } 
    } 
  }
  
  private GridLayout$Arc[] topologicalSort(List<GridLayout$Arc> paramList) {
    return topologicalSort(paramList.<GridLayout$Arc>toArray(new GridLayout$Arc[paramList.size()]));
  }
  
  private GridLayout$Arc[] topologicalSort(GridLayout$Arc[] paramArrayOfGridLayout$Arc) {
    return (new GridLayout$Axis$1(this, paramArrayOfGridLayout$Arc)).sort();
  }
  
  public GridLayout$Arc[] getArcs() {
    if (this.arcs == null)
      this.arcs = createArcs(); 
    if (!this.arcsValid) {
      computeArcs();
      this.arcsValid = true;
    } 
    return this.arcs;
  }
  
  public int getCount() {
    return Math.max(this.definedCount, getMaxIndex());
  }
  
  public int[] getDeltas() {
    if (this.deltas == null)
      this.deltas = new int[GridLayout.this.getChildCount()]; 
    return this.deltas;
  }
  
  public GridLayout$PackedMap<GridLayout$Spec, GridLayout$Bounds> getGroupBounds() {
    if (this.groupBounds == null)
      this.groupBounds = createGroupBounds(); 
    if (!this.groupBoundsValid) {
      computeGroupBounds();
      this.groupBoundsValid = true;
    } 
    return this.groupBounds;
  }
  
  public int[] getLeadingMargins() {
    if (this.leadingMargins == null)
      this.leadingMargins = new int[getCount() + 1]; 
    if (!this.leadingMarginsValid) {
      computeMargins(true);
      this.leadingMarginsValid = true;
    } 
    return this.leadingMargins;
  }
  
  public int[] getLocations() {
    if (this.locations == null)
      this.locations = new int[getCount() + 1]; 
    if (!this.locationsValid) {
      computeLocations(this.locations);
      this.locationsValid = true;
    } 
    return this.locations;
  }
  
  public int getMeasure(int paramInt) {
    boolean bool = false;
    int i = View.MeasureSpec.getMode(paramInt);
    paramInt = View.MeasureSpec.getSize(paramInt);
    switch (i) {
      default:
        paramInt = bool;
        assert false;
        return paramInt;
      case 0:
        return getMeasure(0, 100000);
      case 1073741824:
        return getMeasure(paramInt, paramInt);
      case -2147483648:
        break;
    } 
    return getMeasure(0, paramInt);
  }
  
  public int[] getTrailingMargins() {
    if (this.trailingMargins == null)
      this.trailingMargins = new int[getCount() + 1]; 
    if (!this.trailingMarginsValid) {
      computeMargins(false);
      this.trailingMarginsValid = true;
    } 
    return this.trailingMargins;
  }
  
  GridLayout$Arc[][] groupArcsByFirstVertex(GridLayout$Arc[] paramArrayOfGridLayout$Arc) {
    int j = 0;
    int i = getCount() + 1;
    GridLayout$Arc[][] arrayOfGridLayout$Arc = new GridLayout$Arc[i][];
    int[] arrayOfInt = new int[i];
    int k = paramArrayOfGridLayout$Arc.length;
    for (i = 0; i < k; i++) {
      int m = (paramArrayOfGridLayout$Arc[i]).span.min;
      arrayOfInt[m] = arrayOfInt[m] + 1;
    } 
    for (i = 0; i < arrayOfInt.length; i++)
      arrayOfGridLayout$Arc[i] = new GridLayout$Arc[arrayOfInt[i]]; 
    Arrays.fill(arrayOfInt, 0);
    k = paramArrayOfGridLayout$Arc.length;
    for (i = j; i < k; i++) {
      GridLayout$Arc gridLayout$Arc = paramArrayOfGridLayout$Arc[i];
      j = gridLayout$Arc.span.min;
      GridLayout$Arc[] arrayOfGridLayout$Arc1 = arrayOfGridLayout$Arc[j];
      int m = arrayOfInt[j];
      arrayOfInt[j] = m + 1;
      arrayOfGridLayout$Arc1[m] = gridLayout$Arc;
    } 
    return arrayOfGridLayout$Arc;
  }
  
  public void invalidateStructure() {
    this.maxIndex = Integer.MIN_VALUE;
    this.groupBounds = null;
    this.forwardLinks = null;
    this.backwardLinks = null;
    this.leadingMargins = null;
    this.trailingMargins = null;
    this.arcs = null;
    this.locations = null;
    this.deltas = null;
    this.hasWeightsValid = false;
    invalidateValues();
  }
  
  public void invalidateValues() {
    this.groupBoundsValid = false;
    this.forwardLinksValid = false;
    this.backwardLinksValid = false;
    this.leadingMarginsValid = false;
    this.trailingMarginsValid = false;
    this.arcsValid = false;
    this.locationsValid = false;
  }
  
  public boolean isOrderPreserved() {
    return this.orderPreserved;
  }
  
  public void layout(int paramInt) {
    setParentConstraints(paramInt, paramInt);
    getLocations();
  }
  
  public void setCount(int paramInt) {
    if (paramInt != Integer.MIN_VALUE && paramInt < getMaxIndex()) {
      String str;
      StringBuilder stringBuilder = new StringBuilder();
      if (this.horizontal) {
        str = "column";
      } else {
        str = "row";
      } 
      GridLayout.handleInvalidParams(stringBuilder.append(str).append("Count must be greater than or equal to the maximum of all grid indices ").append("(and spans) defined in the LayoutParams of each child").toString());
    } 
    this.definedCount = paramInt;
  }
  
  public void setOrderPreserved(boolean paramBoolean) {
    this.orderPreserved = paramBoolean;
    invalidateStructure();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$Axis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */