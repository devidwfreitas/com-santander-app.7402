.class Lst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsn;


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lss;


# direct methods
.method constructor <init>(Lss;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lst;->b:Lss;

    iput-object p2, p0, Lst;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 13

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lst;->b:Lss;

    invoke-static {v1}, Lss;->a(Lss;)Lacg;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lacg;->d(Ljava/util/List;)V

    .line 108
    iget-object v1, p0, Lst;->b:Lss;

    invoke-static {v1}, Lss;->a(Lss;)Lacg;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lacg;->c(Ljava/util/List;)V

    .line 110
    check-cast p1, Llk;

    .line 112
    invoke-virtual {p1}, Llk;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Llv;

    .line 113
    invoke-virtual {v6}, Llv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 114
    invoke-virtual {v6}, Llv;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v0, v1

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llw;

    .line 115
    invoke-virtual {v1}, Llw;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llm;

    .line 116
    new-instance v0, Lace;

    invoke-virtual {v6}, Llv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Llk;->k()Ljava/util/List;

    move-result-object v5

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llv;

    invoke-virtual {v5}, Llv;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lace;-><init>(Llw;Ljava/lang/String;Ljava/lang/Integer;Llm;Ljava/lang/String;)V

    .line 117
    new-instance v2, Lsk;

    invoke-direct {v2}, Lsk;-><init>()V

    .line 118
    invoke-virtual {v4}, Llm;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk;->b(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Llm;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk;->a(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v2}, Lace;->a(Lsk;)V

    .line 122
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v2

    invoke-virtual {v1}, Llw;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lto;->i(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v2

    invoke-virtual {v4}, Llm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llm;->a(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lst;->b:Lss;

    invoke-static {v2}, Lss;->a(Lss;)Lacg;

    move-result-object v3

    invoke-virtual {p1}, Llk;->k()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llv;

    invoke-virtual {v2}, Llv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lacg;->b(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4}, Llm;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lace;->a(Ljava/lang/Boolean;)V

    .line 127
    invoke-virtual {p1}, Llk;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lace;->a(Ljava/util/List;)V

    .line 128
    iget-object v2, p0, Lst;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0, v2}, Lace;->f(Z)V

    .line 129
    new-instance v2, Lou;

    .line 130
    invoke-virtual {v4}, Llm;->j()Llj;

    move-result-object v3

    invoke-virtual {v3}, Llj;->a()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v4}, Llm;->j()Llj;

    move-result-object v5

    invoke-virtual {v5}, Llj;->b()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v4}, Llm;->j()Llj;

    move-result-object v12

    invoke-virtual {v12}, Llj;->c()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v3, v5, v12}, Lou;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v2}, Lace;->a(Lou;)V

    .line 134
    invoke-virtual {v4}, Llm;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 136
    iget-object v2, p0, Lst;->b:Lss;

    invoke-static {v2}, Lss;->a(Lss;)Lacg;

    move-result-object v2

    invoke-virtual {v2}, Lacg;->u()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 128
    :cond_0
    const/4 v2, 0x0

    goto :goto_3

    .line 138
    :cond_1
    iget-object v2, p0, Lst;->b:Lss;

    invoke-static {v2}, Lss;->a(Lss;)Lacg;

    move-result-object v2

    invoke-virtual {v2}, Lacg;->v()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    move-object v0, v7

    .line 141
    goto/16 :goto_1

    :cond_3
    move-object v1, v0

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_4
    iget-object v0, p0, Lst;->b:Lss;

    new-instance v2, Lsp;

    iget-object v3, p0, Lst;->b:Lss;

    invoke-virtual {v3}, Lss;->e()Lack;

    move-result-object v3

    iget-object v4, p0, Lst;->b:Lss;

    invoke-static {v4}, Lss;->a(Lss;)Lacg;

    move-result-object v4

    invoke-virtual {v4}, Lacg;->u()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lsp;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {v0, v2}, Lss;->a(Lss;Lsp;)Lsp;

    .line 145
    iget-object v0, p0, Lst;->b:Lss;

    invoke-static {v0}, Lss;->b(Lss;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lst;->b:Lss;

    invoke-virtual {v3}, Lss;->e()Lack;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 146
    iget-object v0, p0, Lst;->b:Lss;

    invoke-static {v0}, Lss;->b(Lss;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lst;->b:Lss;

    invoke-static {v2}, Lss;->c(Lss;)Lsp;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 148
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lst;->b:Lss;

    invoke-virtual {v1}, Lss;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lst;->b:Lss;

    invoke-static {v2}, Lss;->a(Lss;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->f(Landroid/content/Context;Lacg;)V

    .line 158
    :goto_4
    return-void

    .line 156
    :cond_5
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lst;->b:Lss;

    invoke-virtual {v1}, Lss;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lst;->b:Lss;

    invoke-static {v2}, Lss;->a(Lss;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->e(Landroid/content/Context;Lacg;)V

    goto :goto_4
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lst;->b:Lss;

    invoke-virtual {v0}, Lss;->e()Lack;

    move-result-object v0

    new-instance v1, Lsu;

    invoke-direct {v1, p0}, Lsu;-><init>(Lst;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 171
    return-void
.end method
