.class Lacz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj;


# instance fields
.field final synthetic a:Ltj;

.field final synthetic b:Lacy;


# direct methods
.method constructor <init>(Lacy;Ltj;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lacz;->b:Lacy;

    iput-object p2, p0, Lacz;->a:Ltj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    check-cast p1, Ltq;

    .line 89
    iget-object v0, p0, Lacz;->b:Lacy;

    invoke-static {v0}, Lacy;->a(Lacy;)Lou;

    move-result-object v0

    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->d()Ltn;

    move-result-object v1

    invoke-virtual {v1}, Ltn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lou;->g(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lacz;->b:Lacy;

    invoke-static {v0}, Lacy;->a(Lacy;)Lou;

    move-result-object v0

    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->d()Ltn;

    move-result-object v1

    invoke-virtual {v1}, Ltn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lou;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    iget-object v1, p0, Lacz;->b:Lacy;

    invoke-static {v1}, Lacy;->a(Lacy;)Lou;

    move-result-object v1

    invoke-virtual {v0, v1}, Laca;->a(Lou;)V

    .line 92
    invoke-static {}, Laca;->a()Laca;

    move-result-object v1

    invoke-virtual {p1}, Ltq;->a()Lsz;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ltq;->a()Lsz;

    move-result-object v0

    invoke-virtual {v0}, Lsz;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Laca;->a(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lacz;->b:Lacy;

    iget-object v0, v0, Lacy;->a:Lacg;

    invoke-virtual {v0}, Lacg;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 95
    iget-object v2, p0, Lacz;->b:Lacy;

    invoke-static {v2}, Lacy;->a(Lacy;)Lou;

    move-result-object v2

    invoke-virtual {v2}, Lou;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lou;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v1, p0, Lacz;->b:Lacy;

    iget-object v1, v1, Lacy;->c:Lace;

    invoke-virtual {v1, v0}, Lace;->a(Lou;)V

    .line 101
    :cond_1
    iget-object v0, p0, Lacz;->b:Lacy;

    invoke-virtual {v0}, Lacy;->g()V

    .line 103
    iget-object v0, p0, Lacz;->b:Lacy;

    invoke-static {v0}, Lacy;->b(Lacy;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lacz;->b:Lacy;

    invoke-static {v0}, Lacy;->b(Lacy;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lada;

    invoke-direct {v1, p0}, Lada;-><init>(Lacz;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lacz;->b:Lacy;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lacy;->f:Ljava/lang/Boolean;

    .line 109
    iget-object v0, p0, Lacz;->b:Lacy;

    invoke-virtual {v0}, Lacy;->c()V

    .line 110
    iget-object v0, p0, Lacz;->a:Ltj;

    iget-object v1, p0, Lacz;->b:Lacy;

    invoke-static {v1}, Lacy;->a(Lacy;)Lou;

    move-result-object v1

    invoke-interface {v0, v1}, Ltj;->a(Labv;)V

    .line 111
    return-void

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lacz;->b:Lacy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lacy;->f:Ljava/lang/Boolean;

    .line 116
    iget-object v0, p0, Lacz;->a:Ltj;

    invoke-interface {v0, p1}, Ltj;->a(Laby;)V

    .line 117
    return-void
.end method
