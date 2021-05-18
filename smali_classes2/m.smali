.class Lm;
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
.field final synthetic a:Ll;


# direct methods
.method constructor <init>(Ll;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm;->a:Ll;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ln;

    invoke-direct {v0, p0}, Ln;-><init>(Lm;)V

    .line 75
    invoke-virtual {v0}, Ln;->a()Ljava/lang/Object;

    .line 77
    sget-object v0, Lz;->h:[B

    return-object v0
.end method
