.class Lhhu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lgvb;

.field final synthetic b:Lhiy;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lhht;


# direct methods
.method constructor <init>(Lhht;Lgvb;Lhiy;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lhhu;->d:Lhht;

    iput-object p2, p0, Lhhu;->a:Lgvb;

    iput-object p3, p0, Lhhu;->b:Lhiy;

    iput-object p4, p0, Lhhu;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lhhu;->d:Lhht;

    iget-object v0, v0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    iget-object v1, p0, Lhhu;->a:Lgvb;

    iget-object v2, p0, Lhhu;->b:Lhiy;

    iget-object v3, p0, Lhhu;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;Lgvb;Lhiy;Ljava/util/ArrayList;Z)V

    .line 126
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhhu;->d:Lhht;

    iget-object v1, v1, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    const-class v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const-string v1, "comprovanteBase"

    iget-object v2, p0, Lhhu;->a:Lgvb;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lhhu;->d:Lhht;

    iget-object v1, v1, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
