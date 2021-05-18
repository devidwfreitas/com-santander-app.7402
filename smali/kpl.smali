.class public Lkpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkph;

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "type"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkph;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lkpl;->a:Lkph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lkpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v1

    const-string v4, "1"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "3"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "4"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "5"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "6"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "9"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "19"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "22"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "23"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "29"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "45"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "47"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    iget-object v3, p0, Lkpl;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lkpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "7"

    aput-object v4, v3, v1

    const-string v4, "8"

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string v5, "10"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "16"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "20"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "30"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "46"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "48"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    iget-object v3, p0, Lkpl;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lkpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lkpl;->c:Ljava/lang/String;

    return-object v0
.end method
