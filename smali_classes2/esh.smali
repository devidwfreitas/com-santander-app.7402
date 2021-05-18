.class abstract Lesh;
.super Letb;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Letb;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x3b

    invoke-static {p0, p1, v0, p2}, Lesh;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x3b

    invoke-static {p0, p1, v0, p2}, Lesh;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
