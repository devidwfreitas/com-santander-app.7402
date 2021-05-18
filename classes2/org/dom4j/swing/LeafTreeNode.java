package org.dom4j.swing;

import java.util.Enumeration;
import javax.swing.tree.TreeNode;
import org.dom4j.Node;

public class LeafTreeNode implements TreeNode {
  protected static final Enumeration EMPTY_ENUMERATION = new LeafTreeNode$1();
  
  private TreeNode parent;
  
  protected Node xmlNode;
  
  public LeafTreeNode() {}
  
  public LeafTreeNode(TreeNode paramTreeNode, Node paramNode) {
    this.parent = paramTreeNode;
    this.xmlNode = paramNode;
  }
  
  public LeafTreeNode(Node paramNode) {
    this.xmlNode = paramNode;
  }
  
  public Enumeration children() {
    return EMPTY_ENUMERATION;
  }
  
  public boolean getAllowsChildren() {
    return false;
  }
  
  public TreeNode getChildAt(int paramInt) {
    return null;
  }
  
  public int getChildCount() {
    return 0;
  }
  
  public int getIndex(TreeNode paramTreeNode) {
    return -1;
  }
  
  public TreeNode getParent() {
    return this.parent;
  }
  
  public Node getXmlNode() {
    return this.xmlNode;
  }
  
  public boolean isLeaf() {
    return true;
  }
  
  public void setParent(LeafTreeNode paramLeafTreeNode) {
    this.parent = paramLeafTreeNode;
  }
  
  public String toString() {
    String str = this.xmlNode.getText();
    return (str != null) ? str.trim() : "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\swing\LeafTreeNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */