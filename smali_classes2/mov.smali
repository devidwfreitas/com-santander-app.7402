.class public Lmov;
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
    .line 151
    iput-object p1, p0, Lmov;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 154
    const-string v0, "Transferencia_Acao"

    const-string v1, "SelecionarContaCorrente"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lmov;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->f(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V

    .line 156
    return-void
.end method
