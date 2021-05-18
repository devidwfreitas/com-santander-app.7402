.class public Lkvh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "username"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Leks;
        a = "enabled"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "question"
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvi;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "answers"
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "ratings"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;)Lkvk;
    .locals 2

    .prologue
    .line 104
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 104
    :sswitch_0
    const-string v1, "ONE_STAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "TWO_STARS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "THREE_STARS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "FOUR_STARS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "FIVE_STARS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 106
    :pswitch_0
    sget-object v0, Lkvk;->ONE_STAR:Lkvk;

    goto :goto_1

    .line 109
    :pswitch_1
    sget-object v0, Lkvk;->TWO_STARS:Lkvk;

    goto :goto_1

    .line 112
    :pswitch_2
    sget-object v0, Lkvk;->THREE_STARS:Lkvk;

    goto :goto_1

    .line 115
    :pswitch_3
    sget-object v0, Lkvk;->FOUR_STARS:Lkvk;

    goto :goto_1

    .line 118
    :pswitch_4
    sget-object v0, Lkvk;->FIVE_STARS:Lkvk;

    goto :goto_1

    .line 104
    :sswitch_data_0
    .sparse-switch
        -0x5c74c018 -> :sswitch_3
        -0x583cff55 -> :sswitch_0
        -0x1ddf2f8c -> :sswitch_4
        -0x1223db92 -> :sswitch_1
        -0x9cdb9c0 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lkvh;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lkvh;->a:J

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lkvh;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lkvh;->e:Ljava/util/List;

    .line 88
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lkvh;->c:Z

    .line 58
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lkvh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lkvh;->d:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lkvh;->f:Ljava/util/List;

    .line 127
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lkvh;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lkvh;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkvi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lkvh;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkvi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v0, p0, Lkvh;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lkvh;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 76
    iget-object v0, p0, Lkvh;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvi;

    .line 77
    invoke-virtual {v0}, Lkvi;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0}, Lkvi;->h()Lkvi;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_1
    return-object v2
.end method

.method public g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkvk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lkvh;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 93
    iget-object v0, p0, Lkvh;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-direct {p0, v0}, Lkvh;->c(Ljava/lang/String;)Lkvk;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_1
    return-object v2
.end method
