.class Lhhg;
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
    .line 332
    iput-object p1, p0, Lhhg;->a:Lhhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhfi;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lhhg;->a:Lhhc;

    invoke-static {v0}, Lhhc;->d(Lhhc;)V

    .line 341
    return-void
.end method

.method public a(Lhfx;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lhhg;->a:Lhhc;

    invoke-static {v0, p1}, Lhhc;->d(Lhhc;Lhfx;)V

    .line 336
    return-void
.end method
