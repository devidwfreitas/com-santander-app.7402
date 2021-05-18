.class public Lgej;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "https://santander.custhelp.com/app/chat/chat_santander/p/197"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lgej;->b:Landroid/app/Activity;

    .line 46
    invoke-direct {p0}, Lgej;->a()V

    .line 47
    invoke-direct {p0}, Lgej;->b()V

    .line 48
    return-void
.end method

.method static synthetic a(Lgej;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lgej;->e:Landroid/app/Dialog;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lgej;->b:Landroid/app/Activity;

    const v1, 0x7f100150

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lgej;->c:Landroid/support/v7/widget/RecyclerView;

    .line 52
    iget-object v0, p0, Lgej;->b:Landroid/app/Activity;

    const v1, 0x7f100151

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgej;->d:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method static synthetic a(Lgej;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lgej;->c()V

    return-void
.end method

.method static synthetic b(Lgej;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgej;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lgej;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lgej;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 57
    iget-object v0, p0, Lgej;->d:Landroid/widget/TextView;

    new-instance v1, Lgek;

    invoke-direct {v1, p0}, Lgek;-><init>(Lgej;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v1, Lgec;

    const-string v2, "Empr\u00e9stimos"

    const-string v3, "<small>at\u00e9 </small><big><font color=\"#8c3362\">15% OFF </font></big><small>na taxa</small>"

    invoke-direct {p0}, Lgej;->d()Lged;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgec;-><init>(Ljava/lang/String;Ljava/lang/String;Lged;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lgec;

    const-string v2, "Renegocia\u00e7\u00e3o"

    const-string v3, "<small>at\u00e9 </small><big><font color=\"#8c3362\">15% OFF </font></big><small>na taxa</small>"

    invoke-direct {p0}, Lgej;->e()Lged;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgec;-><init>(Ljava/lang/String;Ljava/lang/String;Lged;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lgec;

    const-string v2, "Financiamento de Ve\u00edculos"

    const-string v3, "<small>at\u00e9 </small><big><font color=\"#8c3362\">15% OFF </font></big><small>na taxa</small>"

    invoke-direct {p0}, Lgej;->f()Lged;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgec;-><init>(Ljava/lang/String;Ljava/lang/String;Lged;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lgej;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v2, p0, Lgej;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 69
    iget-object v1, p0, Lgej;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object v3, p0, Lgej;->b:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 70
    iget-object v1, p0, Lgej;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lgeg;

    invoke-direct {v2, v0}, Lgeg;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 71
    return-void
.end method

.method static synthetic c(Lgej;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgej;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "Outros_LojaOnline_Acao"

    const-string v1, "CliqueConsulteCondicoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgej;->b:Landroid/app/Activity;

    const-class v2, Lgef;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object v1, p0, Lgej;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method private d()Lged;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lgel;

    invoke-direct {v0, p0}, Lgel;-><init>(Lgej;)V

    return-object v0
.end method

.method private e()Lged;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lgem;

    invoke-direct {v0, p0}, Lgem;-><init>(Lgej;)V

    return-object v0
.end method

.method private f()Lged;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lgen;

    invoke-direct {v0, p0}, Lgen;-><init>(Lgej;)V

    return-object v0
.end method
