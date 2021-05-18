.class abstract Lexv;
.super Lexy;
.source "SourceFile"


# static fields
.field private static final b:I = 0x5

.field private static final c:I = 0xf


# direct methods
.method constructor <init>(Lets;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lexy;-><init>(Lets;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lexv;->b()Lets;

    move-result-object v0

    invoke-virtual {v0}, Lets;->a()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    .line 47
    invoke-static {}, Leqh;->a()Leqh;

    move-result-object v0

    throw v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lexv;->b(Ljava/lang/StringBuilder;I)V

    .line 53
    const/16 v1, 0x2d

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lexv;->b(Ljava/lang/StringBuilder;II)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
