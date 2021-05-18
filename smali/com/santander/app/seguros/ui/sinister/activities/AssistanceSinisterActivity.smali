.class public Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:Ljava/lang/String; = "phone-assistance"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation
.end field

.field private d:Llud;

.field private e:Llxv;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "sinister-coverage-list"

    sput-object v0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;)Llxv;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->e:Llxv;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;Llxv;)Llxv;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->e:Llxv;

    return-object p1
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Llud;

    invoke-direct {v0, p1}, Llud;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->d:Llud;

    .line 99
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 100
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->d:Llud;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->d:Llud;

    new-instance v1, Llpp;

    invoke-direct {v1, p0, p1}, Llpp;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Llud;->a(Llug;)V

    .line 112
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 87
    const v1, 0x7f090571

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 160
    const v0, 0x7f100113

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->f:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->g:Landroid/support/v7/widget/RecyclerView;

    .line 162
    const v0, 0x7f100116

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->w:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->x:Landroid/widget/Button;

    .line 164
    const v0, 0x7f100118

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->y:Landroid/widget/Button;

    .line 165
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->a()V

    .line 166
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->B:Ljava/lang/String;

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->x:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->x:Landroid/widget/Button;

    new-instance v2, Llpq;

    invoke-direct {v2, p0, v0}, Llpq;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->y:Landroid/widget/Button;

    new-instance v1, Llpr;

    invoke-direct {v1, p0}, Llpr;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0909ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkvq;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->A:Ljava/util/List;

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone-assistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone-assistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->B:Ljava/lang/String;

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->d()V

    .line 73
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->c()V

    .line 74
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->b()V

    .line 76
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->A:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->A:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/AssistanceSinisterActivity;->a(Ljava/util/List;)V

    .line 79
    :cond_2
    const-string v0, "Seguros_Sinistro_Acionar_Acao"

    const-string v1, "PopUpAssistencia24h"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method
