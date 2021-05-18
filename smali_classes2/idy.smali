.class public Lidy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lidy;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 439
    iget-object v0, p0, Lidy;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f1008a4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 440
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lidy;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v1, v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lidy;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    new-instance v1, Liea;

    iget-object v2, p0, Lidy;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Liea;-><init>(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;Lidw;)V

    invoke-static {v0, v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->a(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;Liea;)Liea;

    .line 445
    iget-object v0, p0, Lidy;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->b(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Liea;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Liea;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 456
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lidy;->a:Lcom/santander/app/faturas/activity/DetalheFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/faturas/activity/DetalheFaturaActivity;->c(Lcom/santander/app/faturas/activity/DetalheFaturaActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Aten\u00e7\u00e3o"

    .line 448
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Favor informar o e-mail corretamente."

    .line 449
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lidz;

    invoke-direct {v2, p0}, Lidz;-><init>(Lidy;)V

    .line 450
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
