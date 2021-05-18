.class public Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "coverage-name"

.field public static final b:Ljava/lang/String; = "phone-assistance"


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p2}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string v0, ""

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 117
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvq;

    invoke-virtual {v0}, Lkvq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_1
    return-object v3
.end method

.method private a()V
    .locals 5

    .prologue
    const v4, 0x7f0907c2

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020664

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 65
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 68
    invoke-virtual {p0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f1002d5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->c:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->c:Landroid/widget/Button;

    new-instance v1, Llqn;

    invoke-direct {v1, p0}, Llqn;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    sget-object v1, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->a:Ljava/lang/String;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->f:Ljava/util/List;

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "phone-assistance"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    const-string v2, "jsons/sinister/sinisterAssistance.json"

    invoke-static {p0, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkvq;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->e:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->f:Ljava/util/List;

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->a()V

    .line 46
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->b()V

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "coverage-name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "coverage-name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->d:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone-assistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone-assistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->g:Ljava/lang/String;

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/DocumentSuccessActivity;->d()V

    .line 57
    return-void
.end method
