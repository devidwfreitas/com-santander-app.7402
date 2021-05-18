.class public Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Lkmr;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/app/Activity;

.field private H:Lkne;

.field private I:Lkkx;

.field private J:Landroid/widget/TextView;

.field private a:Ljava/lang/String;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 39
    const-string v0, "ComprovanteActivity"

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;)Lkne;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->H:Lkne;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 83
    const v0, 0x7f100ad7

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->b:Landroid/widget/RelativeLayout;

    .line 84
    const v0, 0x7f100ad8

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->g:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f100ad1

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->w:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f100ad6

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->x:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f100ae0

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->C:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f100adc

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->y:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f100add

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->z:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1007f2

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->A:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f100adf

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->B:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->D:Landroid/widget/Button;

    .line 93
    const v0, 0x7f100736

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->E:Landroid/widget/Button;

    .line 94
    const v0, 0x7f100ad9

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->F:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x7f100adb

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->J:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f100ada

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->c:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->D:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->E:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v1}, Lkkx;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v1}, Lkkx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v1}, Lkkx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v1}, Lkkx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v0}, Lkkx;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v1}, Lkkx;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v0}, Lkkx;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v1}, Lkkx;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v0}, Lkkx;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    :cond_2
    sget-object v0, Lkkz;->SEGUNDA_VIA_TEL_PRE:Lkkz;

    invoke-virtual {v0}, Lkkz;->getValor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {v1}, Lkkx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->a(Lkkx;)V

    .line 127
    return-void

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public a(Lkkx;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->H:Lkne;

    invoke-interface {v0, p1}, Lkne;->a(Lkkx;)V

    .line 219
    return-void
.end method

.method b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lkmp;

    invoke-direct {v0, p0}, Lkmp;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;)V

    return-object v0
.end method

.method c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lkmq;

    invoke-direct {v0, p0}, Lkmq;-><init>(Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->F:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->x:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->x:Landroid/widget/ImageView;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 193
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 197
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 203
    const v0, 0x7f100ad5

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->G:Landroid/app/Activity;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f040121

    invoke-virtual {p0, v0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "comprovante"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkkx;

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 72
    const v1, 0x7f090abb

    invoke-virtual {p0, v1}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 74
    iput-object p0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->G:Landroid/app/Activity;

    .line 76
    new-instance v0, Lknf;

    iget-object v1, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->I:Lkkx;

    invoke-direct {v0, v1, p0}, Lknf;-><init>(Lkkx;Lkmr;)V

    iput-object v0, p0, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->H:Lkne;

    .line 77
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->a()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lgoj;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/santander/app/segundaviacomprovantes/presentation/ComprovanteActivity;->f()V

    .line 178
    return-void
.end method
