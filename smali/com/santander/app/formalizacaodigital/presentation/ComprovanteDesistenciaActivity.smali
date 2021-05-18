.class public Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lihf;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lihu;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Ligj;

.field private f:I

.field private g:Ljava/lang/String;

.field private w:Landroid/support/v4/widget/NestedScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;Ligj;)Ligj;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->e:Ligj;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->f:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f100ac9

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->w:Landroid/support/v4/widget/NestedScrollView;

    .line 69
    const v0, 0x7f100acc

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 70
    const v0, 0x7f100acd

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->c:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->c:Landroid/widget/Button;

    new-instance v1, Lihc;

    invoke-direct {v1, p0}, Lihc;-><init>(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f100ace

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->d:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->d:Landroid/widget/Button;

    new-instance v1, Lihd;

    invoke-direct {v1, p0}, Lihd;-><init>(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lihe;

    invoke-direct {v0, p0}, Lihe;-><init>(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Ligj;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->e:Ligj;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;)Lihu;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->b:Lihu;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->w:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 114
    const-string v4, "OK"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/Dialog;

    .line 115
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ligj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 109
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lihr;

    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->d()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lihr;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 110
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f040126

    invoke-virtual {p0, v0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposalId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->f:I

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposalTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->g:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->b()V

    .line 54
    invoke-direct {p0}, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->c()V

    .line 56
    new-instance v0, Lihv;

    invoke-direct {v0, p0}, Lihv;-><init>(Lihf;)V

    iput-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->b:Lihu;

    .line 57
    iget-object v0, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->b:Lihu;

    iget v1, p0, Lcom/santander/app/formalizacaodigital/presentation/ComprovanteDesistenciaActivity;->f:I

    invoke-interface {v0, v1}, Lihu;->a(I)V

    .line 58
    return-void
.end method
