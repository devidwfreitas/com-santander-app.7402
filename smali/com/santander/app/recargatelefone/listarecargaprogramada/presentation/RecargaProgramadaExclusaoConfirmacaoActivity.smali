.class public Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkgw;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/RadioGroup;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 25
    const-string v0, "RecargaProgramadaExclusaoConfirmacaoActivity"

    iput-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    const v1, 0x7f090886

    invoke-virtual {p0, v1}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sua programa\u00e7\u00e3o ser\u00e1 exclu\u00edda, mas h\u00e1 uma recarga agendada para "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public a(Lkgj;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    const-string v0, "false"

    invoke-virtual {p1, v0}, Lkgj;->m(Ljava/lang/String;)V

    .line 85
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    const-string v1, "tipo_recarga"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void

    .line 82
    :cond_0
    const-string v0, "true"

    invoke-virtual {p1, v0}, Lkgj;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->finish()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f040350

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->a()V

    .line 40
    new-instance v1, Lkhc;

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lkhc;-><init>(Lkgw;Landroid/content/Intent;)V

    .line 42
    const v0, 0x7f1010ab

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->b:Landroid/widget/Button;

    .line 43
    const v0, 0x7f1010ac

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->c:Landroid/widget/Button;

    .line 44
    const v0, 0x7f1010a8

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->d:Landroid/widget/RadioGroup;

    .line 45
    const v0, 0x7f1010a7

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->e:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->b:Landroid/widget/Button;

    invoke-virtual {v1}, Lkhc;->b()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Lkhc;->c()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v1}, Lkhc;->a()V

    .line 51
    return-void
.end method
