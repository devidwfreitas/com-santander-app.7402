.class public Lgbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkz;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkz;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lgbd;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "pais"
.end annotation


# instance fields
.field private codigoPais:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private demaisPaises:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomePais:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ordem:I
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private preferencial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lgbd;->nomePais:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lgbd;->ordem:I

    return v0
.end method

.method public a(Lgbd;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    .line 88
    iget v1, p0, Lgbd;->ordem:I

    iget v2, p1, Lgbd;->ordem:I

    if-le v1, v2, :cond_1

    .line 89
    const/4 v0, 0x1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget v1, p0, Lgbd;->ordem:I

    iget v2, p1, Lgbd;->ordem:I

    if-ge v1, v2, :cond_2

    .line 91
    const/4 v0, -0x1

    goto :goto_0

    .line 92
    :cond_2
    iget v1, p0, Lgbd;->ordem:I

    iget v2, p1, Lgbd;->ordem:I

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lgbd;->ordem:I

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lgbd;->codigoPais:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lgbd;->demaisPaises:Z

    .line 49
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lgbd;->nomePais:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lgbd;->demaisPaises:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgbd;->codigoPais:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lgbd;->preferencial:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lgbd;

    invoke-virtual {p0, p1}, Lgbd;->a(Lgbd;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgbd;->nomePais:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgbd;->preferencial:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lgbd;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
