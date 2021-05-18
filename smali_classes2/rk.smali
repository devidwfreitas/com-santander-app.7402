.class Lrk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lacg;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic c:Lre;


# direct methods
.method constructor <init>(Lre;Lacg;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lrk;->c:Lre;

    iput-object p2, p0, Lrk;->a:Lacg;

    iput-object p3, p0, Lrk;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 236
    iget-object v1, p0, Lrk;->a:Lacg;

    iget-object v0, p0, Lrk;->c:Lre;

    invoke-static {v0}, Lre;->a(Lre;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lrk;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    invoke-virtual {v1, v0}, Lacg;->a(Ltk;)V

    .line 237
    iget-object v0, p0, Lrk;->c:Lre;

    .line 238
    invoke-static {v0}, Lre;->e(Lre;)Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_detalhamento_acao_aplicar_resgatar:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lrk;->c:Lre;

    .line 239
    invoke-static {v4}, Lre;->b(Lre;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lrk;->c:Lre;

    invoke-static {v4}, Lre;->c(Lre;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lrk;->c:Lre;

    invoke-static {v4}, Lre;->d(Lre;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 238
    invoke-virtual {v0, v1, v2}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lrk;->c:Lre;

    .line 240
    invoke-static {v1}, Lre;->e(Lre;)Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_detalhamento_resgatar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lrk;->c:Lre;

    .line 243
    invoke-static {v0}, Lre;->e(Lre;)Lack;

    move-result-object v0

    sget v1, Llg;->tag_transaction_name_resgatar:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lrk;->c:Lre;

    .line 244
    invoke-static {v1}, Lre;->e(Lre;)Lack;

    move-result-object v1

    sget v2, Llg;->tag_service_name_investimento:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lzy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v0, p0, Lrk;->c:Lre;

    invoke-static {v0}, Lre;->e(Lre;)Lack;

    move-result-object v2

    iget-object v0, p0, Lrk;->c:Lre;

    invoke-static {v0}, Lre;->e(Lre;)Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    invoke-virtual {v1, v2, v0}, Lzs;->c(Landroid/content/Context;Lacg;)V

    .line 248
    return-void
.end method
