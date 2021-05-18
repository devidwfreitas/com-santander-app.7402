package org.dom4j.swing;

import java.util.Enumeration;

class BranchTreeNode$1 implements Enumeration {
  private int index = -1;
  
  public boolean hasMoreElements() {
    return (this.index + 1 < BranchTreeNode.this.getChildCount());
  }
  
  public Object nextElement() {
    BranchTreeNode branchTreeNode = BranchTreeNode.this;
    int i = this.index + 1;
    this.index = i;
    return branchTreeNode.getChildAt(i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\swing\BranchTreeNode$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */