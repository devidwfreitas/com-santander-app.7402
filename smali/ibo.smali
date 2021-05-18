.class public Libo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# instance fields
.field private codAgrupamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flExibir:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private imagem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeExibicaoAgrupamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ordem:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private questoes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Libp;",
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
    .line 35
    iget-object v0, p0, Libo;->codAgrupamento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Libo;->nomeExibicaoAgrupamento:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Libo;->flExibir:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Libo;->imagem:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 70
    iget v1, p0, Libo;->ordem:I

    move-object v0, p1

    check-cast v0, Libo;

    invoke-virtual {v0}, Libo;->e()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 71
    const/4 v0, -0x1

    .line 76
    :goto_0
    return v0

    .line 73
    :cond_0
    iget v0, p0, Libo;->ordem:I

    check-cast p1, Libo;

    invoke-virtual {p1}, Libo;->e()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Libo;->nomeExibicaoAgrupamento:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Libo;->ordem:I

    return v0
.end method

.method public f()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Libp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Libo;->questoes:Ljava/util/LinkedList;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Libo;->tagAppCelerator:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Libo;->nomeExibicaoAgrupamento:Ljava/lang/String;

    return-object v0
.end method
