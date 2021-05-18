.class public Lbe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lbf;

    invoke-direct {v0, p0}, Lbf;-><init>(Lbe;)V

    .line 11
    invoke-virtual {v0}, Lbf;->a()Ljava/lang/Object;

    move-result-object v0

    .line 5
    return-object v0
.end method
