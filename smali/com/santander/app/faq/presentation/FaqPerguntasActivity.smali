.class public Lcom/santander/app/faq/presentation/FaqPerguntasActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lics;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lidh;

.field private f:Landroid/widget/FrameLayout;

.field private g:Lcom/santander/app/components/view/SantanderTextView;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->y:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)Lidh;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->e:Lidh;

    return-object v0
.end method

.method private c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Licp;

    invoke-direct {v0, p0}, Licp;-><init>(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)V

    return-object v0
.end method

.method private d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Licq;

    invoke-direct {v0, p0}, Licq;-><init>(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)V

    return-object v0
.end method

.method private e()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Licr;

    invoke-direct {v0, p0}, Licr;-><init>(Lcom/santander/app/faq/presentation/FaqPerguntasActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()Libo;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "faq_motivo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Libo;

    return-object v0
.end method

.method public a(Lhzt;Libo;)V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v1, "verificar_sistema_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 187
    const-string v1, "faq_motivo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    return-void
.end method

.method public a(Libo;)V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Libo;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Libo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public a(Libo;Libp;)V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/faq/presentation/FaqRespostasActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v1, "faq_respostas"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 177
    const-string v1, "faq_motivo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    const v0, 0x7f050013

    const v1, 0x7f050015

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->overridePendingTransition(II)V

    .line 181
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->f:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    return-void
.end method

.method public b(Libo;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lida;

    invoke-direct {v1, p0, p1}, Lida;-><init>(Landroid/content/Context;Libo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    return-void
.end method

.method public c(Libo;)V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p1}, Libo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Libo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->v:Lmip;

    .line 130
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 134
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 193
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 194
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 197
    if-ne p2, v0, :cond_0

    .line 198
    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->finish()V

    .line 202
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 207
    const v0, 0x7f050014

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->overridePendingTransition(II)V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 54
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    const v0, 0x7f100b94

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->a:Landroid/widget/ListView;

    .line 59
    const v0, 0x7f100b92

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->c:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f100b93

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->b:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f100b95

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->f:Landroid/widget/FrameLayout;

    .line 63
    const v0, 0x7f100b90

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->d:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f100b8c

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    .line 65
    const v0, 0x7f100b8d

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->w:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->w:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f100b8e

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->x:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->x:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->d()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f100b8f

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->y:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->y:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->e()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->g:Lcom/santander/app/components/view/SantanderTextView;

    const v1, 0x7f0906aa

    invoke-virtual {p0, v1}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    new-instance v0, Lidi;

    invoke-direct {v0, p0}, Lidi;-><init>(Lics;)V

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->e:Lidh;

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 144
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->e:Lidh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lidh;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 170
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 154
    :sswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->setResult(I)V

    .line 155
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->finish()V

    goto :goto_0

    .line 159
    :sswitch_1
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;->onBackPressed()V

    goto :goto_0

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f101208 -> :sswitch_0
    .end sparse-switch
.end method
