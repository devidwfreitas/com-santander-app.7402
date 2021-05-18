.class Ladf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lacy;


# direct methods
.method constructor <init>(Lacy;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Ladf;->a:Lacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Ladf;->a:Lacy;

    invoke-virtual {v0}, Lacy;->j()V

    .line 269
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Ladf;->a:Lacy;

    invoke-virtual {v0}, Lacy;->goBack()V

    .line 274
    return-void
.end method
