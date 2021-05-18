.class public Lfgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lcom/santander/app/CadastramentoFacturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/CadastramentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lfgr;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lfgr;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->d(Lcom/santander/app/CadastramentoFacturaActivity;)V

    .line 132
    iget-object v0, p0, Lfgr;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoFacturaActivity;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgr;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoFacturaActivity;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lfgr;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v0, v0, Lcom/santander/app/CadastramentoFacturaActivity;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 134
    iget-object v0, p0, Lfgr;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/santander/app/CadastramentoFacturaActivity;->b:Landroid/app/Dialog;

    .line 136
    :cond_0
    return-void
.end method
