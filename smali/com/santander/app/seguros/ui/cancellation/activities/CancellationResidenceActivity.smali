.class public Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Llge;


# static fields
.field public static final a:Ljava/lang/String; = "residence-address"

.field public static final b:Ljava/lang/String; = "list-historic-residence"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageView;

.field private w:Llft;

.field private x:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqb;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;Llem;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->a(Llem;)V

    return-void
.end method

.method private a(Llem;)V
    .locals 5

    .prologue
    const v4, 0x7f020455

    const v3, 0x7f0908b5

    const v2, 0x7f02046e

    .line 179
    sget-object v0, Llel;->a:[I

    invoke-virtual {p1}, Llem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 197
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c:Landroid/widget/ImageView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c:Landroid/widget/ImageView;

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f020359

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c:Landroid/widget/ImageView;

    const v1, 0x7f020457

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c:Landroid/widget/ImageView;

    const v1, 0x7f020456

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 83
    const v1, 0x7f090212

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->y:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 90
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->d:Landroid/widget/TextView;

    const-string v1, "fonts/opensans_semibold.ttf"

    const v2, 0x7f0e00a9

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b80

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "risco"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "desproteger"

    aput-object v6, v4, v5

    invoke-static {p0, v1, v2, v3, v4}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    const-string v2, "jsons/sinister/historic_residence.json"

    invoke-static {p0, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkqb;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->y:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f100159

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f10015a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->d:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f100156

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->e:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->g:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f10015d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->f:Landroid/widget/Button;

    .line 107
    const v0, 0x7f10015c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->A:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->x:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    .line 109
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->B:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 111
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->x:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    new-instance v1, Lleh;

    invoke-direct {v1, p0}, Lleh;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->setListener(Lmff;)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->f:Landroid/widget/Button;

    new-instance v1, Llek;

    invoke-direct {v1, p0}, Llek;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 154
    sget-object v0, Llgd;->Residencial:Llgd;

    invoke-static {v0}, Llft;->a(Llgd;)Llft;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->w:Llft;

    .line 155
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->w:Llft;

    invoke-virtual {v0, p0}, Llft;->a(Llge;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->w:Llft;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-cancellation"

    invoke-virtual {v0, v1, v2}, Llft;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->x:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a(Z)V

    .line 162
    sget-object v0, Llem;->SAFE:Llem;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->a(Llem;)V

    .line 163
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->B:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 169
    const v0, 0x7f050019

    const v1, 0x7f05001a

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->overridePendingTransition(II)V

    .line 170
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->finish()V

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "insurance_name_key"

    const-string v2, "prote\u00e7\u00e3o residencial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "tag-name-key"

    const-string v2, "Cancelamento_Residencia_Confirmacao_%s"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->setContentView(I)V

    .line 65
    const-string v0, "Seguros_Cancelamento_Residencia_Acao"

    const-string v1, "TelaCancelamentoResidencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "residence-address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "residence-address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->z:Ljava/lang/String;

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->b()V

    .line 73
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->d()V

    .line 74
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->c()V

    .line 75
    return-void

    .line 69
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->z:Ljava/lang/String;

    goto :goto_0
.end method
