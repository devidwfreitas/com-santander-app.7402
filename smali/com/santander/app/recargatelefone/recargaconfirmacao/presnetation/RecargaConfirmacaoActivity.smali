.class public Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkjf;


# static fields
.field private static final y:Ljava/lang/String; = "RecargaConfirmacaoActivity"


# instance fields
.field private a:Lcom/santander/app/components/view/SantanderTextView;

.field private b:Lcom/santander/app/components/view/SantanderTextView;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Lcom/santander/app/components/view/SantanderTextView;

.field private e:Lcom/santander/app/components/view/SantanderTextView;

.field private f:Lcom/santander/app/components/view/SantanderTextView;

.field private g:Lcom/santander/app/components/view/SantanderTextView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Lcom/santander/app/components/view/SantanderButtonView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 71
    const v1, 0x7f090886

    invoke-virtual {p0, v1}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public a(Lkgj;)V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/recargatelefone/listarecargaprogramada/presentation/RecargaProgramadaExclusaoConfirmacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method public a(Lkic;)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "tipo_recarga"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public a(Lkid;)V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "tipo_recarga"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->w:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public b(Lkic;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/recargatelefone/recargavalidacao/presentation/RecargaValidacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v1, "tipo_recarga"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->setContentView(I)V

    .line 45
    new-instance v1, Lkjd;

    invoke-direct {v1, p0}, Lkjd;-><init>(Lkjf;)V

    .line 47
    const v0, 0x7f1003c9

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->a:Lcom/santander/app/components/view/SantanderTextView;

    .line 48
    const v0, 0x7f100337

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 49
    const v0, 0x7f1003ca

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 50
    const v0, 0x7f1003cc

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 51
    const v0, 0x7f1003cd

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->e:Lcom/santander/app/components/view/SantanderTextView;

    .line 52
    const v0, 0x7f1003ce

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->f:Lcom/santander/app/components/view/SantanderTextView;

    .line 53
    const v0, 0x7f1003cf

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 55
    const v0, 0x7f1003cb

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->w:Landroid/widget/LinearLayout;

    .line 57
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->x:Lcom/santander/app/components/view/SantanderButtonView;

    .line 58
    iget-object v0, p0, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->x:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v1}, Lkjd;->a()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkjd;->a(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
