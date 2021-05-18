.class public final Ldth;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcoy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Lcox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcox",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldth;->a:Z

    iput-object p1, p0, Ldth;->c:Lcox;

    const/4 v0, 0x0

    iput-object v0, p0, Ldth;->d:Lcoy;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ldth;->b:I

    return-void
.end method

.method private constructor <init>(Lcox;Lcoy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcox",
            "<TO;>;TO;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Ldth;->a:Z

    iput-object p1, p0, Ldth;->c:Lcox;

    iput-object p2, p0, Ldth;->d:Lcoy;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ldth;->c:Lcox;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Ldth;->d:Lcoy;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcsg;->a([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ldth;->b:I

    return-void
.end method

.method public static a(Lcox;)Ldth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoy;",
            ">(",
            "Lcox",
            "<TO;>;)",
            "Ldth",
            "<TO;>;"
        }
    .end annotation

    new-instance v0, Ldth;

    invoke-direct {v0, p0}, Ldth;-><init>(Lcox;)V

    return-object v0
.end method

.method public static a(Lcox;Lcoy;)Ldth;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcoy;",
            ">(",
            "Lcox",
            "<TO;>;TO;)",
            "Ldth",
            "<TO;>;"
        }
    .end annotation

    new-instance v0, Ldth;

    invoke-direct {v0, p0, p1}, Ldth;-><init>(Lcox;Lcoy;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldth;->c:Lcox;

    invoke-virtual {v0}, Lcox;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ldth;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Ldth;

    iget-boolean v2, p0, Ldth;->a:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Ldth;->a:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Ldth;->c:Lcox;

    iget-object v3, p1, Ldth;->c:Lcox;

    invoke-static {v2, v3}, Lcsg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Ldth;->d:Lcoy;

    iget-object v3, p1, Ldth;->d:Lcoy;

    invoke-static {v2, v3}, Lcsg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ldth;->b:I

    return v0
.end method
