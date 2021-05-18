.class public Lggu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "cartoes"
.end annotation


# instance fields
.field private bandeira:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private imagem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private limiteCredito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private limiteFinal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private limiteInicial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private modalidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numero:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroFinal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private plastico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private situacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private textoCombo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private titular:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private validade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private vencimentoFatura:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lggu;->bandeira:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lggu;->bandeira:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lggu;->limiteCredito:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lggu;->limiteCredito:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lggu;->limiteFinal:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lggu;->limiteFinal:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lggu;->limiteInicial:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lggu;->limiteInicial:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lggu;->modalidade:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lggu;->modalidade:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lggu;->numero:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lggu;->numero:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lggu;->numeroFinal:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lggu;->numeroFinal:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lggu;->situacao:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lggu;->situacao:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lggu;->textoCombo:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lggu;->textoCombo:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lggu;->titular:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lggu;->titular:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lggu;->validade:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lggu;->validade:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lggu;->vencimentoFatura:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lggu;->vencimentoFatura:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lggu;->imagem:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lggu;->imagem:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lggu;->plastico:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lggu;->plastico:Ljava/lang/String;

    .line 168
    return-void
.end method
