.class final enum Lekm;
.super Lekk;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lekk;-><init>(Ljava/lang/String;ILekl;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lejz;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lekf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lekf;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
