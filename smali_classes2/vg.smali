.class Lvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Luz;

.field final synthetic c:Lvf;


# direct methods
.method constructor <init>(Lvf;ILuz;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lvg;->c:Lvf;

    iput p2, p0, Lvg;->a:I

    iput-object p3, p0, Lvg;->b:Luz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 69
    iget-object v0, p0, Lvg;->c:Lvf;

    .line 70
    invoke-static {v0}, Lvf;->b(Lvf;)Landroid/content/Context;

    move-result-object v1

    sget v2, Llg;->tag_name_listagem_acao:I

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lvg;->c:Lvf;

    .line 71
    invoke-static {v0}, Lvf;->a(Lvf;)Ljava/util/List;

    move-result-object v0

    iget v5, p0, Lvg;->a:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    invoke-virtual {v0}, Luz;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lvg;->c:Lvf;

    .line 72
    invoke-static {v1}, Lvf;->b(Lvf;)Landroid/content/Context;

    move-result-object v1

    sget v2, Llg;->tag_valor_listagem_verTodos:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v0, p0, Lvg;->c:Lvf;

    invoke-static {v0}, Lvf;->b(Lvf;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lvg;->b:Luz;

    iget-object v0, p0, Lvg;->c:Lvf;

    .line 75
    invoke-static {v0}, Lvf;->b(Lvf;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lack;

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    .line 74
    invoke-virtual {v1, v2, v3, v0}, Lzs;->a(Landroid/content/Context;Luz;Lacg;)V

    .line 77
    return-void
.end method
