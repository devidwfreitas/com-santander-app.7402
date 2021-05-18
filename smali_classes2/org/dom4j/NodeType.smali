.class public final enum Lorg/dom4j/NodeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/dom4j/NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/dom4j/NodeType;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum ANY_NODE:Lorg/dom4j/NodeType;

.field public static final enum ATTRIBUTE_NODE:Lorg/dom4j/NodeType;

.field public static final enum CDATA_SECTION_NODE:Lorg/dom4j/NodeType;

.field public static final enum COMMENT_NODE:Lorg/dom4j/NodeType;

.field public static final enum DOCUMENT_FRAGMENT_NODE:Lorg/dom4j/NodeType;

.field public static final enum DOCUMENT_NODE:Lorg/dom4j/NodeType;

.field public static final enum DOCUMENT_TYPE_NODE:Lorg/dom4j/NodeType;

.field public static final enum ELEMENT_NODE:Lorg/dom4j/NodeType;

.field public static final enum ENTITY_NODE:Lorg/dom4j/NodeType;

.field public static final enum ENTITY_REFERENCE_NODE:Lorg/dom4j/NodeType;

.field public static final enum NAMESPACE_NODE:Lorg/dom4j/NodeType;

.field public static final enum NOTATION_NODE:Lorg/dom4j/NodeType;

.field public static final enum PROCESSING_INSTRUCTION_NODE:Lorg/dom4j/NodeType;

.field public static final enum TEXT_NODE:Lorg/dom4j/NodeType;

.field public static final enum UNKNOWN_NODE:Lorg/dom4j/NodeType;

.field private static final byCode:[Lorg/dom4j/NodeType;


# instance fields
.field private final code:S

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Lorg/dom4j/NodeType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/dom4j/NodeType;->$assertionsDisabled:Z

    .line 14
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "ANY_NODE"

    const-string v4, "Node"

    invoke-direct {v0, v3, v2, v2, v4}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->ANY_NODE:Lorg/dom4j/NodeType;

    .line 18
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "ELEMENT_NODE"

    const-string v4, "Element"

    invoke-direct {v0, v3, v1, v1, v4}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    .line 22
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "ATTRIBUTE_NODE"

    const-string v4, "Attribute"

    invoke-direct {v0, v3, v7, v7, v4}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->ATTRIBUTE_NODE:Lorg/dom4j/NodeType;

    .line 26
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "TEXT_NODE"

    const-string v4, "Text"

    invoke-direct {v0, v3, v8, v8, v4}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    .line 30
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "CDATA_SECTION_NODE"

    const-string v4, "CDATA"

    invoke-direct {v0, v3, v9, v9, v4}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->CDATA_SECTION_NODE:Lorg/dom4j/NodeType;

    .line 34
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "ENTITY_REFERENCE_NODE"

    const/4 v4, 0x5

    const/4 v5, 0x5

    const-string v6, "Entity"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->ENTITY_REFERENCE_NODE:Lorg/dom4j/NodeType;

    .line 38
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "ENTITY_NODE"

    const/4 v4, 0x6

    const/4 v5, 0x6

    const-string v6, "Entity"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->ENTITY_NODE:Lorg/dom4j/NodeType;

    .line 42
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "PROCESSING_INSTRUCTION_NODE"

    const/4 v4, 0x7

    const/4 v5, 0x7

    const-string v6, "ProcessingInstruction"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->PROCESSING_INSTRUCTION_NODE:Lorg/dom4j/NodeType;

    .line 46
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "COMMENT_NODE"

    const/16 v4, 0x8

    const/16 v5, 0x8

    const-string v6, "Comment"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->COMMENT_NODE:Lorg/dom4j/NodeType;

    .line 50
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "DOCUMENT_NODE"

    const/16 v4, 0x9

    const/16 v5, 0x9

    const-string v6, "Document"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->DOCUMENT_NODE:Lorg/dom4j/NodeType;

    .line 54
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "DOCUMENT_TYPE_NODE"

    const/16 v4, 0xa

    const/16 v5, 0xa

    const-string v6, "DocumentType"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->DOCUMENT_TYPE_NODE:Lorg/dom4j/NodeType;

    .line 55
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "DOCUMENT_FRAGMENT_NODE"

    const/16 v4, 0xb

    const/16 v5, 0xb

    const-string v6, "DocumentFragment"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->DOCUMENT_FRAGMENT_NODE:Lorg/dom4j/NodeType;

    .line 56
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "NOTATION_NODE"

    const/16 v4, 0xc

    const/16 v5, 0xc

    const-string v6, "Notation"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->NOTATION_NODE:Lorg/dom4j/NodeType;

    .line 60
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "NAMESPACE_NODE"

    const/16 v4, 0xd

    const/16 v5, 0xd

    const-string v6, "Namespace"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->NAMESPACE_NODE:Lorg/dom4j/NodeType;

    .line 64
    new-instance v0, Lorg/dom4j/NodeType;

    const-string v3, "UNKNOWN_NODE"

    const/16 v4, 0xe

    const/16 v5, 0xe

    const-string v6, "Unknown"

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/dom4j/NodeType;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lorg/dom4j/NodeType;->UNKNOWN_NODE:Lorg/dom4j/NodeType;

    .line 9
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/dom4j/NodeType;

    sget-object v3, Lorg/dom4j/NodeType;->ANY_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v2

    sget-object v3, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    sget-object v1, Lorg/dom4j/NodeType;->ATTRIBUTE_NODE:Lorg/dom4j/NodeType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/dom4j/NodeType;->CDATA_SECTION_NODE:Lorg/dom4j/NodeType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v3, Lorg/dom4j/NodeType;->ENTITY_REFERENCE_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lorg/dom4j/NodeType;->ENTITY_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lorg/dom4j/NodeType;->PROCESSING_INSTRUCTION_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lorg/dom4j/NodeType;->COMMENT_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget-object v3, Lorg/dom4j/NodeType;->DOCUMENT_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    sget-object v3, Lorg/dom4j/NodeType;->DOCUMENT_TYPE_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    sget-object v3, Lorg/dom4j/NodeType;->DOCUMENT_FRAGMENT_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    sget-object v3, Lorg/dom4j/NodeType;->NOTATION_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    sget-object v3, Lorg/dom4j/NodeType;->NAMESPACE_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    sget-object v3, Lorg/dom4j/NodeType;->UNKNOWN_NODE:Lorg/dom4j/NodeType;

    aput-object v3, v0, v1

    sput-object v0, Lorg/dom4j/NodeType;->$VALUES:[Lorg/dom4j/NodeType;

    .line 68
    invoke-static {}, Lorg/dom4j/NodeType;->values()[Lorg/dom4j/NodeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lorg/dom4j/NodeType;

    sput-object v0, Lorg/dom4j/NodeType;->byCode:[Lorg/dom4j/NodeType;

    .line 71
    invoke-static {}, Lorg/dom4j/NodeType;->values()[Lorg/dom4j/NodeType;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 72
    sget-object v4, Lorg/dom4j/NodeType;->byCode:[Lorg/dom4j/NodeType;

    iget-short v5, v3, Lorg/dom4j/NodeType;->code:S

    aput-object v3, v4, v5

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 9
    goto/16 :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-short p3, p0, Lorg/dom4j/NodeType;->code:S

    .line 78
    iput-object p4, p0, Lorg/dom4j/NodeType;->name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static byCode(S)Lorg/dom4j/NodeType;
    .locals 2

    .prologue
    .line 93
    if-ltz p0, :cond_0

    sget-object v0, Lorg/dom4j/NodeType;->byCode:[Lorg/dom4j/NodeType;

    array-length v0, v0

    if-lt p0, v0, :cond_2

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 98
    :cond_1
    return-object v0

    .line 96
    :cond_2
    sget-object v0, Lorg/dom4j/NodeType;->byCode:[Lorg/dom4j/NodeType;

    aget-object v0, v0, p0

    .line 97
    sget-boolean v1, Lorg/dom4j/NodeType;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lorg/dom4j/NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/dom4j/NodeType;

    return-object v0
.end method

.method public static values()[Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lorg/dom4j/NodeType;->$VALUES:[Lorg/dom4j/NodeType;

    invoke-virtual {v0}, [Lorg/dom4j/NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/dom4j/NodeType;

    return-object v0
.end method


# virtual methods
.method public getCode()S
    .locals 1

    .prologue
    .line 85
    iget-short v0, p0, Lorg/dom4j/NodeType;->code:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/dom4j/NodeType;->name:Ljava/lang/String;

    return-object v0
.end method
