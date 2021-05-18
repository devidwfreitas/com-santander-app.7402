.class public Lorg/dom4j/rule/pattern/NodeTypePattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/rule/Pattern;


# static fields
.field public static final ANY_ATTRIBUTE:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_COMMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_DOCUMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_ELEMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_PROCESSING_INSTRUCTION:Lorg/dom4j/rule/pattern/NodeTypePattern;

.field public static final ANY_TEXT:Lorg/dom4j/rule/pattern/NodeTypePattern;


# instance fields
.field private nodeType:Lorg/dom4j/NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    sget-object v1, Lorg/dom4j/NodeType;->ATTRIBUTE_NODE:Lorg/dom4j/NodeType;

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(Lorg/dom4j/NodeType;)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_ATTRIBUTE:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 33
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    sget-object v1, Lorg/dom4j/NodeType;->COMMENT_NODE:Lorg/dom4j/NodeType;

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(Lorg/dom4j/NodeType;)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_COMMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 39
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    sget-object v1, Lorg/dom4j/NodeType;->DOCUMENT_NODE:Lorg/dom4j/NodeType;

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(Lorg/dom4j/NodeType;)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_DOCUMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 45
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    sget-object v1, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(Lorg/dom4j/NodeType;)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_ELEMENT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 51
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    sget-object v1, Lorg/dom4j/NodeType;->PROCESSING_INSTRUCTION_NODE:Lorg/dom4j/NodeType;

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(Lorg/dom4j/NodeType;)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_PROCESSING_INSTRUCTION:Lorg/dom4j/rule/pattern/NodeTypePattern;

    .line 57
    new-instance v0, Lorg/dom4j/rule/pattern/NodeTypePattern;

    sget-object v1, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    invoke-direct {v0, v1}, Lorg/dom4j/rule/pattern/NodeTypePattern;-><init>(Lorg/dom4j/NodeType;)V

    sput-object v0, Lorg/dom4j/rule/pattern/NodeTypePattern;->ANY_TEXT:Lorg/dom4j/rule/pattern/NodeTypePattern;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/NodeType;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:Lorg/dom4j/NodeType;

    .line 64
    return-void
.end method


# virtual methods
.method public getMatchType()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public getMatchesNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()D
    .locals 2

    .prologue
    .line 71
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    return-wide v0
.end method

.method public getUnionPatterns()[Lorg/dom4j/rule/Pattern;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .locals 2

    .prologue
    .line 67
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/rule/pattern/NodeTypePattern;->nodeType:Lorg/dom4j/NodeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
