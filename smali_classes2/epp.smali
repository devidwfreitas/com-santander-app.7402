.class final Lepp;
.super Lelr;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1585
    invoke-direct {p0}, Lelr;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)V
    .locals 3

    .prologue
    .line 1587
    instance-of v0, p1, Lenc;

    if-eqz v0, :cond_0

    .line 1588
    check-cast p1, Lenc;

    invoke-virtual {p1}, Lenc;->o()V

    .line 1605
    :goto_0
    return-void

    .line 1591
    :cond_0
    iget v0, p1, Lepo;->a:I

    .line 1592
    if-nez v0, :cond_1

    .line 1593
    invoke-virtual {p1}, Lepo;->r()I

    move-result v0

    .line 1595
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1596
    const/16 v0, 0x9

    iput v0, p1, Lepo;->a:I

    goto :goto_0

    .line 1597
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1598
    const/16 v0, 0x8

    iput v0, p1, Lepo;->a:I

    goto :goto_0

    .line 1599
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1600
    const/16 v0, 0xa

    iput v0, p1, Lepo;->a:I

    goto :goto_0

    .line 1602
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1603
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lepo;->a(Lepo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
