.class public final Ldpl;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldpl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile I:[Ldpl;


# instance fields
.field public A:[Ldph;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/Integer;

.field public D:Ljava/lang/Integer;

.field public E:Ljava/lang/Integer;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/Long;

.field public H:Ljava/lang/Long;

.field public a:Ljava/lang/Integer;

.field public b:[Ldpi;

.field public c:[Ldpn;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/Long;

.field public r:Ljava/lang/Long;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/Boolean;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/Long;

.field public w:Ljava/lang/Integer;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldqy;-><init>()V

    invoke-virtual {p0}, Ldpl;->c()Ldpl;

    return-void
.end method

.method public static b()[Ldpl;
    .locals 2

    sget-object v0, Ldpl;->I:[Ldpl;

    if-nez v0, :cond_1

    sget-object v1, Ldrc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldpl;->I:[Ldpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ldpl;

    sput-object v0, Ldpl;->I:[Ldpl;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ldpl;->I:[Ldpl;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Ldqy;->a()I

    move-result v0

    iget-object v2, p0, Ldpl;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Ldpl;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ldqw;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Ldpl;->b:[Ldpi;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldpl;->b:[Ldpi;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Ldpl;->b:[Ldpi;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ldpl;->b:[Ldpi;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ldqw;->c(ILdre;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    iget-object v2, p0, Ldpl;->c:[Ldpn;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ldpl;->c:[Ldpn;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Ldpl;->c:[Ldpn;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Ldpl;->c:[Ldpn;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ldqw;->c(ILdre;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :cond_6
    iget-object v2, p0, Ldpl;->d:Ljava/lang/Long;

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    iget-object v3, p0, Ldpl;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Ldpl;->e:Ljava/lang/Long;

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    iget-object v3, p0, Ldpl;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Ldpl;->f:Ljava/lang/Long;

    if-eqz v2, :cond_9

    const/4 v2, 0x6

    iget-object v3, p0, Ldpl;->f:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget-object v2, p0, Ldpl;->h:Ljava/lang/Long;

    if-eqz v2, :cond_a

    const/4 v2, 0x7

    iget-object v3, p0, Ldpl;->h:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget-object v2, p0, Ldpl;->i:Ljava/lang/String;

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    iget-object v3, p0, Ldpl;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-object v2, p0, Ldpl;->j:Ljava/lang/String;

    if-eqz v2, :cond_c

    const/16 v2, 0x9

    iget-object v3, p0, Ldpl;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Ldpl;->k:Ljava/lang/String;

    if-eqz v2, :cond_d

    const/16 v2, 0xa

    iget-object v3, p0, Ldpl;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-object v2, p0, Ldpl;->l:Ljava/lang/String;

    if-eqz v2, :cond_e

    const/16 v2, 0xb

    iget-object v3, p0, Ldpl;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Ldpl;->m:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    const/16 v2, 0xc

    iget-object v3, p0, Ldpl;->m:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ldqw;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    iget-object v2, p0, Ldpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_10

    const/16 v2, 0xd

    iget-object v3, p0, Ldpl;->n:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Ldpl;->o:Ljava/lang/String;

    if-eqz v2, :cond_11

    const/16 v2, 0xe

    iget-object v3, p0, Ldpl;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    iget-object v2, p0, Ldpl;->p:Ljava/lang/String;

    if-eqz v2, :cond_12

    const/16 v2, 0x10

    iget-object v3, p0, Ldpl;->p:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    iget-object v2, p0, Ldpl;->q:Ljava/lang/Long;

    if-eqz v2, :cond_13

    const/16 v2, 0x11

    iget-object v3, p0, Ldpl;->q:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_13
    iget-object v2, p0, Ldpl;->r:Ljava/lang/Long;

    if-eqz v2, :cond_14

    const/16 v2, 0x12

    iget-object v3, p0, Ldpl;->r:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_14
    iget-object v2, p0, Ldpl;->s:Ljava/lang/String;

    if-eqz v2, :cond_15

    const/16 v2, 0x13

    iget-object v3, p0, Ldpl;->s:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Ldpl;->t:Ljava/lang/Boolean;

    if-eqz v2, :cond_16

    const/16 v2, 0x14

    iget-object v3, p0, Ldpl;->t:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Ldqw;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_16
    iget-object v2, p0, Ldpl;->u:Ljava/lang/String;

    if-eqz v2, :cond_17

    const/16 v2, 0x15

    iget-object v3, p0, Ldpl;->u:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    iget-object v2, p0, Ldpl;->v:Ljava/lang/Long;

    if-eqz v2, :cond_18

    const/16 v2, 0x16

    iget-object v3, p0, Ldpl;->v:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_18
    iget-object v2, p0, Ldpl;->w:Ljava/lang/Integer;

    if-eqz v2, :cond_19

    const/16 v2, 0x17

    iget-object v3, p0, Ldpl;->w:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ldqw;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_19
    iget-object v2, p0, Ldpl;->x:Ljava/lang/String;

    if-eqz v2, :cond_1a

    const/16 v2, 0x18

    iget-object v3, p0, Ldpl;->x:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1a
    iget-object v2, p0, Ldpl;->y:Ljava/lang/String;

    if-eqz v2, :cond_1b

    const/16 v2, 0x19

    iget-object v3, p0, Ldpl;->y:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1b
    iget-object v2, p0, Ldpl;->g:Ljava/lang/Long;

    if-eqz v2, :cond_1c

    const/16 v2, 0x1a

    iget-object v3, p0, Ldpl;->g:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1c
    iget-object v2, p0, Ldpl;->z:Ljava/lang/Boolean;

    if-eqz v2, :cond_1d

    const/16 v2, 0x1c

    iget-object v3, p0, Ldpl;->z:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Ldqw;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1d
    iget-object v2, p0, Ldpl;->A:[Ldph;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Ldpl;->A:[Ldph;

    array-length v2, v2

    if-lez v2, :cond_1f

    :goto_2
    iget-object v2, p0, Ldpl;->A:[Ldph;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Ldpl;->A:[Ldph;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1e

    const/16 v3, 0x1d

    invoke-static {v3, v2}, Ldqw;->c(ILdre;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    iget-object v1, p0, Ldpl;->B:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/16 v1, 0x1e

    iget-object v2, p0, Ldpl;->B:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Ldpl;->C:Ljava/lang/Integer;

    if-eqz v1, :cond_21

    const/16 v1, 0x1f

    iget-object v2, p0, Ldpl;->C:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ldqw;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Ldpl;->D:Ljava/lang/Integer;

    if-eqz v1, :cond_22

    const/16 v1, 0x20

    iget-object v2, p0, Ldpl;->D:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ldqw;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Ldpl;->E:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const/16 v1, 0x21

    iget-object v2, p0, Ldpl;->E:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ldqw;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Ldpl;->F:Ljava/lang/String;

    if-eqz v1, :cond_24

    const/16 v1, 0x22

    iget-object v2, p0, Ldpl;->F:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Ldpl;->G:Ljava/lang/Long;

    if-eqz v1, :cond_25

    const/16 v1, 0x23

    iget-object v2, p0, Ldpl;->G:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ldqw;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iget-object v1, p0, Ldpl;->H:Ljava/lang/Long;

    if-eqz v1, :cond_26

    const/16 v1, 0x24

    iget-object v2, p0, Ldpl;->H:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ldqw;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    return v0
.end method

.method public a(Ldqv;)Ldpl;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ldqv;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Ldqy;->a(Ldqv;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldpl;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldpl;->b:[Ldpi;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ldpi;

    if-eqz v0, :cond_1

    iget-object v3, p0, Ldpl;->b:[Ldpi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Ldpi;

    invoke-direct {v3}, Ldpi;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ldqv;->a(Ldre;)V

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ldpl;->b:[Ldpi;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Ldpi;

    invoke-direct {v3}, Ldpi;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    iput-object v2, p0, Ldpl;->b:[Ldpi;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldpl;->c:[Ldpn;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ldpn;

    if-eqz v0, :cond_4

    iget-object v3, p0, Ldpl;->c:[Ldpn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Ldpn;

    invoke-direct {v3}, Ldpn;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ldqv;->a(Ldre;)V

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Ldpl;->c:[Ldpn;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Ldpn;

    invoke-direct {v3}, Ldpn;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    iput-object v2, p0, Ldpl;->c:[Ldpn;

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->d:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->e:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->f:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->h:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->i:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->j:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->k:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->l:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldpl;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->n:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->o:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->p:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->q:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->r:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->s:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Ldqv;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldpl;->t:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->u:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->v:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldpl;->w:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->x:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->y:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->g:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Ldqv;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldpl;->z:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_1b
    const/16 v0, 0xea

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldpl;->A:[Ldph;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ldph;

    if-eqz v0, :cond_7

    iget-object v3, p0, Ldpl;->A:[Ldph;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Ldph;

    invoke-direct {v3}, Ldph;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ldqv;->a(Ldre;)V

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Ldpl;->A:[Ldph;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Ldph;

    invoke-direct {v3}, Ldph;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    iput-object v2, p0, Ldpl;->A:[Ldph;

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->B:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldpl;->C:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldpl;->D:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldpl;->E:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpl;->F:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->G:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpl;->H:Ljava/lang/Long;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb0 -> :sswitch_15
        0xb8 -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xd0 -> :sswitch_19
        0xe0 -> :sswitch_1a
        0xea -> :sswitch_1b
        0xf2 -> :sswitch_1c
        0xf8 -> :sswitch_1d
        0x100 -> :sswitch_1e
        0x108 -> :sswitch_1f
        0x112 -> :sswitch_20
        0x118 -> :sswitch_21
        0x120 -> :sswitch_22
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Ldpl;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Ldpl;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ldqw;->a(II)V

    :cond_0
    iget-object v0, p0, Ldpl;->b:[Ldpi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldpl;->b:[Ldpi;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Ldpl;->b:[Ldpi;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ldpl;->b:[Ldpi;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Ldqw;->a(ILdre;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldpl;->c:[Ldpn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldpl;->c:[Ldpn;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v2, p0, Ldpl;->c:[Ldpn;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Ldpl;->c:[Ldpn;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Ldqw;->a(ILdre;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ldpl;->d:Ljava/lang/Long;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iget-object v2, p0, Ldpl;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_5
    iget-object v0, p0, Ldpl;->e:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    iget-object v2, p0, Ldpl;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_6
    iget-object v0, p0, Ldpl;->f:Ljava/lang/Long;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    iget-object v2, p0, Ldpl;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_7
    iget-object v0, p0, Ldpl;->h:Ljava/lang/Long;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    iget-object v2, p0, Ldpl;->h:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_8
    iget-object v0, p0, Ldpl;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-object v2, p0, Ldpl;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Ldpl;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-object v2, p0, Ldpl;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Ldpl;->k:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iget-object v2, p0, Ldpl;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Ldpl;->l:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    iget-object v2, p0, Ldpl;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Ldpl;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    iget-object v2, p0, Ldpl;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ldqw;->a(II)V

    :cond_d
    iget-object v0, p0, Ldpl;->n:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    iget-object v2, p0, Ldpl;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Ldpl;->o:Ljava/lang/String;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    iget-object v2, p0, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_f
    iget-object v0, p0, Ldpl;->p:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/16 v0, 0x10

    iget-object v2, p0, Ldpl;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Ldpl;->q:Ljava/lang/Long;

    if-eqz v0, :cond_11

    const/16 v0, 0x11

    iget-object v2, p0, Ldpl;->q:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_11
    iget-object v0, p0, Ldpl;->r:Ljava/lang/Long;

    if-eqz v0, :cond_12

    const/16 v0, 0x12

    iget-object v2, p0, Ldpl;->r:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_12
    iget-object v0, p0, Ldpl;->s:Ljava/lang/String;

    if-eqz v0, :cond_13

    const/16 v0, 0x13

    iget-object v2, p0, Ldpl;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_13
    iget-object v0, p0, Ldpl;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    const/16 v0, 0x14

    iget-object v2, p0, Ldpl;->t:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Ldqw;->a(IZ)V

    :cond_14
    iget-object v0, p0, Ldpl;->u:Ljava/lang/String;

    if-eqz v0, :cond_15

    const/16 v0, 0x15

    iget-object v2, p0, Ldpl;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_15
    iget-object v0, p0, Ldpl;->v:Ljava/lang/Long;

    if-eqz v0, :cond_16

    const/16 v0, 0x16

    iget-object v2, p0, Ldpl;->v:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_16
    iget-object v0, p0, Ldpl;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    const/16 v0, 0x17

    iget-object v2, p0, Ldpl;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ldqw;->a(II)V

    :cond_17
    iget-object v0, p0, Ldpl;->x:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/16 v0, 0x18

    iget-object v2, p0, Ldpl;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Ldpl;->y:Ljava/lang/String;

    if-eqz v0, :cond_19

    const/16 v0, 0x19

    iget-object v2, p0, Ldpl;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_19
    iget-object v0, p0, Ldpl;->g:Ljava/lang/Long;

    if-eqz v0, :cond_1a

    const/16 v0, 0x1a

    iget-object v2, p0, Ldpl;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_1a
    iget-object v0, p0, Ldpl;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    const/16 v0, 0x1c

    iget-object v2, p0, Ldpl;->z:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Ldqw;->a(IZ)V

    :cond_1b
    iget-object v0, p0, Ldpl;->A:[Ldph;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Ldpl;->A:[Ldph;

    array-length v0, v0

    if-lez v0, :cond_1d

    :goto_2
    iget-object v0, p0, Ldpl;->A:[Ldph;

    array-length v0, v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Ldpl;->A:[Ldph;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1c

    const/16 v2, 0x1d

    invoke-virtual {p1, v2, v0}, Ldqw;->a(ILdre;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    iget-object v0, p0, Ldpl;->B:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const/16 v0, 0x1e

    iget-object v1, p0, Ldpl;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Ldpl;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    const/16 v0, 0x1f

    iget-object v1, p0, Ldpl;->C:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldqw;->a(II)V

    :cond_1f
    iget-object v0, p0, Ldpl;->D:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    const/16 v0, 0x20

    iget-object v1, p0, Ldpl;->D:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldqw;->a(II)V

    :cond_20
    iget-object v0, p0, Ldpl;->E:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    const/16 v0, 0x21

    iget-object v1, p0, Ldpl;->E:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldqw;->a(II)V

    :cond_21
    iget-object v0, p0, Ldpl;->F:Ljava/lang/String;

    if-eqz v0, :cond_22

    const/16 v0, 0x22

    iget-object v1, p0, Ldpl;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_22
    iget-object v0, p0, Ldpl;->G:Ljava/lang/Long;

    if-eqz v0, :cond_23

    const/16 v0, 0x23

    iget-object v1, p0, Ldpl;->G:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_23
    iget-object v0, p0, Ldpl;->H:Ljava/lang/Long;

    if-eqz v0, :cond_24

    const/16 v0, 0x24

    iget-object v1, p0, Ldpl;->H:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_24
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldpl;->a(Ldqv;)Ldpl;

    move-result-object v0

    return-object v0
.end method

.method public c()Ldpl;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Ldpl;->a:Ljava/lang/Integer;

    invoke-static {}, Ldpi;->b()[Ldpi;

    move-result-object v0

    iput-object v0, p0, Ldpl;->b:[Ldpi;

    invoke-static {}, Ldpn;->b()[Ldpn;

    move-result-object v0

    iput-object v0, p0, Ldpl;->c:[Ldpn;

    iput-object v1, p0, Ldpl;->d:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->e:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->f:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->g:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->h:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->i:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->j:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->k:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->l:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->m:Ljava/lang/Integer;

    iput-object v1, p0, Ldpl;->n:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->o:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->p:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->q:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->r:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->s:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->t:Ljava/lang/Boolean;

    iput-object v1, p0, Ldpl;->u:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->v:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->w:Ljava/lang/Integer;

    iput-object v1, p0, Ldpl;->x:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->y:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->z:Ljava/lang/Boolean;

    invoke-static {}, Ldph;->b()[Ldph;

    move-result-object v0

    iput-object v0, p0, Ldpl;->A:[Ldph;

    iput-object v1, p0, Ldpl;->B:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->C:Ljava/lang/Integer;

    iput-object v1, p0, Ldpl;->D:Ljava/lang/Integer;

    iput-object v1, p0, Ldpl;->E:Ljava/lang/Integer;

    iput-object v1, p0, Ldpl;->F:Ljava/lang/String;

    iput-object v1, p0, Ldpl;->G:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->H:Ljava/lang/Long;

    iput-object v1, p0, Ldpl;->ag:Ldra;

    const/4 v0, -0x1

    iput v0, p0, Ldpl;->ah:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ldpl;

    if-eqz v2, :cond_0

    check-cast p1, Ldpl;

    iget-object v2, p0, Ldpl;->a:Ljava/lang/Integer;

    if-nez v2, :cond_23

    iget-object v2, p1, Ldpl;->a:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Ldpl;->b:[Ldpi;

    iget-object v3, p1, Ldpl;->b:[Ldpi;

    invoke-static {v2, v3}, Ldrc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpl;->c:[Ldpn;

    iget-object v3, p1, Ldpl;->c:[Ldpn;

    invoke-static {v2, v3}, Ldrc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpl;->d:Ljava/lang/Long;

    if-nez v2, :cond_24

    iget-object v2, p1, Ldpl;->d:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Ldpl;->e:Ljava/lang/Long;

    if-nez v2, :cond_25

    iget-object v2, p1, Ldpl;->e:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Ldpl;->f:Ljava/lang/Long;

    if-nez v2, :cond_26

    iget-object v2, p1, Ldpl;->f:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Ldpl;->g:Ljava/lang/Long;

    if-nez v2, :cond_27

    iget-object v2, p1, Ldpl;->g:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Ldpl;->h:Ljava/lang/Long;

    if-nez v2, :cond_28

    iget-object v2, p1, Ldpl;->h:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_7
    iget-object v2, p0, Ldpl;->i:Ljava/lang/String;

    if-nez v2, :cond_29

    iget-object v2, p1, Ldpl;->i:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_8
    iget-object v2, p0, Ldpl;->j:Ljava/lang/String;

    if-nez v2, :cond_2a

    iget-object v2, p1, Ldpl;->j:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_9
    iget-object v2, p0, Ldpl;->k:Ljava/lang/String;

    if-nez v2, :cond_2b

    iget-object v2, p1, Ldpl;->k:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_a
    iget-object v2, p0, Ldpl;->l:Ljava/lang/String;

    if-nez v2, :cond_2c

    iget-object v2, p1, Ldpl;->l:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_b
    iget-object v2, p0, Ldpl;->m:Ljava/lang/Integer;

    if-nez v2, :cond_2d

    iget-object v2, p1, Ldpl;->m:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_c
    iget-object v2, p0, Ldpl;->n:Ljava/lang/String;

    if-nez v2, :cond_2e

    iget-object v2, p1, Ldpl;->n:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_d
    iget-object v2, p0, Ldpl;->o:Ljava/lang/String;

    if-nez v2, :cond_2f

    iget-object v2, p1, Ldpl;->o:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_e
    iget-object v2, p0, Ldpl;->p:Ljava/lang/String;

    if-nez v2, :cond_30

    iget-object v2, p1, Ldpl;->p:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_f
    iget-object v2, p0, Ldpl;->q:Ljava/lang/Long;

    if-nez v2, :cond_31

    iget-object v2, p1, Ldpl;->q:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_10
    iget-object v2, p0, Ldpl;->r:Ljava/lang/Long;

    if-nez v2, :cond_32

    iget-object v2, p1, Ldpl;->r:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_11
    iget-object v2, p0, Ldpl;->s:Ljava/lang/String;

    if-nez v2, :cond_33

    iget-object v2, p1, Ldpl;->s:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_12
    iget-object v2, p0, Ldpl;->t:Ljava/lang/Boolean;

    if-nez v2, :cond_34

    iget-object v2, p1, Ldpl;->t:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    :cond_13
    iget-object v2, p0, Ldpl;->u:Ljava/lang/String;

    if-nez v2, :cond_35

    iget-object v2, p1, Ldpl;->u:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_14
    iget-object v2, p0, Ldpl;->v:Ljava/lang/Long;

    if-nez v2, :cond_36

    iget-object v2, p1, Ldpl;->v:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_15
    iget-object v2, p0, Ldpl;->w:Ljava/lang/Integer;

    if-nez v2, :cond_37

    iget-object v2, p1, Ldpl;->w:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_16
    iget-object v2, p0, Ldpl;->x:Ljava/lang/String;

    if-nez v2, :cond_38

    iget-object v2, p1, Ldpl;->x:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_17
    iget-object v2, p0, Ldpl;->y:Ljava/lang/String;

    if-nez v2, :cond_39

    iget-object v2, p1, Ldpl;->y:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_18
    iget-object v2, p0, Ldpl;->z:Ljava/lang/Boolean;

    if-nez v2, :cond_3a

    iget-object v2, p1, Ldpl;->z:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    :cond_19
    iget-object v2, p0, Ldpl;->A:[Ldph;

    iget-object v3, p1, Ldpl;->A:[Ldph;

    invoke-static {v2, v3}, Ldrc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpl;->B:Ljava/lang/String;

    if-nez v2, :cond_3b

    iget-object v2, p1, Ldpl;->B:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_1a
    iget-object v2, p0, Ldpl;->C:Ljava/lang/Integer;

    if-nez v2, :cond_3c

    iget-object v2, p1, Ldpl;->C:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_1b
    iget-object v2, p0, Ldpl;->D:Ljava/lang/Integer;

    if-nez v2, :cond_3d

    iget-object v2, p1, Ldpl;->D:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_1c
    iget-object v2, p0, Ldpl;->E:Ljava/lang/Integer;

    if-nez v2, :cond_3e

    iget-object v2, p1, Ldpl;->E:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_1d
    iget-object v2, p0, Ldpl;->F:Ljava/lang/String;

    if-nez v2, :cond_3f

    iget-object v2, p1, Ldpl;->F:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_1e
    iget-object v2, p0, Ldpl;->G:Ljava/lang/Long;

    if-nez v2, :cond_40

    iget-object v2, p1, Ldpl;->G:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_1f
    iget-object v2, p0, Ldpl;->H:Ljava/lang/Long;

    if-nez v2, :cond_41

    iget-object v2, p1, Ldpl;->H:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_20
    iget-object v2, p0, Ldpl;->ag:Ldra;

    if-eqz v2, :cond_21

    iget-object v2, p0, Ldpl;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_21
    iget-object v2, p1, Ldpl;->ag:Ldra;

    if-eqz v2, :cond_22

    iget-object v2, p1, Ldpl;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_22
    move v0, v1

    goto/16 :goto_0

    :cond_23
    iget-object v2, p0, Ldpl;->a:Ljava/lang/Integer;

    iget-object v3, p1, Ldpl;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_24
    iget-object v2, p0, Ldpl;->d:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_25
    iget-object v2, p0, Ldpl;->e:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->e:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_26
    iget-object v2, p0, Ldpl;->f:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->f:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_27
    iget-object v2, p0, Ldpl;->g:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->g:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_28
    iget-object v2, p0, Ldpl;->h:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->h:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_29
    iget-object v2, p0, Ldpl;->i:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_2a
    iget-object v2, p0, Ldpl;->j:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_2b
    iget-object v2, p0, Ldpl;->k:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_2c
    iget-object v2, p0, Ldpl;->l:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_2d
    iget-object v2, p0, Ldpl;->m:Ljava/lang/Integer;

    iget-object v3, p1, Ldpl;->m:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_2e
    iget-object v2, p0, Ldpl;->n:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_2f
    iget-object v2, p0, Ldpl;->o:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_30
    iget-object v2, p0, Ldpl;->p:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_31
    iget-object v2, p0, Ldpl;->q:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->q:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_32
    iget-object v2, p0, Ldpl;->r:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->r:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_33
    iget-object v2, p0, Ldpl;->s:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_34
    iget-object v2, p0, Ldpl;->t:Ljava/lang/Boolean;

    iget-object v3, p1, Ldpl;->t:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_35
    iget-object v2, p0, Ldpl;->u:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_36
    iget-object v2, p0, Ldpl;->v:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->v:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_37
    iget-object v2, p0, Ldpl;->w:Ljava/lang/Integer;

    iget-object v3, p1, Ldpl;->w:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_38
    iget-object v2, p0, Ldpl;->x:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_39
    iget-object v2, p0, Ldpl;->y:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_3a
    iget-object v2, p0, Ldpl;->z:Ljava/lang/Boolean;

    iget-object v3, p1, Ldpl;->z:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_3b
    iget-object v2, p0, Ldpl;->B:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_0

    :cond_3c
    iget-object v2, p0, Ldpl;->C:Ljava/lang/Integer;

    iget-object v3, p1, Ldpl;->C:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_0

    :cond_3d
    iget-object v2, p0, Ldpl;->D:Ljava/lang/Integer;

    iget-object v3, p1, Ldpl;->D:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_0

    :cond_3e
    iget-object v2, p0, Ldpl;->E:Ljava/lang/Integer;

    iget-object v3, p1, Ldpl;->E:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_0

    :cond_3f
    iget-object v2, p0, Ldpl;->F:Ljava/lang/String;

    iget-object v3, p1, Ldpl;->F:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_0

    :cond_40
    iget-object v2, p0, Ldpl;->G:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->G:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_0

    :cond_41
    iget-object v2, p0, Ldpl;->H:Ljava/lang/Long;

    iget-object v3, p1, Ldpl;->H:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_0

    :cond_42
    iget-object v0, p0, Ldpl;->ag:Ldra;

    iget-object v1, p1, Ldpl;->ag:Ldra;

    invoke-virtual {v0, v1}, Ldra;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->a:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpl;->b:[Ldpi;

    invoke-static {v2}, Ldrc;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpl;->c:[Ldpn;

    invoke-static {v2}, Ldrc;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->d:Ljava/lang/Long;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->e:Ljava/lang/Long;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->f:Ljava/lang/Long;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->g:Ljava/lang/Long;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->h:Ljava/lang/Long;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->i:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->j:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->k:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->l:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->m:Ljava/lang/Integer;

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->n:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->o:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->p:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->q:Ljava/lang/Long;

    if-nez v0, :cond_f

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->r:Ljava/lang/Long;

    if-nez v0, :cond_10

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->s:Ljava/lang/String;

    if-nez v0, :cond_11

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->u:Ljava/lang/String;

    if-nez v0, :cond_13

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->v:Ljava/lang/Long;

    if-nez v0, :cond_14

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->w:Ljava/lang/Integer;

    if-nez v0, :cond_15

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->x:Ljava/lang/String;

    if-nez v0, :cond_16

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->y:Ljava/lang/String;

    if-nez v0, :cond_17

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->z:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    move v0, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpl;->A:[Ldph;

    invoke-static {v2}, Ldrc;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->B:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->C:Ljava/lang/Integer;

    if-nez v0, :cond_1a

    move v0, v1

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->D:Ljava/lang/Integer;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->E:Ljava/lang/Integer;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->F:Ljava/lang/String;

    if-nez v0, :cond_1d

    move v0, v1

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->G:Ljava/lang/Long;

    if-nez v0, :cond_1e

    move v0, v1

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpl;->H:Ljava/lang/Long;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpl;->ag:Ldra;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpl;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_0
    :goto_1f
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Ldpl;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Ldpl;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Ldpl;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Ldpl;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Ldpl;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Ldpl;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Ldpl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Ldpl;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_9
    iget-object v0, p0, Ldpl;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_a
    iget-object v0, p0, Ldpl;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_b
    iget-object v0, p0, Ldpl;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_c
    iget-object v0, p0, Ldpl;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_d
    iget-object v0, p0, Ldpl;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_e
    iget-object v0, p0, Ldpl;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_f
    iget-object v0, p0, Ldpl;->q:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_e

    :cond_10
    iget-object v0, p0, Ldpl;->r:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_f

    :cond_11
    iget-object v0, p0, Ldpl;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_10

    :cond_12
    iget-object v0, p0, Ldpl;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_13
    iget-object v0, p0, Ldpl;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_12

    :cond_14
    iget-object v0, p0, Ldpl;->v:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_15
    iget-object v0, p0, Ldpl;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_14

    :cond_16
    iget-object v0, p0, Ldpl;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_15

    :cond_17
    iget-object v0, p0, Ldpl;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_16

    :cond_18
    iget-object v0, p0, Ldpl;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_17

    :cond_19
    iget-object v0, p0, Ldpl;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_18

    :cond_1a
    iget-object v0, p0, Ldpl;->C:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_19

    :cond_1b
    iget-object v0, p0, Ldpl;->D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_1a

    :cond_1c
    iget-object v0, p0, Ldpl;->E:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_1b

    :cond_1d
    iget-object v0, p0, Ldpl;->F:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1c

    :cond_1e
    iget-object v0, p0, Ldpl;->G:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_1d

    :cond_1f
    iget-object v0, p0, Ldpl;->H:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_1e

    :cond_20
    iget-object v1, p0, Ldpl;->ag:Ldra;

    invoke-virtual {v1}, Ldra;->hashCode()I

    move-result v1

    goto/16 :goto_1f
.end method
