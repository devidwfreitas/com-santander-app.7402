package org.dom4j.swing;

import java.util.Enumeration;
import java.util.List;
import javax.swing.tree.TreeNode;
import org.dom4j.Branch;
import org.dom4j.Node;

public class BranchTreeNode extends LeafTreeNode {
  protected List children;
  
  public BranchTreeNode() {}
  
  public BranchTreeNode(TreeNode paramTreeNode, Branch paramBranch) {
    super(paramTreeNode, (Node)paramBranch);
  }
  
  public BranchTreeNode(Branch paramBranch) {
    super((Node)paramBranch);
  }
  
  public Enumeration children() {
    return new BranchTreeNode$1(this);
  }
  
  protected List createChildList() {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getXmlBranch : ()Lorg/dom4j/Branch;
    //   4: astore_3
    //   5: aload_3
    //   6: invokeinterface nodeCount : ()I
    //   11: istore_2
    //   12: new java/util/ArrayList
    //   15: dup
    //   16: iload_2
    //   17: invokespecial <init> : (I)V
    //   20: astore #4
    //   22: iconst_0
    //   23: istore_1
    //   24: iload_1
    //   25: iload_2
    //   26: if_icmpge -> 95
    //   29: aload_3
    //   30: iload_1
    //   31: invokeinterface node : (I)Lorg/dom4j/Node;
    //   36: astore #5
    //   38: aload #5
    //   40: instanceof org/dom4j/CharacterData
    //   43: ifeq -> 78
    //   46: aload #5
    //   48: invokeinterface getText : ()Ljava/lang/String;
    //   53: astore #6
    //   55: aload #6
    //   57: ifnonnull -> 67
    //   60: iload_1
    //   61: iconst_1
    //   62: iadd
    //   63: istore_1
    //   64: goto -> 24
    //   67: aload #6
    //   69: invokevirtual trim : ()Ljava/lang/String;
    //   72: invokevirtual length : ()I
    //   75: ifle -> 60
    //   78: aload #4
    //   80: aload_0
    //   81: aload #5
    //   83: invokevirtual createChildTreeNode : (Lorg/dom4j/Node;)Ljavax/swing/tree/TreeNode;
    //   86: invokeinterface add : (Ljava/lang/Object;)Z
    //   91: pop
    //   92: goto -> 60
    //   95: aload #4
    //   97: areturn
  }
  
  protected TreeNode createChildTreeNode(Node paramNode) {
    return (paramNode instanceof Branch) ? new BranchTreeNode(this, (Branch)paramNode) : new LeafTreeNode(this, paramNode);
  }
  
  public boolean getAllowsChildren() {
    return true;
  }
  
  public TreeNode getChildAt(int paramInt) {
    return getChildList().get(paramInt);
  }
  
  public int getChildCount() {
    return getChildList().size();
  }
  
  protected List getChildList() {
    if (this.children == null)
      this.children = createChildList(); 
    return this.children;
  }
  
  public int getIndex(TreeNode paramTreeNode) {
    return getChildList().indexOf(paramTreeNode);
  }
  
  protected Branch getXmlBranch() {
    return (Branch)this.xmlNode;
  }
  
  public boolean isLeaf() {
    return (getXmlBranch().nodeCount() <= 0);
  }
  
  public String toString() {
    return this.xmlNode.getName();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\swing\BranchTreeNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */