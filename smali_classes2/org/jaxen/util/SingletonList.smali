.class public Lorg/jaxen/util/SingletonList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field private final element:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/jaxen/util/SingletonList;->element:Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lorg/jaxen/util/SingletonList;->element:Ljava/lang/Object;

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " != 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method
