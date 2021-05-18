.class public abstract Lbnz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbny;


# direct methods
.method protected constructor <init>(Lbny;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lbnz;->a:Lbny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lbmr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)",
            "Lbmr;"
        }
    .end annotation
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lbny;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract a(Ljava/lang/Object;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;Z)Z"
        }
    .end annotation
.end method
