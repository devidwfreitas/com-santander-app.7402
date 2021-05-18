.class public Lorg/dom4j/rule/Stylesheet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private modeName:Ljava/lang/String;

.field private ruleManager:Lorg/dom4j/rule/RuleManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/dom4j/rule/RuleManager;

    invoke-direct {v0}, Lorg/dom4j/rule/RuleManager;-><init>()V

    iput-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    .line 40
    return-void
.end method


# virtual methods
.method public addRule(Lorg/dom4j/rule/Rule;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 49
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v1, p2}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object v1

    .line 200
    instance-of v2, p1, Lorg/dom4j/Element;

    if-eqz v2, :cond_0

    .line 202
    check-cast p1, Lorg/dom4j/Element;

    .line 203
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_4

    .line 204
    invoke-interface {p1, v0}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 205
    invoke-virtual {v1, v3}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    instance-of v2, p1, Lorg/dom4j/Document;

    if-eqz v2, :cond_1

    .line 209
    check-cast p1, Lorg/dom4j/Document;

    .line 210
    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_4

    .line 211
    invoke-interface {p1, v0}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 212
    invoke-virtual {v1, v3}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_1
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 215
    check-cast p1, Ljava/util/List;

    .line 217
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_4

    .line 218
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 220
    instance-of v3, v0, Lorg/dom4j/Element;

    if-eqz v3, :cond_3

    .line 221
    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    :cond_2
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 222
    :cond_3
    instance-of v3, v0, Lorg/dom4j/Document;

    if-eqz v3, :cond_2

    .line 223
    check-cast v0, Lorg/dom4j/Document;

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 227
    :cond_4
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object v1

    .line 127
    invoke-interface {p2, p1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 131
    invoke-virtual {v1, v0}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/jaxen/XPath;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Lorg/jaxen/XPath;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/jaxen/XPath;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object v1

    .line 164
    invoke-interface {p2, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 166
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 168
    invoke-virtual {v1, v0}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0}, Lorg/dom4j/rule/RuleManager;->clear()V

    .line 231
    return-void
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    return-object v0
.end method

.method public getValueOfAction()Lorg/dom4j/rule/Action;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0}, Lorg/dom4j/rule/RuleManager;->getValueOfAction()Lorg/dom4j/rule/Action;

    move-result-object v0

    return-object v0
.end method

.method public removeRule(Lorg/dom4j/rule/Rule;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->removeRule(Lorg/dom4j/rule/Rule;)V

    .line 58
    return-void
.end method

.method public run(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->run(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public run(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_1

    .line 73
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/rule/Stylesheet;->run(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->run(Ljava/util/List;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public run(Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 87
    instance-of v3, v0, Lorg/dom4j/Node;

    if-eqz v3, :cond_0

    .line 88
    check-cast v0, Lorg/dom4j/Node;

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 84
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public run(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public run(Lorg/dom4j/Node;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p2}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 100
    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setValueOfAction(Lorg/dom4j/rule/Action;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->setValueOfAction(Lorg/dom4j/rule/Action;)V

    .line 272
    return-void
.end method
