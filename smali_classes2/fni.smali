.class public Lfni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwc;


# instance fields
.field final synthetic a:Lcom/santander/app/SaldoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/SaldoActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lfni;->a:Lcom/santander/app/SaldoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lfni;->a:Lcom/santander/app/SaldoActivity;

    invoke-static {v0, p1}, Lcom/santander/app/SaldoActivity;->a(Lcom/santander/app/SaldoActivity;Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)Lcom/santander/app/contacorrente/domain/SaldoDetalhado;

    .line 107
    iget-object v0, p0, Lfni;->a:Lcom/santander/app/SaldoActivity;

    invoke-static {v0}, Lcom/santander/app/SaldoActivity;->b(Lcom/santander/app/SaldoActivity;)V

    .line 108
    iget-object v0, p0, Lfni;->a:Lcom/santander/app/SaldoActivity;

    invoke-static {v0}, Lcom/santander/app/SaldoActivity;->c(Lcom/santander/app/SaldoActivity;)V

    .line 109
    return-void
.end method

.method public b(Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lfni;->a:Lcom/santander/app/SaldoActivity;

    invoke-static {v0}, Lcom/santander/app/SaldoActivity;->c(Lcom/santander/app/SaldoActivity;)V

    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-interface {p1}, Lcom/santander/app/contacorrente/domain/SaldoDetalhado;->getMensagemRetorno()Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_0
    iget-object v1, p0, Lfni;->a:Lcom/santander/app/SaldoActivity;

    invoke-static {v1, v0}, Lcom/santander/app/SaldoActivity;->a(Lcom/santander/app/SaldoActivity;Ljava/lang/String;)V

    .line 119
    return-void
.end method
