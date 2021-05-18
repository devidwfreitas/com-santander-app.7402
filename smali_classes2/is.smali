.class public Lis;
.super Liw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Liw;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Liw;-><init>()V

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lis;->a:Ljava/lang/Integer;

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Liw;-><init>()V

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lis;->a:Ljava/lang/Integer;

    .line 21
    invoke-virtual {p0, p2}, Lis;->a(Ljava/lang/String;)V

    .line 22
    return-void
.end method
