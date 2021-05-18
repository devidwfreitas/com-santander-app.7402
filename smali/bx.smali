.class public Lbx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Law;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lbx;->a:Law;

    .line 44
    new-instance v0, Law;

    invoke-direct {v0, p1}, Law;-><init>([B)V

    iput-object v0, p0, Lbx;->a:Law;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lby;

    iget-object v1, p0, Lbx;->a:Law;

    invoke-virtual {v1}, Law;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lby;-><init>([B)V

    .line 59
    invoke-virtual {v0, p1}, Lby;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 60
    invoke-static {v0}, Lbz;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lby;

    iget-object v1, p0, Lbx;->a:Law;

    invoke-virtual {v1}, Law;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lby;-><init>([B)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lbz;->c([B)[B

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lby;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
