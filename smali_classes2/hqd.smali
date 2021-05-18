.class public Lhqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqa;


# static fields
.field private static final d:I = 0x1a4

.field private static final e:I = 0xc8

.field private static final f:Ljava/lang/String; = "ConsignadoInteractor"


# instance fields
.field private a:Lhxo;

.field private b:Lhtp;

.field private c:Lhpz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->u()Lhkr;

    move-result-object v0

    invoke-interface {v0}, Lhkr;->a()Lhxo;

    move-result-object v0

    iput-object v0, p0, Lhqd;->a:Lhxo;

    .line 44
    new-instance v0, Lhtq;

    invoke-direct {v0}, Lhtq;-><init>()V

    iput-object v0, p0, Lhqd;->b:Lhtp;

    .line 45
    return-void
.end method

.method private a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lhqd;->a()Lhxq;

    move-result-object v0

    check-cast v0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSetter;

    .line 144
    invoke-direct {p0}, Lhqd;->d()Lhpz;

    move-result-object v1

    invoke-virtual {v1}, Lhpz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSetter;->setAverbationCode(Ljava/lang/String;)V

    .line 145
    invoke-interface {v0, p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSetter;->setSimulation(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V

    .line 146
    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSetter;->setQuente()V

    .line 147
    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSetter;->update()V

    .line 148
    return-void
.end method

.method static synthetic a(Lhqd;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lhqd;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V

    return-void
.end method

.method private d()Lhpz;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lhqd;->c:Lhpz;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lhpz;

    invoke-virtual {p0}, Lhqd;->a()Lhxq;

    move-result-object v1

    invoke-direct {v0, v1}, Lhpz;-><init>(Lhxq;)V

    iput-object v0, p0, Lhqd;->c:Lhpz;

    .line 174
    :cond_0
    iget-object v0, p0, Lhqd;->c:Lhpz;

    return-object v0
.end method


# virtual methods
.method public a()Lhxq;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lhqd;->a:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    return-object v0
.end method

.method public a(Lhqb;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lhqd;->b:Lhtp;

    new-instance v1, Lhqe;

    invoke-direct {v1, p0, p1}, Lhqe;-><init>(Lhqd;Lhqb;)V

    invoke-interface {v0, v1}, Lhtp;->a(Lgkw;)V

    .line 106
    return-void
.end method

.method public a(Lhqc;)V
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0}, Lhqd;->d()Lhpz;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    invoke-interface {p1}, Lhqc;->b()V

    .line 140
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lhqd;->d()Lhpz;

    move-result-object v0

    invoke-virtual {v0}, Lhpz;->c()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    iget-object v1, p0, Lhqd;->b:Lhtp;

    new-instance v2, Lhqf;

    invoke-direct {v2, p0, p1}, Lhqf;-><init>(Lhqd;Lhqc;)V

    invoke-interface {v1, v0, v2}, Lhtp;->a(Lorg/json/JSONObject;Lhtm;)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-interface {p1}, Lhqc;->b()V

    goto :goto_0
.end method

.method public a(Lhxq;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lhqd;->a:Lhxo;

    invoke-virtual {v0, p1}, Lhxo;->a(Lhxq;)V

    .line 158
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoDadoObrigatorio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lhqd;->d()Lhpz;

    move-result-object v0

    invoke-virtual {v0}, Lhpz;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lhqd;->d()Lhpz;

    move-result-object v0

    invoke-virtual {v0}, Lhpz;->b()Z

    move-result v0

    return v0
.end method
