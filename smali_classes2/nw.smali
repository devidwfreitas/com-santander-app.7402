.class public Lnw;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Lace;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/support/v7/widget/RecyclerView;

.field final synthetic j:Lnv;


# direct methods
.method public constructor <init>(Lnv;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lnw;->j:Lnv;

    .line 129
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 130
    sget v0, Lla;->item_comprovante_efetivacao_produto:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnw;->c:Landroid/widget/TextView;

    .line 131
    sget v0, Lla;->item_comprovante_efetivacao_data_transacao:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnw;->d:Landroid/widget/TextView;

    .line 132
    sget v0, Lla;->item_comprovante_efetivacao_valor_autenticacao:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnw;->e:Landroid/widget/TextView;

    .line 133
    sget v0, Lla;->comprovante_recycler_properties:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lnw;->i:Landroid/support/v7/widget/RecyclerView;

    .line 134
    sget v0, Lla;->item_comprovante_efetivacao_certificado:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnw;->f:Landroid/widget/TextView;

    .line 135
    sget v0, Lla;->comprovante_lbl_type_operacao:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnw;->g:Landroid/widget/TextView;

    .line 136
    sget v0, Lla;->container_comprovante_titular:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnw;->b:Landroid/widget/LinearLayout;

    .line 137
    sget v0, Lla;->item_comprovante_efetivacao_titular:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnw;->h:Landroid/widget/TextView;

    .line 139
    return-void
.end method
