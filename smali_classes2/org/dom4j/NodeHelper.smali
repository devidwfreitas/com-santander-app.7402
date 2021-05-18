.class public final Lorg/dom4j/NodeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BRANCH_TYPE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lorg/dom4j/NodeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-class v0, Lorg/dom4j/NodeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/dom4j/NodeHelper;->$assertionsDisabled:Z

    .line 15
    sget-object v0, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    sget-object v1, Lorg/dom4j/NodeType;->DOCUMENT_NODE:Lorg/dom4j/NodeType;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/dom4j/NodeHelper;->BRANCH_TYPE:Ljava/util/EnumSet;

    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static appendElementLocal(Lorg/dom4j/Node;Lorg/dom4j/tree/BackedList;)Lorg/dom4j/tree/BackedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Node;",
            "Lorg/dom4j/tree/BackedList",
            "<",
            "Lorg/dom4j/Element;",
            ">;)",
            "Lorg/dom4j/tree/BackedList",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 79
    :cond_0
    return-object p1
.end method

.method public static appendElementNamedLocal(Lorg/dom4j/Node;Lorg/dom4j/tree/BackedList;Ljava/lang/String;)Lorg/dom4j/tree/BackedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Node;",
            "Lorg/dom4j/tree/BackedList",
            "<",
            "Lorg/dom4j/Element;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/dom4j/tree/BackedList",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 88
    :cond_0
    return-object p1
.end method

.method public static appendElementQNamedLocal(Lorg/dom4j/Node;Lorg/dom4j/tree/BackedList;Lorg/dom4j/QName;)Lorg/dom4j/tree/BackedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Node;",
            "Lorg/dom4j/tree/BackedList",
            "<",
            "Lorg/dom4j/Element;",
            ">;",
            "Lorg/dom4j/QName;",
            ")",
            "Lorg/dom4j/tree/BackedList",
            "<",
            "Lorg/dom4j/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lorg/dom4j/NodeHelper;->nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1, v0}, Lorg/dom4j/tree/BackedList;->addLocal(Lorg/dom4j/Node;)V

    .line 97
    :cond_0
    return-object p1
.end method

.method public static getAttributeValue(Lorg/dom4j/Attribute;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 101
    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {p0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static nodeAsAttribute(Lorg/dom4j/Node;)Lorg/dom4j/Attribute;
    .locals 2

    .prologue
    .line 21
    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    sget-object v1, Lorg/dom4j/NodeType;->ATTRIBUTE_NODE:Lorg/dom4j/NodeType;

    if-ne v0, v1, :cond_1

    .line 22
    sget-boolean v0, Lorg/dom4j/NodeHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/dom4j/Attribute;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    check-cast p0, Lorg/dom4j/Attribute;

    .line 25
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static nodeAsBranch(Lorg/dom4j/Node;)Lorg/dom4j/Branch;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lorg/dom4j/NodeHelper;->BRANCH_TYPE:Ljava/util/EnumSet;

    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeType()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-boolean v0, Lorg/dom4j/NodeHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/dom4j/Branch;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    check-cast p0, Lorg/dom4j/Branch;

    .line 33
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static nodeAsDocument(Lorg/dom4j/Node;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 37
    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    sget-object v1, Lorg/dom4j/NodeType;->DOCUMENT_NODE:Lorg/dom4j/NodeType;

    if-ne v0, v1, :cond_1

    .line 38
    sget-boolean v0, Lorg/dom4j/NodeHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/dom4j/Document;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    check-cast p0, Lorg/dom4j/Document;

    .line 41
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static nodeAsElement(Lorg/dom4j/Node;)Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 50
    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    sget-object v1, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    if-ne v0, v1, :cond_1

    .line 51
    sget-boolean v0, Lorg/dom4j/NodeHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/dom4j/Element;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    check-cast p0, Lorg/dom4j/Element;

    .line 54
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static nodeAsNamespace(Lorg/dom4j/Node;)Lorg/dom4j/Namespace;
    .locals 2

    .prologue
    .line 58
    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    sget-object v1, Lorg/dom4j/NodeType;->NAMESPACE_NODE:Lorg/dom4j/NodeType;

    if-ne v0, v1, :cond_1

    .line 59
    sget-boolean v0, Lorg/dom4j/NodeHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    check-cast p0, Lorg/dom4j/Namespace;

    .line 62
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static nodeAsProcessingInstruction(Lorg/dom4j/Node;)Lorg/dom4j/ProcessingInstruction;
    .locals 2

    .prologue
    .line 66
    invoke-interface {p0}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    sget-object v1, Lorg/dom4j/NodeType;->PROCESSING_INSTRUCTION_NODE:Lorg/dom4j/NodeType;

    if-ne v0, v1, :cond_1

    .line 67
    sget-boolean v0, Lorg/dom4j/NodeHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/dom4j/ProcessingInstruction;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    check-cast p0, Lorg/dom4j/ProcessingInstruction;

    .line 70
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method
