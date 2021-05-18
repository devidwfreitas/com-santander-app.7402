.class final enum Lnmj;
.super Lnmi;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnmi;-><init>(Ljava/lang/String;ILnmh;)V

    return-void
.end method


# virtual methods
.method execute(Lnmf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnmf",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lnmf;->a()V

    .line 95
    return-void
.end method
