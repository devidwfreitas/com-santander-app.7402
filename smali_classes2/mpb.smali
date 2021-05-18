.class public Lmpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lmpb;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlr;

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmpb;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    iget-object v1, p0, Lmpb;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-virtual {v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 284
    const v2, 0x7f04017e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090190

    new-instance v2, Lmpd;

    invoke-direct {v2, p0}, Lmpd;-><init>(Lmpb;)V

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09018e

    new-instance v2, Lmpc;

    invoke-direct {v2, p0}, Lmpc;-><init>(Lmpb;)V

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    return v4
.end method
