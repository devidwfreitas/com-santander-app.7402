.class public Ljdf;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private a:Ljava/lang/Double;

.field private categoriasInvestimentos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdb;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "categoriasInvestimentos"
        required = false
    .end annotation
.end field

.field private grafico:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private questionario:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private saldoBrutoTotal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Ljdf;->a:Ljava/lang/Double;

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Ljdf;->saldoBrutoTotal:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Ljdf;->categoriasInvestimentos:Ljava/util/List;

    .line 67
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Ljdf;->questionario:Z

    .line 43
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Ljdf;->questionario:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Ljdf;->grafico:Z

    .line 51
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Ljdf;->grafico:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ljdf;->saldoBrutoTotal:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljdb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Ljdf;->categoriasInvestimentos:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Ljdf;->a:Ljava/lang/Double;

    .line 76
    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    const-string v3, "BR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "R$"

    const-string v2, "R$ "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v0, "R$ 0,00"

    goto :goto_0
.end method
