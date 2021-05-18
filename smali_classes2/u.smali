.class Lu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbc",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt;


# direct methods
.method constructor <init>(Lt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lu;->a:Lt;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Ls;->b()[B

    move-result-object v0

    return-object v0
.end method
