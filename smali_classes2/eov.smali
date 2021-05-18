.class final Leov;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Lejz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Lejz;
    .locals 3

    .prologue
    .line 716
    sget-object v0, Lepe;->a:[I

    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v1

    invoke-virtual {v1}, Lepr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 718
    :pswitch_0
    new-instance v0, Lekf;

    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lekf;-><init>(Ljava/lang/String;)V

    .line 742
    :goto_0
    return-object v0

    .line 720
    :pswitch_1
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v1

    .line 721
    new-instance v0, Lekf;

    new-instance v2, Lels;

    invoke-direct {v2, v1}, Lels;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lekf;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 723
    :pswitch_2
    new-instance v0, Lekf;

    invoke-virtual {p1}, Lepo;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lekf;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 725
    :pswitch_3
    invoke-virtual {p1}, Lepo;->j()V

    .line 726
    sget-object v0, Lekb;->a:Lekb;

    goto :goto_0

    .line 728
    :pswitch_4
    new-instance v0, Lejw;

    invoke-direct {v0}, Lejw;-><init>()V

    .line 729
    invoke-virtual {p1}, Lepo;->a()V

    .line 730
    :goto_1
    invoke-virtual {p1}, Lepo;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {p0, p1}, Leov;->a(Lepo;)Lejz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lejw;->a(Lejz;)V

    goto :goto_1

    .line 733
    :cond_0
    invoke-virtual {p1}, Lepo;->b()V

    goto :goto_0

    .line 736
    :pswitch_5
    new-instance v0, Lekc;

    invoke-direct {v0}, Lekc;-><init>()V

    .line 737
    invoke-virtual {p1}, Lepo;->c()V

    .line 738
    :goto_2
    invoke-virtual {p1}, Lepo;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {p1}, Lepo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Leov;->a(Lepo;)Lejz;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lekc;->a(Ljava/lang/String;Lejz;)V

    goto :goto_2

    .line 741
    :cond_1
    invoke-virtual {p1}, Lepo;->d()V

    goto :goto_0

    .line 716
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Leps;Lejz;)V
    .locals 3

    .prologue
    .line 753
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lejz;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    invoke-virtual {p1}, Leps;->f()Leps;

    .line 783
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-virtual {p2}, Lejz;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 756
    invoke-virtual {p2}, Lejz;->v()Lekf;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Lekf;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 758
    invoke-virtual {v0}, Lekf;->c()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Leps;->a(Ljava/lang/Number;)Leps;

    goto :goto_0

    .line 759
    :cond_2
    invoke-virtual {v0}, Lekf;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 760
    invoke-virtual {v0}, Lekf;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Leps;->a(Z)Leps;

    goto :goto_0

    .line 762
    :cond_3
    invoke-virtual {v0}, Lekf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    goto :goto_0

    .line 765
    :cond_4
    invoke-virtual {p2}, Lejz;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 766
    invoke-virtual {p1}, Leps;->b()Leps;

    .line 767
    invoke-virtual {p2}, Lejz;->u()Lejw;

    move-result-object v0

    invoke-virtual {v0}, Lejw;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    .line 768
    invoke-virtual {p0, p1, v0}, Leov;->a(Leps;Lejz;)V

    goto :goto_1

    .line 770
    :cond_5
    invoke-virtual {p1}, Leps;->c()Leps;

    goto :goto_0

    .line 772
    :cond_6
    invoke-virtual {p2}, Lejz;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 773
    invoke-virtual {p1}, Leps;->d()Leps;

    .line 774
    invoke-virtual {p2}, Lejz;->t()Lekc;

    move-result-object v0

    invoke-virtual {v0}, Lekc;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 775
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Leps;->a(Ljava/lang/String;)Leps;

    .line 776
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {p0, p1, v0}, Leov;->a(Leps;Lejz;)V

    goto :goto_2

    .line 778
    :cond_7
    invoke-virtual {p1}, Leps;->e()Leps;

    goto/16 :goto_0

    .line 781
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 714
    check-cast p2, Lejz;

    invoke-virtual {p0, p1, p2}, Leov;->a(Leps;Lejz;)V

    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Leov;->a(Lepo;)Lejz;

    move-result-object v0

    return-object v0
.end method
