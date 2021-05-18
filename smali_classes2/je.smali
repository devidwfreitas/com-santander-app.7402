.class public Lje;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lio;

.field private b:Liv;

.field private c:Lip;

.field private d:Lil;

.field private e:Lin;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lje;->f:Z

    .line 31
    return-void
.end method

.method private b(Lil;Lin;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lje;->c:Lip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lje;->c:Lip;

    sget-object v1, Lip;->HUB:Lip;

    invoke-virtual {v0, v1}, Lip;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    iget-boolean v0, p0, Lje;->f:Z

    invoke-static {p1, p2, v0}, Lic;->a(Lil;Lin;Z)Lio;

    move-result-object v0

    iput-object v0, p0, Lje;->a:Lio;

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {p1, p2}, Lic;->a(Lil;Lin;)Lio;

    move-result-object v0

    iput-object v0, p0, Lje;->a:Lio;

    goto :goto_0
.end method


# virtual methods
.method public a()Lio;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lje;->a:Lio;

    return-object v0
.end method

.method public a(Lil;Lin;)Lje;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lje;->d:Lil;

    .line 50
    iput-object p2, p0, Lje;->e:Lin;

    .line 51
    return-object p0
.end method

.method public a(Lip;)Lje;
    .locals 2

    .prologue
    .line 60
    iput-object p1, p0, Lje;->c:Lip;

    .line 61
    iget-object v0, p0, Lje;->d:Lil;

    iget-object v1, p0, Lje;->e:Lin;

    invoke-direct {p0, v0, v1}, Lje;->b(Lil;Lin;)V

    .line 62
    return-object p0
.end method

.method public a(Liv;)Lje;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lje;->b:Liv;

    .line 67
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lje;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lje;->f:Z

    .line 56
    return-object p0
.end method

.method public a(Liq;Lih;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    new-instance v0, Ljg;

    invoke-direct {v0, p1, p2}, Ljg;-><init>(Liq;Lih;)V

    .line 41
    iget-object v1, p0, Lje;->b:Liv;

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Ljf;

    iget-object v2, p0, Lje;->a:Lio;

    new-instance v3, Liz;

    iget-object v4, p0, Lje;->b:Liv;

    iget-object v5, p0, Lje;->c:Lip;

    invoke-direct {v3, v4, v5}, Liz;-><init>(Liv;Lip;)V

    invoke-direct {v1, v2, v3}, Ljf;-><init>(Lio;Liz;)V

    new-array v2, v7, [Ljg;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Ljf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v1, Ljf;

    iget-object v2, p0, Lje;->a:Lio;

    new-instance v3, Liz;

    iget-object v4, p0, Lje;->c:Lip;

    invoke-direct {v3, v4}, Liz;-><init>(Lip;)V

    invoke-direct {v1, v2, v3}, Ljf;-><init>(Lio;Liz;)V

    new-array v2, v7, [Ljg;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Ljf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
