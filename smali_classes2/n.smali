.class Ln;
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
.field final synthetic a:Lm;


# direct methods
.method constructor <init>(Lm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ln;->a:Lm;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Ls;->a()V

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method
