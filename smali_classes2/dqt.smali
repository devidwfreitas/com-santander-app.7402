.class public Ldqt;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqt;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ldqt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ldqt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ldqt;

    iget-object v0, p0, Ldqt;->a:Ljava/lang/String;

    iget-object v1, p1, Ldqt;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcsg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ldqt;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcsg;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcsg;->a(Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "token"

    iget-object v2, p0, Ldqt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    invoke-virtual {v0}, Lcsi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method