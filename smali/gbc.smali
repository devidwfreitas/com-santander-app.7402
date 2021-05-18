.class public Lgbc;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private codigoTaxaMoeda:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tagBloqueio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorCorrespondente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIR:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIof:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTarifaContrato:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTaxaCambial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorVET:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lgnb;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lgnb;-><init>()V

    .line 70
    iput-object p1, p0, Lgbc;->valorIof:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lgbc;->valorIR:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lgbc;->valorTarifaContrato:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lgbc;->valorVET:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lgbc;->valorTotal:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lgbc;->valorCorrespondente:Ljava/lang/String;

    .line 76
    iput-object p7, p0, Lgbc;->valorTaxaCambial:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public a()Lgbc;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbc;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lgbc;->tagBloqueio:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lgbc;->tagBloqueio:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgbc;->codigoTaxaMoeda:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgbc;->codigoTaxaMoeda:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lgbc;->valorIof:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lgbc;->a()Lgbc;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgbc;->valorIof:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lgbc;->valorIR:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lgbc;->valorIR:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lgbc;->valorTarifaContrato:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lgbc;->valorTarifaContrato:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lgbc;->valorVET:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lgbc;->valorVET:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lgbc;->valorTotal:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lgbc;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lgbc;->valorCorrespondente:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lgbc;->valorCorrespondente:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lgbc;->valorTaxaCambial:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lgbc;->valorTaxaCambial:Ljava/lang/String;

    return-object v0
.end method
