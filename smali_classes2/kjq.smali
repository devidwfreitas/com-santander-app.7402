.class Lkjq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lkjo;


# direct methods
.method constructor <init>(Lkjo;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lkjq;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 378
    const-string v1, "Outros_RecargaDeTelefone_RecargaProgramada_Acao"

    if-nez p1, :cond_0

    const-string v0, "Semanal"

    :goto_0
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lkjq;->a:Lkjo;

    invoke-static {v0}, Lkjo;->d(Lkjo;)V

    .line 380
    return-void

    .line 378
    :cond_0
    const-string v0, "Mensal"

    goto :goto_0
.end method
