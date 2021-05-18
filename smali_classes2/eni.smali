.class public final Leni;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lekp;


# instance fields
.field private final b:Lejm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lenj;

    invoke-direct {v0}, Lenj;-><init>()V

    sput-object v0, Leni;->a:Lekp;

    return-void
.end method

.method constructor <init>(Lejm;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lekn;-><init>()V

    .line 51
    iput-object p1, p0, Leni;->b:Lejm;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Leps;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Leps;->f()Leps;

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Leni;->b:Lejm;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lejm;->a(Ljava/lang/Class;)Lekn;

    move-result-object v0

    .line 101
    instance-of v1, v0, Leni;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Leps;->d()Leps;

    .line 103
    invoke-virtual {p1}, Leps;->e()Leps;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lepo;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    .line 56
    sget-object v1, Lenk;->a:[I

    invoke-virtual {v0}, Lepr;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 58
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lepo;->a()V

    .line 60
    :goto_0
    invoke-virtual {p1}, Lepo;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Leni;->b(Lepo;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lepo;->b()V

    .line 86
    :goto_1
    return-object v0

    .line 67
    :pswitch_1
    new-instance v0, Lemd;

    invoke-direct {v0}, Lemd;-><init>()V

    .line 68
    invoke-virtual {p1}, Lepo;->c()V

    .line 69
    :goto_2
    invoke-virtual {p1}, Lepo;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lepo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Leni;->b(Lepo;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p1}, Lepo;->d()V

    goto :goto_1

    .line 76
    :pswitch_2
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :pswitch_3
    invoke-virtual {p1}, Lepo;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {p1}, Lepo;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 85
    :pswitch_5
    invoke-virtual {p1}, Lepo;->j()V

    .line 86
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
