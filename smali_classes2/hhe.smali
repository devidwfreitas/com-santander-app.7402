.class Lhhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhgd;


# instance fields
.field final synthetic a:Lhhc;


# direct methods
.method constructor <init>(Lhhc;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lhhe;->a:Lhhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhfi;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lhhe;->a:Lhhc;

    invoke-static {v0}, Lhhc;->b(Lhhc;)V

    .line 285
    return-void
.end method

.method public a(Lhfx;)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lhhe;->a:Lhhc;

    invoke-static {v0, p1}, Lhhc;->b(Lhhc;Lhfx;)V

    .line 280
    return-void
.end method
