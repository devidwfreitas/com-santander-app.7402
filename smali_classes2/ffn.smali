.class Lffn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lffj;


# instance fields
.field final synthetic a:Lffm;


# direct methods
.method constructor <init>(Lffm;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lffn;->a:Lffm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lffn;->a:Lffm;

    invoke-static {v0}, Lffm;->a(Lffm;)[I

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lffn;->a:Lffm;

    invoke-static {v2}, Lffm;->b(Lffm;)Lffa;

    move-result-object v2

    iget-object v2, v2, Lffa;->j:Lffb;

    iget v2, v2, Lffb;->p:I

    aput v2, v0, v1

    .line 513
    return-void
.end method
