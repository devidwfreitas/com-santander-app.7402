.class Lhjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lgvb;

.field final synthetic b:Lhkj;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lhjg;


# direct methods
.method constructor <init>(Lhjg;Lgvb;Lhkj;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lhjh;->d:Lhjg;

    iput-object p2, p0, Lhjh;->a:Lgvb;

    iput-object p3, p0, Lhjh;->b:Lhkj;

    iput-object p4, p0, Lhjh;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lhjh;->d:Lhjg;

    iget-object v0, v0, Lhjg;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;

    iget-object v1, p0, Lhjh;->a:Lgvb;

    iget-object v2, p0, Lhjh;->b:Lhkj;

    iget-object v3, p0, Lhjh;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;Lgvb;Lhkj;Ljava/util/ArrayList;Z)V

    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhjh;->d:Lhjg;

    iget-object v1, v1, Lhjg;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;

    const-class v2, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const-string v1, "comprovanteBase"

    iget-object v2, p0, Lhjh;->a:Lgvb;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lhjh;->d:Lhjg;

    iget-object v1, v1, Lhjg;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method
