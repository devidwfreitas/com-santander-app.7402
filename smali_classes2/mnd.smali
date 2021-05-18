.class Lmnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lcom/santander/app/contacorrente/domain/Conta;

.field final synthetic b:Lmnc;


# direct methods
.method constructor <init>(Lmnc;Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lmnd;->b:Lmnc;

    iput-object p2, p0, Lmnd;->a:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 70
    check-cast p1, Lmkt;

    .line 71
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmkt;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmkt;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lmnd;->b:Lmnc;

    invoke-static {v0}, Lmnc;->a(Lmnc;)Lmqc;

    sput-object p1, Lmqc;->a:Lmkt;

    .line 75
    iget-object v0, p0, Lmnd;->b:Lmnc;

    invoke-static {v0}, Lmnc;->a(Lmnc;)Lmqc;

    iget-object v0, p0, Lmnd;->a:Lcom/santander/app/contacorrente/domain/Conta;

    sput-object v0, Lmqc;->b:Lcom/santander/app/contacorrente/domain/Conta;

    .line 77
    iget-object v0, p0, Lmnd;->b:Lmnc;

    invoke-static {v0}, Lmnc;->b(Lmnc;)Lmnb;

    move-result-object v0

    invoke-interface {v0, p1}, Lmnb;->a(Lmkt;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lmnd;->b:Lmnc;

    invoke-static {v0}, Lmnc;->b(Lmnc;)Lmnb;

    move-result-object v0

    const-string v1, "Toque no bot\u00e3o abaixo para cadastrar um novo favorecido."

    invoke-interface {v0, v1}, Lmnb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
