.class public Ljns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Ljns;->c:Lcom/santander/app/lojaonline/presentation/LojaOnlineActivity;

    iput-object p2, p0, Ljns;->a:Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    iput-object p3, p0, Ljns;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 254
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 255
    iget-object v0, p0, Ljns;->a:Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    invoke-virtual {v0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Ljor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Ljns;->b:Landroid/content/Context;

    iget-object v1, p0, Ljns;->a:Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    invoke-virtual {v1}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Ljns;->a:Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    invoke-virtual {v0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancelar"

    invoke-static {v0, v1}, Ljor;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
