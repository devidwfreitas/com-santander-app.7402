.class public Lhgp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lhgp;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 129
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 131
    iget-object v0, p0, Lhgp;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;

    iget-object v0, v0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhgp;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;

    const-class v2, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    :goto_0
    iget-object v1, p0, Lhgp;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    :cond_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhgp;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
