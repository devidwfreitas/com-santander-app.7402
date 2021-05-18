.class public Lcom/santander/app/faq/presentation/FaqRespostasActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Licw;


# instance fields
.field private A:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Libo;

.field private f:Libp;

.field private g:Lidl;

.field private w:Landroid/widget/FrameLayout;

.field private x:Lcom/santander/app/components/view/SantanderTextView;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->y:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->z:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lict;

    invoke-direct {v0, p0}, Lict;-><init>(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->A:Landroid/widget/Button;

    return-object v0
.end method

.method private e()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Licu;

    invoke-direct {v0, p0}, Licu;-><init>(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)V

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Lcom/santander/app/components/view/SantanderTextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->x:Lcom/santander/app/components/view/SantanderTextView;

    return-object v0
.end method

.method private f()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Licv;

    invoke-direct {v0, p0}, Licv;-><init>(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Libp;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->f:Libp;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Libo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e:Libo;

    return-object v0
.end method

.method public static synthetic h(Lcom/santander/app/faq/presentation/FaqRespostasActivity;)Lidl;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->g:Lidl;

    return-object v0
.end method


# virtual methods
.method public a()Libp;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "faq_respostas"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Libp;

    return-object v0
.end method

.method public a(Lhzt;)V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string v1, "verificar_sistema_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    const-string v1, "faq_motivo"

    iget-object v2, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e:Libo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Libv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lidc;

    invoke-direct {v1, p0, p1}, Lidc;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->w:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->w:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 186
    const v0, 0x7f050014

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->overridePendingTransition(II)V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f040063

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 62
    const v0, 0x7f100b97

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->a:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f100b98

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->c:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f100b99

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->d:Landroid/widget/ListView;

    .line 67
    const v0, 0x7f100b9a

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->w:Landroid/widget/FrameLayout;

    .line 68
    const v0, 0x7f100b90

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->b:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f100b8c

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->x:Lcom/santander/app/components/view/SantanderTextView;

    .line 70
    const v0, 0x7f100b8d

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->y:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->y:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->d()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f100b8e

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->z:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->z:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f100b8f

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->A:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->A:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->f()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "faq_motivo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Libo;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e:Libo;

    .line 78
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "faq_respostas"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Libp;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->f:Libp;

    .line 80
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e:Libo;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e:Libo;

    invoke-virtual {v1}, Libo;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e:Libo;

    invoke-virtual {v2}, Libo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :cond_0
    new-instance v0, Lidm;

    iget-object v1, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->e:Libo;

    invoke-direct {v0, p0, v1}, Lidm;-><init>(Licw;Libo;)V

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->g:Lidl;

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 160
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 161
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 179
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 170
    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->finish()V

    goto :goto_0

    .line 175
    :sswitch_1
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqRespostasActivity;->onBackPressed()V

    goto :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f101208 -> :sswitch_0
    .end sparse-switch
.end method
