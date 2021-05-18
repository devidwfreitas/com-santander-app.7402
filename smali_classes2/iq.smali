.class public Liq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lim;

.field protected c:Lorg/json/JSONObject;

.field protected d:Ljava/lang/Object;

.field protected e:Ljava/lang/Integer;

.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Liq;->a:Ljava/lang/String;

    .line 17
    sget-object v0, Lim;->GET:Lim;

    iput-object v0, p0, Liq;->b:Lim;

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Liq;->c:Lorg/json/JSONObject;

    .line 20
    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liq;->e:Ljava/lang/Integer;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liq;->f:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Liq;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lia;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "endPoint is required"

    invoke-direct {v0, v1, v2}, Lia;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    return-void
.end method

.method public a(Lim;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Liq;->b:Lim;

    .line 45
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Liq;->f:Ljava/lang/Boolean;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Liq;->e:Ljava/lang/Integer;

    .line 69
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Liq;->d:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Liq;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Liq;->c:Lorg/json/JSONObject;

    .line 53
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Liq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lim;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Liq;->b:Lim;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Liq;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Liq;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Liq;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Liq;->f:Ljava/lang/Boolean;

    return-object v0
.end method
