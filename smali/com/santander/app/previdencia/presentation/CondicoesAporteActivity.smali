.class public Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkem;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Lkfp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;)Lkfp;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->f:Lkfp;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->a:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f10010e

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->b:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->c:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->c:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->c()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lkel;

    invoke-direct {v0, p0}, Lkel;-><init>(Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->finish()V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 103
    :goto_1
    return-void

    .line 93
    :pswitch_0
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090653

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090654

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    :pswitch_3
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09065c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09065b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 43
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020509

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    const v0, 0x7f100071

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09064f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v3, 0x7f0205dd

    const v4, 0x7f0205de

    const v5, 0x7f0205df

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Landroid/view/View;III)V

    .line 53
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->d:Ljava/lang/String;

    .line 57
    new-instance v0, Lkfq;

    invoke-direct {v0, p0}, Lkfq;-><init>(Lkem;)V

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->f:Lkfp;

    .line 59
    invoke-direct {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->b()V

    .line 60
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
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/CondicoesAporteActivity;->onBackPressed()V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
