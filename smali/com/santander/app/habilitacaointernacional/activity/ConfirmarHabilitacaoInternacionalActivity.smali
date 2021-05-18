.class public Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Linx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lioi;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->c:Ljava/util/ArrayList;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->f:I

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040216

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "operacao"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->f:I

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02028e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 49
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    const-string v0, ""

    .line 57
    iget v2, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->f:I

    packed-switch v2, :pswitch_data_0

    .line 74
    :goto_0
    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 76
    const v0, 0x7f100809

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 77
    const v0, 0x7f100a40

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ListView;

    .line 78
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cartao"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->d:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FINALCARTAO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->g:Ljava/lang/String;

    .line 80
    const v0, 0x7f100a3f

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "passo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->e:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->e:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lista"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->e:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    new-instance v0, Lino;

    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lino;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 134
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    :goto_1
    new-instance v0, Limn;

    invoke-direct {v0, p0}, Limn;-><init>(Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void

    .line 59
    :pswitch_0
    const v0, 0x7f090517

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 63
    :pswitch_1
    const v0, 0x7f090516

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 67
    :pswitch_2
    const v0, 0x7f090518

    invoke-virtual {p0, v0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->e:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lista"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->b:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    .line 94
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lioi;

    .line 95
    new-instance v0, Lioi;

    invoke-direct {v0}, Lioi;-><init>()V

    .line 96
    invoke-virtual {v6}, Lioi;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lioi;->a(Z)V

    .line 97
    invoke-virtual {v6}, Lioi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v6}, Lioi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->b(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v6}, Lioi;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->c(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6}, Lioi;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->e(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v6}, Lioi;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->d(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v6}, Lioi;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lioi;->f(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Linx;

    invoke-virtual {v6}, Lioi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v6}, Lioi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lioi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lioi;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v6}, Lioi;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lioi;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Linx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->e:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lista"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->b:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    .line 116
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioi;

    .line 117
    new-instance v2, Lioi;

    invoke-direct {v2}, Lioi;-><init>()V

    .line 118
    invoke-virtual {v0}, Lioi;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lioi;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lioi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lioi;->d(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lioi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lioi;->c(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lioi;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lioi;->b(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lioi;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lioi;->a(Ljava/lang/Boolean;)V

    .line 123
    iget-object v3, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Linx;

    invoke-virtual {v0}, Lioi;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v0}, Lioi;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lioi;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {v0}, Lioi;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Linx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 137
    :cond_3
    new-instance v0, Lfqk;

    iget-object v1, p0, Lcom/santander/app/habilitacaointernacional/activity/ConfirmarHabilitacaoInternacionalActivity;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lfqk;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 139
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
