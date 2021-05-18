.class public Lmnt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lmnt;->a:Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmnt;->a:Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    iget-object v1, p0, Lmnt;->a:Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 145
    const v2, 0x7f04017e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090190

    new-instance v3, Lmnv;

    invoke-direct {v3, p0}, Lmnv;-><init>(Lmnt;)V

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09018e

    new-instance v3, Lmnu;

    invoke-direct {v3, p0}, Lmnu;-><init>(Lmnt;)V

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    iget-object v1, p0, Lmnt;->a:Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->a(Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 159
    iget-object v0, p0, Lmnt;->a:Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;->a(Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void
.end method
