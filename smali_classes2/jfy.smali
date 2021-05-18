.class public Ljfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Ljfy;->c:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    iput-object p2, p0, Ljfy;->a:Landroid/app/Dialog;

    iput-object p3, p0, Ljfy;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Ljfy;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 271
    iget-object v0, p0, Ljfy;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 272
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    iget-object v0, p0, Ljfy;->c:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method
