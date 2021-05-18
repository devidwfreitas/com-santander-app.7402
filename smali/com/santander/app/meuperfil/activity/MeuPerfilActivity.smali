.class public Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Ljqc;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 35
    const-string v0, "MeuPerfilActivity"

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;Ljqj;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->a(Ljqj;)V

    return-void
.end method

.method private a(Ljqj;)V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    invoke-virtual {v1, p1}, Ljqc;->a(Ljqj;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoNovamenteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    :goto_0
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    invoke-virtual {v1, p1}, Ljqc;->e(Ljqj;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    invoke-virtual {v1, p1}, Ljqc;->f(Ljqj;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    invoke-virtual {v1, p1}, Ljqc;->g(Ljqj;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->a()V

    goto :goto_0

    .line 109
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;Ljqj;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->b(Ljqj;)V

    return-void
.end method

.method private b(Ljqj;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    invoke-virtual {v0, p1}, Ljqc;->f(Ljqj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    invoke-virtual {v0, p1}, Ljqc;->g(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v2, "xxx"

    invoke-virtual {p1}, Ljqj;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    invoke-virtual {v0, p1}, Ljqc;->e(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->b()V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    invoke-virtual {v0, p1}, Ljqc;->h(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const v0, 0x7f040198

    invoke-static {p0, v0}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    goto :goto_0

    .line 131
    :cond_3
    const v0, 0x7f040197

    invoke-static {p0, v0}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-static {p0, v2}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 137
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 139
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 140
    const v0, 0x7f0401a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 141
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 142
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 144
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 145
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 147
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljpf;

    invoke-direct {v2, p0, v1}, Ljpf;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f1007c4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a4d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-static {p0, v2}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 166
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 168
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 169
    const v0, 0x7f0401a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 170
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 171
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 173
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 174
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 176
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljpg;

    invoke-direct {v2, p0, v1}, Ljpg;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f1007c4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a1e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->e:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/meuperfil/activity/MeuPerfilTrocarSenhaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->d:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 82
    :cond_2
    new-instance v0, Ljrm;

    new-instance v1, Ljpe;

    invoke-direct {v1, p0}, Ljpe;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;)V

    invoke-direct {v0, v1, p0}, Ljrm;-><init>(Ljrn;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 95
    invoke-virtual {v0, v1}, Ljrm;->c([Ljava/lang/Object;)Lgne;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f04031a

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->setContentView(I)V

    .line 47
    iput-object p0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->i:Landroid/app/Activity;

    .line 48
    new-instance v0, Ljqc;

    invoke-direct {v0}, Ljqc;-><init>()V

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->f:Ljqc;

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 55
    const v1, 0x7f090769

    invoke-virtual {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 57
    const v0, 0x7f100fe8

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->b:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f100fea

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->c:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f100fe9

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->d:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f1004c6

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 67
    return-void
.end method
