.class public Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljra;


# instance fields
.field private a:Landroid/support/v7/app/ActionBar;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private x:Landroid/widget/Spinner;

.field private y:Ljrd;

.field private z:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 47
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->z:Lmip;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;)Ljrd;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->y:Ljrd;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->y:Ljrd;

    invoke-interface {v0}, Ljrd;->a()V

    .line 79
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02047e

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 86
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f090acf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->y:Ljrd;

    invoke-interface {v0}, Ljrd;->c()V

    .line 89
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    new-instance v1, Ljqu;

    invoke-direct {v1, p0}, Ljqu;-><init>(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040246

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f100b87

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->x:Landroid/widget/Spinner;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v1, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v1}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->y:Ljrd;

    iget-object v2, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->z:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->q()Lgvx;

    move-result-object v2

    invoke-interface {v2}, Lgvx;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljrd;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f040396

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->x:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->x:Landroid/widget/Spinner;

    new-instance v1, Ljqv;

    invoke-direct {v1, p0}, Ljqv;-><init>(Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 122
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->y:Ljrd;

    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->x:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-interface {v1, v0}, Ljrd;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 126
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->a:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->a:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 143
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 153
    if-eqz p1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    const-string v1, "sucesso"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    const-string v1, "erro"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 148
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090930

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 175
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->d:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09092d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#conta#"

    iget-object v3, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->z:Lmip;

    .line 179
    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->z:Lmip;

    invoke-interface {v4}, Lmip;->f()Lmir;

    move-result-object v4

    invoke-virtual {v4}, Lmir;->g()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v3, v4}, Lnaq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->y:Ljrd;

    invoke-interface {v0}, Ljrd;->b()V

    .line 131
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->a:Landroid/support/v7/app/ActionBar;

    .line 56
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->c:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->d:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->e:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->f:Landroid/widget/Button;

    .line 64
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->g:Landroid/widget/Button;

    .line 66
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->w:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 68
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->b:Landroid/widget/LinearLayout;

    .line 70
    new-instance v0, Ljre;

    invoke-direct {v0, p0, p0}, Ljre;-><init>(Landroid/content/Context;Ljra;)V

    iput-object v0, p0, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->y:Ljrd;

    .line 72
    invoke-direct {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->e()V

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lgrs;->onPause()V

    .line 136
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;->finish()V

    .line 137
    return-void
.end method
