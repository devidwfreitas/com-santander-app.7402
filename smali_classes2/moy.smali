.class public Lmoy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lmoy;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 178
    const-string v0, "Transferencia_Acao"

    const-string v1, "BotaoTransferir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lmoy;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->i(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmqa;

    move-result-object v0

    iget-object v1, p0, Lmoy;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->h(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmlo;

    move-result-object v1

    invoke-interface {v0, v1}, Lmqa;->a(Lmlo;)V

    .line 181
    return-void
.end method
