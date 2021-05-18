.class Luc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lub;


# direct methods
.method constructor <init>(Lub;I)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Luc;->b:Lub;

    iput p2, p0, Luc;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Luc;->b:Lub;

    invoke-static {v0}, Lub;->b(Lub;)Lacg;

    move-result-object v1

    iget-object v0, p0, Luc;->b:Lub;

    invoke-static {v0}, Lub;->a(Lub;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Luc;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lto;

    invoke-virtual {v1, v0}, Lacg;->a(Lto;)V

    .line 79
    iget-object v0, p0, Luc;->b:Lub;

    invoke-static {v0}, Lub;->b(Lub;)Lacg;

    move-result-object v0

    iget-object v1, p0, Luc;->b:Lub;

    invoke-static {v1}, Lub;->c(Lub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->b(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Luc;->b:Lub;

    invoke-static {v0}, Lub;->b(Lub;)Lacg;

    move-result-object v0

    iget-object v1, p0, Luc;->b:Lub;

    invoke-static {v1}, Lub;->d(Lub;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->a(Ljava/lang/Integer;)V

    .line 81
    iget-object v0, p0, Luc;->b:Lub;

    invoke-static {v0}, Lub;->b(Lub;)Lacg;

    move-result-object v0

    iget-object v1, p0, Luc;->b:Lub;

    invoke-static {v1}, Lub;->e(Lub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->c(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Luc;->b:Lub;

    .line 84
    invoke-static {v0}, Lub;->f(Lub;)Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_posicao_consolidada_acao_familia:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Luc;->b:Lub;

    invoke-static {v4}, Lub;->c(Lub;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Luc;->b:Lub;

    .line 85
    invoke-static {v0}, Lub;->a(Lub;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Luc;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lto;

    invoke-virtual {v0}, Lto;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Luc;->b:Lub;

    invoke-static {v0}, Lub;->a(Lub;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Luc;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lto;

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v1, v0}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Luc;->b:Lub;

    invoke-static {v1}, Lub;->f(Lub;)Lack;

    move-result-object v1

    iget-object v2, p0, Luc;->b:Lub;

    invoke-static {v2}, Lub;->b(Lub;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->a(Landroid/content/Context;Lacg;)V

    .line 88
    return-void
.end method
