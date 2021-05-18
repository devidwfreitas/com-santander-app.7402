.class Lmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lmn;


# direct methods
.method constructor <init>(Lmn;I)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lmo;->b:Lmn;

    iput p2, p0, Lmo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 70
    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->a(Lmn;)[Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Lmo;->a:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->b(Lmn;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->c(Lmn;)V

    .line 75
    :cond_0
    if-eqz p2, :cond_2

    .line 76
    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->d(Lmn;)Landroid/content/Context;

    move-result-object v0

    sget v1, Llg;->tag_valor_sim:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->f(Lmn;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->e(Lmn;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lmo;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    invoke-virtual {v0}, Llx;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->g(Lmn;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lmo;->b:Lmn;

    .line 85
    invoke-static {v0}, Lmn;->d(Lmn;)Landroid/content/Context;

    move-result-object v2

    sget v3, Llg;->tag_name_revisao_termos:I

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lmo;->b:Lmn;

    .line 86
    invoke-static {v0}, Lmn;->g(Lmn;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v0}, Lace;->u()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x1

    iget-object v0, p0, Lmo;->b:Lmn;

    .line 87
    invoke-static {v0}, Lmn;->g(Lmn;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->j()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x2

    iget-object v0, p0, Lmo;->b:Lmn;

    .line 88
    invoke-static {v0}, Lmn;->g(Lmn;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x3

    iget-object v0, p0, Lmo;->b:Lmn;

    .line 89
    invoke-static {v0}, Lmn;->e(Lmn;)Ljava/util/List;

    move-result-object v0

    iget v6, p0, Lmo;->a:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    invoke-virtual {v0}, Llx;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->d(Lmn;)Landroid/content/Context;

    move-result-object v0

    sget v1, Llg;->tag_valor_nao:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->f(Lmn;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lmo;->b:Lmn;

    invoke-static {v0}, Lmn;->e(Lmn;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lmo;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    invoke-virtual {v0}, Llx;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
