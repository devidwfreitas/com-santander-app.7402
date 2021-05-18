.class public Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;
.super Lgoj;
.source "SourceFile"

# interfaces
.implements Liak;


# instance fields
.field private A:Lhyz;

.field private a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/app/Activity;

.field private z:Liat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 32
    const-string v0, "ComprovanteFaleConoscoActivity"

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;)Liat;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->z:Liat;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->x:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f1005cf

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->b:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->c:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f100ad1

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->f:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f100ad3

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->g:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f100ad4

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->w:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->w:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->f()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->z:Liat;

    iget-object v1, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->A:Lhyz;

    invoke-interface {v0, v1}, Liat;->a(Lhyz;)V

    .line 78
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->y:Landroid/app/Activity;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->w:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    const v0, 0x7f100acf

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lial;

    invoke-direct {v0, p0}, Lial;-><init>(Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;)V

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->w:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->x:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f040127

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comprovante"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhyz;

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->A:Lhyz;

    .line 51
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->getResources()Landroid/content/res/Resources;

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
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 59
    iput-object p0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->y:Landroid/app/Activity;

    .line 61
    new-instance v0, Liau;

    iget-object v1, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->A:Lhyz;

    invoke-direct {v0, v1, p0}, Liau;-><init>(Lhyz;Liak;)V

    iput-object v0, p0, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->z:Liat;

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->a()V

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 83
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    invoke-super {p0, p1}, Lgoj;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    invoke-super {p0, p1}, Lgoj;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->setResult(I)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x7f101208
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lgoj;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/santander/app/faleconosco/presentation/ComprovanteFaleConoscoActivity;->g()V

    .line 116
    return-void
.end method
