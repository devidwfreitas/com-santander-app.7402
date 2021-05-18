.class Lhhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhgg;


# instance fields
.field final synthetic a:Lhhc;


# direct methods
.method constructor <init>(Lhhc;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lhhh;->a:Lhhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhfi;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lhhh;->a:Lhhc;

    invoke-static {v0}, Lhhc;->e(Lhhc;)V

    .line 363
    return-void
.end method

.method public a(Lhfy;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lhhh;->a:Lhhc;

    invoke-static {v0, p1}, Lhhc;->a(Lhhc;Lhfy;)V

    .line 358
    return-void
.end method
