.class public Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field protected static a:Ljava/util/ArrayList;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfup;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyl;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->c:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->d:Ljava/util/List;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->f:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->h:I

    return v0
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lfqd;

    const v1, 0x7f040312

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lfqd;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 141
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 145
    move v0, v1

    :goto_0
    sget-object v2, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 146
    new-instance v2, Lfup;

    invoke-direct {v2}, Lfup;-><init>()V

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfup;->a(Ljava/lang/String;)V

    .line 148
    sget-object v3, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfup;->b(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, v1}, Lfup;->a(Z)V

    .line 150
    iget-object v3, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->i:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04012e

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "listaContas"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cpf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->f:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Nome"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->g:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selecionaActivity"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->h:I

    .line 58
    iput-object p0, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->i:Landroid/app/Activity;

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 66
    const v0, 0x7f100628

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    new-instance v1, Ljpa;

    invoke-direct {v1, p0}, Ljpa;-><init>(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f100627

    invoke-virtual {p0, v1}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->b:Landroid/widget/ListView;

    .line 108
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->b:Landroid/widget/ListView;

    new-instance v2, Ljpd;

    invoke-direct {v2, p0}, Ljpd;-><init>(Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    sget-object v1, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->b()V

    .line 132
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a()V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v1, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->e:Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 171
    sget-object v0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->onBackPressed()V

    .line 174
    :cond_0
    return-void
.end method

.method public selecionarConta(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfup;

    .line 157
    invoke-virtual {v0}, Lfup;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 160
    goto :goto_0

    .line 162
    :cond_0
    if-nez v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/ContaPreferencialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 165
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
