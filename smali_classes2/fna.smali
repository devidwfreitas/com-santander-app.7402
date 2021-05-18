.class public Lfna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;)V
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Lfna;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfna;->b:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f100dcc

    const v2, 0x7f100d9d

    const/4 v3, 0x0

    .line 279
    const-string v0, "Investimentos_RendaFixa_PosicaoConsolidada_Acao"

    const-string v1, "DetalheInvestimento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lfna;->b:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 283
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 284
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 286
    iget-object v1, p0, Lfna;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02057a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iput-boolean v3, p0, Lfna;->b:Z

    .line 296
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 290
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 291
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 293
    iget-object v1, p0, Lfna;->a:Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02057b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfna;->b:Z

    goto :goto_0
.end method
