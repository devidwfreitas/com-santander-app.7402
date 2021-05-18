.class public Lkph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lkph;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Date;
    .annotation runtime Leks;
        a = "openingDate"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "schedulingDate"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "endDate"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "number"
    .end annotation
.end field

.field private e:Lkpk;
    .annotation runtime Leks;
        a = "service"
    .end annotation
.end field

.field private f:Lkpl;
    .annotation runtime Leks;
        a = "status"
    .end annotation
.end field

.field private g:Lkpm;
    .annotation runtime Leks;
        a = "subService"
    .end annotation
.end field

.field private h:Lkpi;
    .annotation runtime Leks;
        a = "insured"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v2, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    const-class v1, [Lkpn;

    invoke-virtual {v0, p0, v1}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkph;

    .line 155
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpn;

    .line 156
    invoke-virtual {v0}, Lkph;->i()Lkpm;

    move-result-object v6

    .line 157
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lkpm;->a()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lkpm;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lkpn;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    invoke-virtual {v1}, Lkpn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lkpm;->a(Ljava/lang/String;)V

    .line 159
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_2
    return-object v3
.end method


# virtual methods
.method public a(Lkph;)I
    .locals 2
    .param p1    # Lkph;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    iget-object v0, p0, Lkph;->a:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkph;->a:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lkph;->a:Ljava/util/Date;

    iget-object v1, p0, Lkph;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lkph;->a:Ljava/util/Date;

    const-string v1, "dd/MM\'\n\'HH:mm"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lkph;->a:Ljava/util/Date;

    const-string v1, "dd/MM"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lkph;->a:Ljava/util/Date;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    check-cast p1, Lkph;

    invoke-virtual {p0, p1}, Lkph;->a(Lkph;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lkph;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lkph;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lkph;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lkpk;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lkph;->e:Lkpk;

    return-object v0
.end method

.method public h()Lkpl;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lkph;->f:Lkpl;

    return-object v0
.end method

.method public i()Lkpm;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lkph;->g:Lkpm;

    return-object v0
.end method

.method public j()Lkpi;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lkph;->h:Lkpi;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {v0, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
