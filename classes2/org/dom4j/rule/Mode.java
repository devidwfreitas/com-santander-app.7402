package org.dom4j.rule;

import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.NodeType;

public class Mode {
  private Map<String, RuleSet> attributeNameRuleSets;
  
  private Map<String, RuleSet> elementNameRuleSets;
  
  private EnumMap<NodeType, RuleSet> ruleSets = new EnumMap<NodeType, RuleSet>(NodeType.class);
  
  public void addRule(Rule paramRule) {
    NodeType nodeType = paramRule.getMatchType();
    String str = paramRule.getMatchesNodeName();
    if (str != null) {
      switch (Mode$1.$SwitchMap$org$dom4j$NodeType[nodeType.ordinal()]) {
        default:
          if (nodeType == NodeType.ANY_NODE)
            for (RuleSet ruleSet : this.ruleSets.values()) {
              if (ruleSet != null)
                ruleSet.addRule(paramRule); 
            }  
          break;
        case 1:
          this.elementNameRuleSets = addToNameMap(this.elementNameRuleSets, str, paramRule);
        case 2:
          this.attributeNameRuleSets = addToNameMap(this.attributeNameRuleSets, str, paramRule);
      } 
      getRuleSet(nodeType).addRule(paramRule);
      return;
    } 
  }
  
  protected Map<String, RuleSet> addToNameMap(Map<String, RuleSet> paramMap, String paramString, Rule paramRule) {
    Map<String, RuleSet> map = paramMap;
    if (paramMap == null)
      map = new HashMap<String, RuleSet>(); 
    RuleSet ruleSet2 = map.get(paramString);
    RuleSet ruleSet1 = ruleSet2;
    if (ruleSet2 == null) {
      ruleSet1 = new RuleSet();
      map.put(paramString, ruleSet1);
    } 
    ruleSet1.addRule(paramRule);
    return map;
  }
  
  public void applyTemplates(Document paramDocument) {
    int i = 0;
    int j = paramDocument.nodeCount();
    while (i < j) {
      fireRule(paramDocument.node(i));
      i++;
    } 
  }
  
  public void applyTemplates(Element paramElement) {
    boolean bool = false;
    int j = paramElement.attributeCount();
    int i;
    for (i = 0; i < j; i++)
      fireRule((Node)paramElement.attribute(i)); 
    j = paramElement.nodeCount();
    for (i = bool; i < j; i++)
      fireRule(paramElement.node(i)); 
  }
  
  public void fireRule(Node paramNode) {
    if (paramNode != null) {
      Rule rule = getMatchingRule(paramNode);
      if (rule != null) {
        Action action = rule.getAction();
        if (action != null)
          action.run(paramNode); 
      } 
    } 
  }
  
  public Rule getMatchingRule(Node paramNode) {
    Rule rule;
    RuleSet ruleSet;
    NodeType nodeType = paramNode.getNodeTypeEnum();
    switch (Mode$1.$SwitchMap$org$dom4j$NodeType[nodeType.ordinal()]) {
      default:
        rule = null;
        ruleSet = this.ruleSets.get(nodeType);
        if (ruleSet != null)
          rule = ruleSet.getMatchingRule(paramNode); 
        if (rule == null && nodeType != NodeType.ANY_NODE) {
          RuleSet ruleSet1 = this.ruleSets.get(nodeType);
          if (ruleSet1 != null)
            return ruleSet1.getMatchingRule(paramNode); 
        } 
        return rule;
      case 1:
        if (this.elementNameRuleSets != null) {
          String str = paramNode.getName();
          RuleSet ruleSet1 = this.elementNameRuleSets.get(str);
          if (ruleSet1 != null) {
            Rule rule1 = ruleSet1.getMatchingRule(paramNode);
            if (rule1 != null)
              return rule1; 
          } 
        } 
      case 2:
        break;
    } 
    if (this.attributeNameRuleSets != null) {
      String str = paramNode.getName();
      RuleSet ruleSet1 = this.attributeNameRuleSets.get(str);
      if (ruleSet1 != null) {
        Rule rule1 = ruleSet1.getMatchingRule(paramNode);
        if (rule1 != null)
          return rule1; 
      } 
    } 
  }
  
  protected RuleSet getRuleSet(NodeType paramNodeType) {
    RuleSet ruleSet2 = this.ruleSets.get(paramNodeType);
    RuleSet ruleSet1 = ruleSet2;
    if (ruleSet2 == null) {
      ruleSet1 = new RuleSet();
      this.ruleSets.put(paramNodeType, ruleSet1);
      if (paramNodeType != NodeType.ANY_NODE) {
        RuleSet ruleSet = this.ruleSets.get(paramNodeType);
        if (ruleSet != null)
          ruleSet1.addAll(ruleSet); 
      } 
    } 
    return ruleSet1;
  }
  
  protected void removeFromNameMap(Map<String, RuleSet> paramMap, String paramString, Rule paramRule) {
    if (paramMap != null) {
      RuleSet ruleSet = paramMap.get(paramString);
      if (ruleSet != null)
        ruleSet.removeRule(paramRule); 
    } 
  }
  
  public void removeRule(Rule paramRule) {
    NodeType nodeType = paramRule.getMatchType();
    String str = paramRule.getMatchesNodeName();
    if (str != null) {
      switch (Mode$1.$SwitchMap$org$dom4j$NodeType[nodeType.ordinal()]) {
        default:
          getRuleSet(nodeType).removeRule(paramRule);
          if (nodeType == NodeType.ANY_NODE)
            getRuleSet(NodeType.ANY_NODE).removeRule(paramRule); 
          return;
        case 1:
          removeFromNameMap(this.elementNameRuleSets, str, paramRule);
        case 2:
          break;
      } 
      removeFromNameMap(this.attributeNameRuleSets, str, paramRule);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\rule\Mode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */