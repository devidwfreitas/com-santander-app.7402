.class public Lorg/dom4j/rule/Mode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributeNameRuleSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/dom4j/rule/RuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private elementNameRuleSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/dom4j/rule/RuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private ruleSets:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lorg/dom4j/NodeType;",
            "Lorg/dom4j/rule/RuleSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/dom4j/NodeType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:Ljava/util/EnumMap;

    .line 39
    return-void
.end method


# virtual methods
.method public addRule(Lorg/dom4j/rule/Rule;)V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchType()Lorg/dom4j/NodeType;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    sget-object v2, Lorg/dom4j/rule/Mode$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    sget-object v0, Lorg/dom4j/NodeType;->ANY_NODE:Lorg/dom4j/NodeType;

    if-ne v1, v0, :cond_2

    .line 101
    iget-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    goto :goto_1

    .line 87
    :pswitch_0
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v2, v0, p1}, Lorg/dom4j/rule/Mode;->addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v2, v0, p1}, Lorg/dom4j/rule/Mode;->addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0, v1}, Lorg/dom4j/rule/Mode;->getRuleSet(Lorg/dom4j/NodeType;)Lorg/dom4j/rule/RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 109
    return-void

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected addToNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/dom4j/rule/RuleSet;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/dom4j/rule/Rule;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/dom4j/rule/RuleSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 244
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 246
    if-nez v0, :cond_1

    .line 247
    new-instance v0, Lorg/dom4j/rule/RuleSet;

    invoke-direct {v0}, Lorg/dom4j/rule/RuleSet;-><init>()V

    .line 248
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_1
    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleSet;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 253
    return-object p1
.end method

.method public applyTemplates(Lorg/dom4j/Document;)V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 75
    invoke-interface {p1, v0}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 76
    invoke-virtual {p0, v2}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public applyTemplates(Lorg/dom4j/Element;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 63
    invoke-interface {p1, v1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v3

    .line 64
    invoke-virtual {p0, v3}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 68
    invoke-interface {p1, v0}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 69
    invoke-virtual {p0, v2}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_1
    return-void
.end method

.method public fireRule(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Mode;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lorg/dom4j/rule/Rule;->getAction()Lorg/dom4j/rule/Action;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lorg/dom4j/rule/Action;->run(Lorg/dom4j/Node;)V

    .line 59
    :cond_0
    return-void
.end method

.method public getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;
    .locals 3

    .prologue
    .line 146
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v2

    .line 148
    sget-object v0, Lorg/dom4j/rule/Mode$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-virtual {v2}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:Ljava/util/EnumMap;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 187
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v1

    .line 192
    :cond_1
    if-nez v1, :cond_2

    sget-object v0, Lorg/dom4j/NodeType;->ANY_NODE:Lorg/dom4j/NodeType;

    if-eq v2, v0, :cond_2

    .line 194
    iget-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:Ljava/util/EnumMap;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 196
    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->getMatchingRule(Lorg/dom4j/Node;)Lorg/dom4j/rule/Rule;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getRuleSet(Lorg/dom4j/NodeType;)Lorg/dom4j/rule/RuleSet;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 214
    if-nez v0, :cond_1

    .line 215
    new-instance v1, Lorg/dom4j/rule/RuleSet;

    invoke-direct {v1}, Lorg/dom4j/rule/RuleSet;-><init>()V

    .line 216
    iget-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/dom4j/NodeType;->ANY_NODE:Lorg/dom4j/NodeType;

    if-eq p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/dom4j/rule/Mode;->ruleSets:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v1, v0}, Lorg/dom4j/rule/RuleSet;->addAll(Lorg/dom4j/rule/RuleSet;)V

    :cond_0
    move-object v0, v1

    .line 228
    :cond_1
    return-object v0
.end method

.method protected removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/dom4j/rule/RuleSet;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/dom4j/rule/Rule;",
            ")V"
        }
    .end annotation

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/rule/RuleSet;

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p3}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    .line 264
    :cond_0
    return-void
.end method

.method public removeRule(Lorg/dom4j/rule/Rule;)V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchType()Lorg/dom4j/NodeType;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lorg/dom4j/rule/Rule;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    sget-object v2, Lorg/dom4j/rule/Mode$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-virtual {v0}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lorg/dom4j/rule/Mode;->getRuleSet(Lorg/dom4j/NodeType;)Lorg/dom4j/rule/RuleSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    .line 133
    sget-object v1, Lorg/dom4j/NodeType;->ANY_NODE:Lorg/dom4j/NodeType;

    if-ne v0, v1, :cond_1

    .line 134
    sget-object v0, Lorg/dom4j/NodeType;->ANY_NODE:Lorg/dom4j/NodeType;

    invoke-virtual {p0, v0}, Lorg/dom4j/rule/Mode;->getRuleSet(Lorg/dom4j/NodeType;)Lorg/dom4j/rule/RuleSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleSet;->removeRule(Lorg/dom4j/rule/Rule;)V

    .line 136
    :cond_1
    return-void

    .line 118
    :pswitch_0
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->elementNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v2, v1, p1}, Lorg/dom4j/rule/Mode;->removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v2, p0, Lorg/dom4j/rule/Mode;->attributeNameRuleSets:Ljava/util/Map;

    invoke-virtual {p0, v2, v1, p1}, Lorg/dom4j/rule/Mode;->removeFromNameMap(Ljava/util/Map;Ljava/lang/String;Lorg/dom4j/rule/Rule;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
