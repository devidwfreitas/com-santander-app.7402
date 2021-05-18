.class public Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lame;


# static fields
.field public static final a:Ljava/lang/String; = "extra_comprovante"


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/app/Dialog;

.field private i:Lamc;

.field private j:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 90
    new-instance v0, Lamg;

    invoke-direct {v0, p0}, Lamg;-><init>(Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;)Lamc;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->i:Lamc;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lbr/com/santander/uisdk/comprovante/SantanderComprovante;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string v1, "extra_comprovante"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_comprovante"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->j:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    .line 72
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->j:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "n\u00e3o foi possivel obter seu comprovante"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->j:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    invoke-virtual {v1}, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->j:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    invoke-virtual {v1}, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->j:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_0
    new-instance v0, Lama;

    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->j:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    invoke-virtual {v1}, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->d()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lama;-><init>(Ljava/util/HashMap;)V

    .line 83
    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 84
    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 85
    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 87
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->f()V

    .line 133
    invoke-static {p0}, Lano;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->h:Landroid/app/Dialog;

    .line 134
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->e()V

    .line 112
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->f()V

    .line 127
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->f()V

    .line 120
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lalu;->santander_activity_comprovante:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->c()V

    .line 51
    sget v0, Lals;->toolbar:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 52
    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 53
    invoke-virtual {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_0
    sget v0, Lals;->comprovante_tela:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->b:Landroid/view/View;

    .line 58
    sget v0, Lals;->comprovante_logo_santander:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->c:Landroid/view/View;

    .line 59
    sget v0, Lals;->comprovante_titulo:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->d:Landroid/widget/TextView;

    .line 60
    sget v0, Lals;->comprovante_recycler_view:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->e:Landroid/support/v7/widget/RecyclerView;

    .line 61
    sget v0, Lals;->comprovante_footer:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->f:Landroid/widget/TextView;

    .line 62
    sget v0, Lals;->comprovante_compartilhar:I

    invoke-virtual {p0, v0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->g:Landroid/widget/Button;

    .line 64
    new-instance v0, Lamc;

    iget-object v1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->j:Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    iget-object v2, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->b:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lamc;-><init>(Landroid/app/Activity;Lbr/com/santander/uisdk/comprovante/SantanderComprovante;Landroid/view/View;)V

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->i:Lamc;

    .line 66
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->i:Lamc;

    invoke-virtual {v0, p0}, Lamc;->a(Lame;)V

    .line 67
    invoke-direct {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->d()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 100
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->i:Lamc;

    invoke-virtual {v0}, Lamc;->b()V

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->onBackPressed()V

    .line 147
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 106
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovanteActivity;->i:Lamc;

    invoke-virtual {v0, p1, p2, p3}, Lamc;->a(I[Ljava/lang/String;[I)V

    .line 107
    return-void
.end method
