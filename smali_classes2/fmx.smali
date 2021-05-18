.class Lfmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lfmw;


# direct methods
.method constructor <init>(Lfmw;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lfmx;->a:Lfmw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Lfmx;->a:Lfmw;

    iget-object v0, v0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->d(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)V

    .line 185
    iget-object v0, p0, Lfmx;->a:Lfmw;

    iget-object v1, v0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lfmx;->a:Lfmw;

    iget-object v0, v0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "comprovanteBase"

    iget-object v0, p0, Lfmx;->a:Lfmw;

    iget-object v0, v0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    .line 187
    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->c(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lftv;

    move-result-object v0

    invoke-virtual {v0}, Lftv;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfmx;->a:Lfmw;

    iget-object v0, v0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    .line 188
    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->e(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lgvb;

    move-result-object v0

    .line 186
    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    invoke-virtual {v1, v0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lfmx;->a:Lfmw;

    iget-object v0, v0, Lfmw;->a:Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;

    .line 189
    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;->f(Lcom/santander/app/RendaFixaResgateConfirmacaoActivity;)Lgvb;

    move-result-object v0

    goto :goto_0
.end method
