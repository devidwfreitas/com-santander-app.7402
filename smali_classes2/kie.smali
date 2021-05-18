.class public Lkie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkif;

.field private b:Lkhx;


# direct methods
.method public constructor <init>(Lkif;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lkie;->a:Lkif;

    .line 23
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->c()Lkhx;

    move-result-object v0

    iput-object v0, p0, Lkie;->b:Lkhx;

    .line 24
    invoke-virtual {p0}, Lkie;->a()V

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lkie;->b:Lkhx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkie;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v0, p0, Lkie;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvf;

    .line 32
    invoke-virtual {v0}, Lfvf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lkie;->a:Lkif;

    invoke-interface {v0, v1}, Lkif;->a(Ljava/util/List;)V

    .line 37
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lkie;->b:Lkhx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkie;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v0, p0, Lkie;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvf;

    .line 45
    invoke-virtual {v0}, Lfvf;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v0}, Lfvf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lkie;->a:Lkif;

    invoke-interface {v0, v1}, Lkif;->a(Ljava/util/List;)V

    .line 55
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lkie;->b:Lkhx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkie;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lkie;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lkie;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvf;

    invoke-virtual {v0}, Lfvf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v2, p0, Lkie;->a:Lkif;

    iget-object v0, p0, Lkie;->b:Lkhx;

    invoke-virtual {v0}, Lkhx;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfvf;

    invoke-virtual {v0}, Lfvf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lkif;->a(Ljava/lang/String;I)V

    .line 67
    :cond_0
    return-void

    .line 60
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
