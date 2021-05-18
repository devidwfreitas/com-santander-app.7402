.class public Lfik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/InvestimentosConsolidadaActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V
    .locals 1

    .prologue
    .line 313
    iput-object p1, p0, Lfik;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfik;->b:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f100dcc

    const v1, 0x7f100d9d

    const/4 v3, 0x0

    .line 320
    iget-boolean v0, p0, Lfik;->b:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 323
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 325
    iget-object v1, p0, Lfik;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02057a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iput-boolean v3, p0, Lfik;->b:Z

    .line 335
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 330
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 332
    iget-object v1, p0, Lfik;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02057b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfik;->b:Z

    goto :goto_0
.end method
