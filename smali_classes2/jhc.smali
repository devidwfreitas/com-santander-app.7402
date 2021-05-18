.class public Ljhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Ljhc;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CALL_PHONE"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Ljhc;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "tel:01130120258"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    :cond_0
    return-void
.end method
