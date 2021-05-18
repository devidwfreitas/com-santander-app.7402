.class public Ljsu;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "pagamentoResponse"
.end annotation


# instance fields
.field private dtVencimentoYYYYMMDD:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagOfertaDebitoAutomatico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagPagamentoCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private listaFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "fields"
        required = false
    .end annotation
.end field

.field private tipoLogger:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTaxaCartao:Ljava/lang/String;
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljsu;->flagOfertaDebitoAutomatico:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ljsu;->flagOfertaDebitoAutomatico:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Ljsu;->listaFields:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljsu;->flagPagamentoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ljsu;->flagPagamentoCartao:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljsu;->valorTaxaCartao:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ljsu;->valorTaxaCartao:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljsu;->tipoLogger:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Ljsu;->tipoLogger:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljsu;->dtVencimentoYYYYMMDD:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Ljsu;->dtVencimentoYYYYMMDD:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Ljsu;->listaFields:Ljava/util/ArrayList;

    return-object v0
.end method
