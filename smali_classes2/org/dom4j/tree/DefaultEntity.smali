.class public Lorg/dom4j/tree/DefaultEntity;
.super Lorg/dom4j/tree/FlyweightEntity;
.source "SourceFile"


# instance fields
.field private parent:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FlyweightEntity;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/FlyweightEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p2, p3}, Lorg/dom4j/tree/FlyweightEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lorg/dom4j/tree/DefaultEntity;->parent:Lorg/dom4j/Element;

    .line 57
    return-void
.end method


# virtual methods
.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/dom4j/tree/DefaultEntity;->parent:Lorg/dom4j/Element;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/dom4j/tree/DefaultEntity;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/dom4j/tree/DefaultEntity;->parent:Lorg/dom4j/Element;

    .line 77
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/dom4j/tree/DefaultEntity;->text:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method
