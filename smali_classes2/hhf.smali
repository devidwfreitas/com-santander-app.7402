.class Lhhf;
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
    .line 304
    iput-object p1, p0, Lhhf;->a:Lhhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhfi;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lhhf;->a:Lhhc;

    invoke-static {v0}, Lhhc;->c(Lhhc;)V

    .line 313
    return-void
.end method

.method public a(Lhfx;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lhhf;->a:Lhhc;

    invoke-static {v0, p1}, Lhhc;->c(Lhhc;Lhfx;)V

    .line 308
    return-void
.end method
