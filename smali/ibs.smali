.class public Libs;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Libs;->flExibir:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Libs;->ordem:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Libs;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 38
    iget v1, p0, Libs;->ordem:I

    move-object v0, p1

    check-cast v0, Libs;

    invoke-virtual {v0}, Libs;->b()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 39
    const/4 v0, -0x1

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    iget v0, p0, Libs;->ordem:I

    check-cast p1, Libs;

    invoke-virtual {p1}, Libs;->b()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 42
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
