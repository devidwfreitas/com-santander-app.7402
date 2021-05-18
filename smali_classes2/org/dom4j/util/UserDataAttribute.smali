.class public Lorg/dom4j/util/UserDataAttribute;
.super Lorg/dom4j/tree/DefaultAttribute;
.source "SourceFile"


# instance fields
.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/QName;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/dom4j/util/UserDataAttribute;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/dom4j/util/UserDataAttribute;->data:Ljava/lang/Object;

    .line 45
    return-void
.end method
