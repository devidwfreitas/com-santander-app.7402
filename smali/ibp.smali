.class public Libp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# instance fields
.field private descricao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flExibir:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ordem:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private respostas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Libs;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        required = false
    .end annotation
.end field

.field private tagAppCelerator:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Libp;->tagAppCelerator:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Libp;->flExibir:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Libp;->ordem:I

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 52
    iget v1, p0, Libp;->ordem:I

    move-object v0, p1

    check-cast v0, Libp;

    invoke-virtual {v0}, Libp;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 53
    const/4 v0, -0x1

    .line 58
    :goto_0
    return v0

    .line 55
    :cond_0
    iget v0, p0, Libp;->ordem:I

    check-cast p1, Libp;

    invoke-virtual {p1}, Libp;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Libp;->descricao:Ljava/lang/String;

    const-string v1, "\\n"

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Libs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Libp;->respostas:Ljava/util/List;

    return-object v0
.end method
