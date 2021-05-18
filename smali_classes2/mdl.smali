.class public Lmdl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lmdm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdm",
            "<TItem;>;"
        }
    .end annotation
.end field

.field public b:Lmdt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2087
    iput-object v0, p0, Lmdl;->a:Lmdm;

    .line 2088
    iput-object v0, p0, Lmdl;->b:Lmdt;

    .line 2089
    const/4 v0, -0x1

    iput v0, p0, Lmdl;->c:I

    return-void
.end method
