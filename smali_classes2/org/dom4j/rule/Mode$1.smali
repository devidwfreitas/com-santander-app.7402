.class synthetic Lorg/dom4j/rule/Mode$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$org$dom4j$NodeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lorg/dom4j/NodeType;->values()[Lorg/dom4j/NodeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/dom4j/rule/Mode$1;->$SwitchMap$org$dom4j$NodeType:[I

    :try_start_0
    sget-object v0, Lorg/dom4j/rule/Mode$1;->$SwitchMap$org$dom4j$NodeType:[I

    sget-object v1, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/dom4j/rule/Mode$1;->$SwitchMap$org$dom4j$NodeType:[I

    sget-object v1, Lorg/dom4j/NodeType;->ATTRIBUTE_NODE:Lorg/dom4j/NodeType;

    invoke-virtual {v1}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
