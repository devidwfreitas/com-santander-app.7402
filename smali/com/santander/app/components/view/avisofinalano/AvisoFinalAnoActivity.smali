.class public Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lgss;


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/content/Context;

.field private d:Landroid/support/v7/app/AppCompatActivity;

.field private e:Lcom/santander/app/components/view/SantanderButtonView;

.field private f:Lcom/santander/app/components/view/SantanderButtonView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->d:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f100119

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->a:Landroid/widget/ScrollView;

    .line 62
    iget-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->a:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 63
    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->e:Lcom/santander/app/components/view/SantanderButtonView;

    .line 64
    iget-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->e:Lcom/santander/app/components/view/SantanderButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setPaintFlags(I)V

    .line 65
    iget-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->e:Lcom/santander/app/components/view/SantanderButtonView;

    new-instance v1, Lgso;

    invoke-direct {v1, p0}, Lgso;-><init>(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->f:Lcom/santander/app/components/view/SantanderButtonView;

    .line 72
    iget-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->f:Lcom/santander/app/components/view/SantanderButtonView;

    new-instance v1, Lgsp;

    invoke-direct {v1, p0}, Lgsp;-><init>(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    .line 97
    iget-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->d:Landroid/support/v7/app/AppCompatActivity;

    new-instance v1, Lgsq;

    invoke-direct {v1, p0}, Lgsq;-><init>(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)V

    new-instance v2, Lgsr;

    invoke-direct {v2, p0}, Lgsr;-><init>(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)V

    iget-object v3, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->d:Landroid/support/v7/app/AppCompatActivity;

    .line 114
    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090391

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->d:Landroid/support/v7/app/AppCompatActivity;

    .line 115
    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090191

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->d:Landroid/support/v7/app/AppCompatActivity;

    .line 116
    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09018e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-static/range {v0 .. v5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->b:Landroid/app/Dialog;

    .line 118
    return-void
.end method

.method private e()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->finish()V

    .line 144
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "MaisInformacoes"

    invoke-static {v0}, Lgst;->a(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->d()V

    .line 124
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 128
    const-string v0, "NaoVerMaisMensagem"

    invoke-static {v0}, Lgst;->c(Ljava/lang/String;)V

    .line 129
    const-string v0, "avisoFinalAno"

    .line 130
    iget-object v1, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const-string v1, "bloquearAviso"

    .line 132
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 133
    invoke-direct {p0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->e()V

    .line 134
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 93
    invoke-virtual {p0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->finish()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 46
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 47
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    const-string v1, "Programe seu Fim de Ano"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v1, v2, v6, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 53
    const v1, 0x7f020342

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 54
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->setContentView(I)V

    .line 55
    iput-object p0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->c:Landroid/content/Context;

    .line 56
    iput-object p0, p0, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->d:Landroid/support/v7/app/AppCompatActivity;

    .line 57
    invoke-direct {p0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->c()V

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->finish()V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
