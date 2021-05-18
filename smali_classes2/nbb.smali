.class public Lnbb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnbb;->a:Ljava/lang/Integer;

    .line 16
    const v0, 0x12257

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnbb;->b:Ljava/lang/Integer;

    .line 17
    const v0, 0x12256

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnbb;->c:Ljava/lang/Integer;

    .line 18
    const v0, 0x12179

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnbb;->d:Ljava/lang/Integer;

    .line 20
    const v0, 0x121d8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnbb;->e:Ljava/lang/Integer;

    .line 21
    const v0, 0x12124

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnbb;->f:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a(Lnav;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lnav;->a()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lnbb;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 24
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lnav;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0}, Live;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Lnav;->a()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lnbb;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lnav;->a()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lnbb;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lnav;->a()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lnbb;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 29
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
