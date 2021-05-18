.class public Lnjr;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x190

.field public static final b:I = 0xc8


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lorg/json/JSONObject;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mCommandId must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnjr;->c:Ljava/lang/String;

    iput-object p2, p0, Lnjr;->d:Ljava/lang/String;

    if-nez p3, :cond_1

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    iput-object p3, p0, Lnjr;->e:Lorg/json/JSONObject;

    const/16 v0, 0xc8

    iput v0, p0, Lnjr;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnjr;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnjr;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnjr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Lnjr;
    .locals 2

    iget-boolean v0, p0, Lnjr;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response already sent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lnjr;->f:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lnjr;
    .locals 2

    iget-boolean v0, p0, Lnjr;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response already sent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnjr;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnjr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lnjr;->h:Z

    return v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lnjr;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lnjr;->f:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnjr;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Lnjr;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response already sent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnjr;->h:Z

    return-void
.end method
